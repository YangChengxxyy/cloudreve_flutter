import 'dart:async';
import 'dart:io';
import 'dart:typed_data';

import 'package:cloudreve/component/RenameFileDialog.dart';
import 'package:cloudreve/component/ShareDialog.dart';
import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/utils/GlobalSetting.dart';
import 'package:cloudreve/utils/cloudreve_repository.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:photo_view/photo_view.dart';

Map<String, String> _downloadUrlCache = {};

enum Mode { list, grid }

final imageRex = RegExp(r".*\.(jpg|gif|bmp|png|jpeg)");
final pdfRex = RegExp(r".*\.(pdf)");
final wordRegex = RegExp(r".*\.(doc|docx)");
final zipRegex = RegExp(r".*\.(zip|rar|7z)");
final apkRegex = RegExp(r".*\.(apk)");
final videoRegex = RegExp(r".*\.(avi|mp4|mpg|mpeg|mov|flv)");

Map<int, CancelToken> downloadCancelTokenMap = {};

Icon getIcon(MFile file) {
  if (file.type == "dir") {
    return Icon(
      Icons.folder,
      color: Colors.grey,
    );
  } else {
    if (imageRex.hasMatch(file.name)) {
      return Icon(
        Icons.image,
        color: Colors.grey,
      );
    } else if (pdfRex.hasMatch(file.name)) {
      return Icon(
        Icons.picture_as_pdf,
        color: Colors.red,
      );
    } else if (zipRegex.hasMatch(file.name)) {
      return Icon(
        Icons.archive,
        color: Colors.grey,
      );
    } else if (wordRegex.hasMatch(file.name)) {
      return Icon(
        Icons.book,
        color: Colors.grey,
      );
    } else if (apkRegex.hasMatch(file.name)) {
      return Icon(
        Icons.android,
        color: Colors.green,
      );
    } else if (videoRegex.hasMatch(file.name)) {
      return Icon(
        Icons.video_call,
        color: Colors.red,
      );
    } else {
      return Icon(Icons.file_present);
    }
  }
}

class Home extends StatefulWidget {
  /// 修改path函数
  final void Function(String) changePath;

  /// 文件排序比较函数
  final int Function(MFile, MFile)? compare;

  /// 路径
  final String path;

  /// 访问文件数据
  final Future<FileListing> fileResp;

  /// 刷新函数
  final void Function(bool) refresh;

  /// 类型
  final Mode mode;

  final MFile? openFile;

  final void Function(MFile? file) setOpenFile;

  const Home({
    Key? key,
    required this.changePath,
    required this.path,
    required this.fileResp,
    required this.refresh,
    required this.mode,
    this.compare,
    this.openFile,
    required this.setOpenFile,
  }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  late final FlutterLocalNotificationsPlugin _flutterLocalNotificationsPlugin;

  /// 上次返回时间
  int _lastBack = -1;

  /// 默认下载路径
  static const String _downPath = "/storage/emulated/0/Download/";
  FileListing? _currentListing;

  @override
  void initState() {
    super.initState();
    _flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
  }

  String get _path => widget.path;
  Mode get _mode => widget.mode;
  Future<FileListing> get _fileResp => widget.fileResp;
  void Function(String) get _changePath => widget.changePath;
  void Function(bool) get _refreshCallback => widget.refresh;
  int Function(MFile, MFile)? get _compare => widget.compare;
  void Function(MFile? file) get _setOpenFile => widget.setOpenFile;

  @override
  Widget build(BuildContext context) {
    final openFile = widget.openFile;
    final path = _path;
    final mode = _mode;
    final compare = _compare;
    if (openFile != null) {
      Future.delayed(const Duration(seconds: 1), () {
        _openFileButtonTap(context, openFile);
        _setOpenFile(null);
      });
    }

    return PopScope(
      canPop: false,
      onPopInvoked: (didPop) async {
        if (didPop) {
          return;
        }
        final shouldPop = await _handleBackPressed();
        if (shouldPop && mounted) {
          Navigator.of(context).pop();
        }
      },
      child: FutureBuilder<FileListing>(
        future: _fileResp,
        builder: (BuildContext context, AsyncSnapshot<FileListing> snapshot) {
          if (snapshot.hasError) {
            return Center(child: Text("加载失败"));
          }
          if (snapshot.hasData) {
            final listing = snapshot.data!;
            _currentListing = listing;
            final head = _buildHead(context, path);
            final objects = listing.files;

            if (objects.isNotEmpty) {
              final fileList = List<MFile>.from(objects);
              if (compare != null) {
                fileList.sort(compare);
              }

              List<Widget> widgetList = [];

              widgetList.add(head);
              widgetList.add(Divider(
                color: Colors.blue,
                height: 0,
              ));

              var item = Expanded(
                child: Scrollbar(
                  child: RefreshIndicator(
                    onRefresh: () {
                      return _refresh(context);
                    },
                    child: Builder(
                      builder: ((context) {
                        switch (mode) {
                          case Mode.list:
                            return ListView.builder(
                              itemBuilder: (context, index) {
                                return _buildListItem(context, fileList[index]);
                              },
                              itemCount: fileList.length,
                            );
                          case Mode.grid:
                            return GridView.builder(
                              gridDelegate:
                                  SliverGridDelegateWithFixedCrossAxisCount(
                                crossAxisCount: 2, //Grid按两列显示
                                mainAxisSpacing: paddingNum,
                                crossAxisSpacing: 5.0,
                              ),
                              itemBuilder: (context, index) {
                                return _buildGridItem(
                                    context, fileList[index], index);
                              },
                              itemCount: fileList.length,
                            );
                        }
                      }),
                    ),
                  ),
                ),
              );
              widgetList.add(item);

              return Container(
                child: Column(
                  children: widgetList,
                ),
                padding: EdgeInsets.symmetric(horizontal: paddingNum),
              );
            } else {
              List<Widget> widgetList = <Widget>[
                head,
                Divider(color: Colors.blue),
                Center(child: Text("暂无数据"))
              ];

              return ListView.builder(
                itemCount: widgetList.length,
                itemBuilder: (context, index) {
                  return widgetList[index];
                },
              );
            }
          }
          return Center(child: Text("加载中"));
        },
      ),
    );
  }

  /// 构建网格项
  Widget _buildGridItem(BuildContext context, MFile file, int index) {
    Icon icon = getIcon(file);

    double maxWidth = MediaQuery.of(context).size.width;
    double size = (maxWidth - paddingNum * 3) ~/ 2 - 62;
    Widget headImage;
    if (!imageRex.hasMatch(file.name)) {
      headImage = Container(height: size, child: icon);
    } else {
      headImage = FutureBuilder(
        future: _geThumbImage(file.id),
        builder: (BuildContext context, AsyncSnapshot<Uint8List> snapshot) {
          if (snapshot.hasData) {
            return Container(
              child: ConstrainedBox(
                child: Image.memory(
                  snapshot.data!,
                  fit: BoxFit.cover,
                  errorBuilder:
                      (BuildContext context, Object o, StackTrace? stackTrace) {
                    return Center(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [Icon(Icons.error), Text("图片格式有误")],
                      ),
                    );
                  },
                ),
                constraints: BoxConstraints.expand(),
              ),
              height: size,
            );
          } else {
            return Container(
              child: SizedBox(
                child: CircularProgressIndicator(),
                height: 44.0,
                width: 44.0,
              ),
              alignment: Alignment.center,
              height: size,
              width: size,
            );
          }
        },
      );
    }

    return myInkWell(
      child: Card(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            headImage,
            Divider(
              color: Colors.grey,
              height: 0,
            ),
            ListTile(
              leading: icon,
              title: Text(
                file.name,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
      context: context,
      file: file,
    );
  }

  /// 构建头部
  Widget _buildHead(BuildContext context, String currentPath) {
    List<String> paths1 = currentPath.split("/");
    List<Widget> buttons = <Widget>[];
    paths1[0] = "/";

    var paths2 = paths1.where((e) {
      return e != "";
    }).toList();

    for (int i = 0; i < paths2.length; i++) {
      var button = ElevatedButton(
        onPressed: () {
          if (i == 0) {
            _changePath("/");
          } else {
            String before = "/";
            for (int j = 1; j <= i; j++) {
              if (j == i) {
                before += paths2[j];
              } else {
                before += paths2[j] + "/";
              }
            }
            _changePath(before);
          }
          _refreshCallback(true);
        },
        child: Text(paths2[i]),
      );
      buttons.add(button);
    }

    return Wrap(
      spacing: 8,
      runSpacing: 8,
      children: buttons,
    );
  }

  /// 构建文件列表浏览
  Widget _buildListItem(BuildContext context, MFile file) {
    Icon icon = getIcon(file);

    return myInkWell(
      child: Card(
        child: ListTile(
          leading: icon,
          title: Text(file.name),
        ),
      ),
      context: context,
      file: file,
    );
  }

  /// 目录单击事件
  void _dirTap(file) {
    if (_path == "/") {
      _changePath(_path + file.name);
    } else {
      _changePath(_path + "/" + file.name);
    }
    _refreshCallback(true);
  }

  /// 目录长按事件
  void _dirLongPress(BuildContext context, MFile file) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          actions: <Widget>[
            IconButton(
              icon: Icon(Icons.delete),
              tooltip: "删除",
              color: Colors.grey,
              onPressed: () async {
                final uri = _uriForFile(file);
                final success = uri != null &&
                    await CloudreveRepository.deleteFiles(
                      fileUris: [uri],
                    );
                if (success) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("删除成功"),
                    ),
                  );
                  Navigator.pop(dialogContext);
                  _changePath(_path);
                  _refreshCallback(true);
                }
              },
            ),
            IconButton(
              icon: Icon(
                Icons.border_color,
              ),
              color: Colors.grey,
              tooltip: "重命名",
              onPressed: () {
                _renameButtonTap(context, dialogContext, file);
              },
            ),
            IconButton(
              icon: Icon(Icons.share),
              tooltip: "分享",
              color: Colors.grey,
              onPressed: () {
                _shareButtonTap(dialogContext, file);
              },
            ),
          ],
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("文件夹名:\t\t${file.name}"),
              Text("上传时间:\t\t${file.getFormatDate()}")
            ],
          ),
        );
      },
    );
  }

  /// 文件长按事件
  void _fileLongPress(
    BuildContext context,
    MFile file, {
    bool del = true,
    bool rename = true,
    bool share = true,
    bool open = false,
    bool download = true,
  }) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          actions: [
            Offstage(
              offstage: !del,
              child: IconButton(
                icon: Icon(Icons.delete),
                color: Colors.grey,
                tooltip: "删除",
                onPressed: () async {
                  final uri = _uriForFile(file);
                  final success = uri != null &&
                      await CloudreveRepository.deleteFiles(
                        fileUris: [uri],
                      );
                  if (success) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("删除成功"),
                      ),
                    );
                    Navigator.pop(dialogContext);
                    _changePath(_path);
                    _refreshCallback(true);
                  }
                },
              ),
            ),
            Offstage(
              offstage: !rename,
              child: IconButton(
                icon: Icon(
                  Icons.border_color,
                ),
                color: Colors.grey,
                tooltip: "重命名",
                onPressed: () {
                  _renameButtonTap(context, dialogContext, file);
                },
              ),
            ),
            Offstage(
              offstage: !share,
              child: IconButton(
                icon: Icon(Icons.share),
                tooltip: "分享",
                color: Colors.grey,
                onPressed: () {
                  _shareButtonTap(dialogContext, file);
                },
              ),
            ),
            Offstage(
              offstage: !open,
              child: IconButton(
                icon: Icon(Icons.open_in_new),
                tooltip: "打开",
                color: Colors.grey,
                onPressed: () {
                  _openFileButtonTap(context, file);
                },
              ),
            ),
            Offstage(
              offstage: !download,
              child: IconButton(
                icon: Icon(Icons.download),
                tooltip: "下载",
                color: Colors.grey,
                onPressed: () async {
                  _downloadButtonTap(context, dialogContext, file);
                },
              ),
            ),
          ],
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("文件名:\t\t${file.name}"),
              Text("文件大小:\t\t${MFile.getFileSize(file.size.toDouble())}"),
              Text("上传时间:\t\t${file.getFormatDate()}")
            ],
          ),
        );
      },
    );
  }

  /// 获取缩略图
  Future<Uint8List> _geThumbImage(String fileId) async {
    final fileUri = _uriForId(fileId);
    if (fileUri == null) {
      return Uint8List.fromList([1]);
    }
    String cachePath = (await getTemporaryDirectory()).path;
    String thumbPath = cachePath + cacheThumbPath + fileId;
    File file = File(thumbPath);
    if (file.existsSync()) {
      DateTime time = file.lastModifiedSync();
      DateTime now = DateTime.now();
      time = time.add(Duration(days: 3));
      if (time.isBefore(now)) {
        final thumb = await CloudreveRepository.fetchThumbnailBytes(fileUri);
        if (thumb != null) {
          final file = await File(thumbPath).create();
          file.writeAsBytesSync(thumb);
          return thumb;
        }
      }
      return file.readAsBytesSync();
    } else {
      final thumb = await CloudreveRepository.fetchThumbnailBytes(fileUri);
      if (thumb == null) {
        return Uint8List.fromList([1]);
      }
      final file = await File(thumbPath).create();
      file.writeAsBytesSync(thumb);
      return thumb;
    }
  }

  /// 获取图像
  Future<Uint8List> _getImage(String fileId) async {
    final fileUri = _uriForId(fileId);
    if (fileUri == null) {
      return Uint8List.fromList([1]);
    }
    final contextHint = _currentListing?.contextHint;
    String cachePath = (await getTemporaryDirectory()).path;
    String imagePath = cachePath + cacheImagePath + fileId;
    File file = File(imagePath);
    if (file.existsSync()) {
      DateTime time = file.lastModifiedSync();
      DateTime now = DateTime.now();
      time = time.add(Duration(days: 3));
      if (time.isBefore(now)) {
        final downloadUrl =
            await _ensureDownloadUrl(fileId, fileUri, contextHint: contextHint);
        if (downloadUrl != null) {
          final image = await CloudreveRepository.fetchRaw(downloadUrl);
          if (image != null) {
            final file = await File(imagePath).create();
            file.writeAsBytesSync(image);
            return image;
          }
        }
      }
      return file.readAsBytesSync();
    } else {
      final downloadUrl =
          await _ensureDownloadUrl(fileId, fileUri, contextHint: contextHint);
      if (downloadUrl == null) {
        return Uint8List.fromList([1]);
      }
      final image = await CloudreveRepository.fetchRaw(downloadUrl);
      if (image == null) {
        return Uint8List.fromList([1]);
      }
      final file = await File(imagePath).create();
      file.writeAsBytesSync(image);
      return image;
    }
  }

  /// 图片点击事件
  void _imageTap(BuildContext context, MFile file) {
    var image = FutureBuilder(
      future: _getImage(file.id),
      builder: (BuildContext context, AsyncSnapshot<Uint8List> snapshot) {
        if (snapshot.hasData) {
          return Container(
            child: PhotoView(
              imageProvider: Image.memory(
                snapshot.data!,
                fit: BoxFit.contain,
              ).image,
            ),
          );
        } else {
          return Container(
            child: SizedBox(
              child: CircularProgressIndicator(),
              height: 44.0,
              width: 44.0,
            ),
            alignment: Alignment.center,
          );
        }
      },
    );

    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
          contentPadding: EdgeInsets.zero,
          insetPadding: EdgeInsets.zero,
          backgroundColor: Colors.black26,
          content: Container(
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: ConstrainedBox(
              child: image,
              constraints: BoxConstraints.expand(),
            ),
          ),
        );
      },
    );
  }

  /// 刷新函数
  Future<Null> _refresh(BuildContext context) {
    return Future.delayed(
      Duration(seconds: 1),
      () {
        // 延迟1s完成刷新
        _refreshCallback(true);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("刷新完成"),
          ),
        );
      },
    );
  }

  Future<bool> _handleBackPressed() async {
    if (_path == "/") {
      final now = DateTime.now().millisecondsSinceEpoch;
      if (_lastBack == -1 || now - _lastBack >= 1000) {
        Fluttertoast.showToast(
          msg: "再次滑动返回",
          toastLength: Toast.LENGTH_SHORT,
          gravity: ToastGravity.CENTER,
          timeInSecForIosWeb: 1,
          backgroundColor: Colors.red,
          textColor: Colors.white,
          fontSize: 16.0,
        );
        _lastBack = now;
        return false;
      }
      return true;
    } else {
      List<String> segments = _path.split("/");
      segments[0] = "/";
      final filtered = segments.where((e) => e.isNotEmpty).toList();
      String before;
      if (filtered.length <= 1) {
        before = "/";
      } else {
        before = "/" + filtered.sublist(1, filtered.length - 1).join("/");
      }
      _changePath(before);
      _refreshCallback(true);
      return false;
    }
  }

  /// 下载按钮点击
  void _downloadButtonTap(
      BuildContext context, BuildContext? dialogContext, MFile file) async {
    final fileUri = _uriForFile(file);
    if (fileUri == null) {
      return;
    }
    File f = File(_downPath + file.name);
    var exist = await f.exists();
    if (exist) {
      if (dialogContext != null) {
        Navigator.pop(dialogContext);
      }
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("文件已存在"),
        ),
      );
    } else {
      final contextHint = _currentListing?.contextHint;
      final url =
          await _ensureDownloadUrl(file.id, fileUri, contextHint: contextHint);
      if (url == null) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text('获取下载链接失败')),
        );
        return;
      }
      Dio dio = Dio();
      if (dialogContext != null) {
        Navigator.pop(dialogContext);
      }
      int fileHashCode = file.hashCode;
      CancelToken cancelToken = CancelToken();
      downloadCancelTokenMap[fileHashCode] = cancelToken;
      Response<dynamic>? downloadResponse;
      try {
        downloadResponse = await dio.download(
          url,
          _downPath + file.name,
          cancelToken: cancelToken,
          onReceiveProgress: (process, total) {
            final percent = process / total;
            unawaited(
              _showDownloadNotification(
                id: fileHashCode,
                title: '下载 ${file.name}',
                body: (percent * 100).toStringAsFixed(2) + "%",
                payload: 'download-doing-$fileHashCode',
              ),
            );
          },
        );
      } on DioException catch (err) {
        if (err.type == DioExceptionType.cancel) {
          await _flutterLocalNotificationsPlugin.cancel(fileHashCode);
          await _showDownloadNotification(
            id: fileHashCode,
            title: '下载 ${file.name}',
            body: '已取消',
            payload: 'download-cancel-$fileHashCode',
          );
        } else {
          await _showDownloadNotification(
            id: fileHashCode,
            title: '下载 ${file.name}',
            body: '下载出错',
            payload: 'download-error-$fileHashCode',
          );
        }
        return;
      }
      if (downloadResponse.statusCode == 200) {
        await _flutterLocalNotificationsPlugin.cancel(fileHashCode);
        await _showDownloadNotification(
          id: fileHashCode,
          title: '下载 ${file.name}',
          body: '至:$_downPath',
          payload: 'download-done-$_downPath',
        );
      } else {
        await _flutterLocalNotificationsPlugin.cancel(fileHashCode);
        await _showDownloadNotification(
          id: fileHashCode,
          title: '下载 ${file.name}',
          body: '下载出错',
          payload: 'download-error-$fileHashCode',
        );
      }
    }
  }

  Future<String?> _ensureDownloadUrl(String cacheKey, String fileUri,
      {String? contextHint}) async {
    var downloadUrl = _downloadUrlCache[cacheKey];
    if (downloadUrl != null) {
      return downloadUrl;
    }
    downloadUrl = await CloudreveRepository.createDownloadUrl(
      fileUri,
      contextHint: contextHint,
    );
    if (downloadUrl != null) {
      _downloadUrlCache[cacheKey] = downloadUrl;
    }
    return downloadUrl;
  }

  String? _uriForFile(MFile file) {
    if (file.path.isNotEmpty) {
      return file.path;
    }
    return _uriForId(file.id);
  }

  String? _uriForId(String id) {
    final listing = _currentListing;
    if (listing == null) {
      return null;
    }
    return listing.fileMap[id]?.path;
  }

  /// 打开按钮点击
  void _openFileButtonTap(BuildContext context, MFile file,
      [BuildContext? dialogContext]) async {
    if (imageRex.hasMatch(file.name)) {
      if (dialogContext != null) {
        Navigator.pop(dialogContext);
      }
      _imageTap(context, file);
    } else {
      String tempPath = (await getTemporaryDirectory()).path + "/";
      File f = File(tempPath + file.name);
      var exist = await f.exists();
      if (exist) {
        final _result = await OpenFile.open(tempPath + file.name);
        if (dialogContext != null) {
          Navigator.pop(dialogContext);
        }
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text(_result.message),
          ),
        );
      } else {
        final fileUri = _uriForFile(file);
        if (fileUri == null) {
          return;
        }
        final contextHint = _currentListing?.contextHint;
        final url = await _ensureDownloadUrl(file.id, fileUri,
            contextHint: contextHint);
        if (url == null) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('获取下载链接失败')),
          );
          return;
        }
        Dio dio = Dio();
        try {
          final response = await dio.download(url, tempPath + file.name);
          if (response.statusCode == 200) {
            _refreshCallback(true);
            final _result = await OpenFile.open(tempPath + file.name);
            if (dialogContext != null) {
              Navigator.pop(dialogContext);
            }
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(_result.message),
              ),
            );
          } else {
            if (dialogContext != null) {
              Navigator.pop(dialogContext);
            }
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text("打开失败"),
              ),
            );
          }
        } on DioException catch (err) {
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(err.message ?? '打开失败'),
            ),
          );
        }
      }
    }
  }

  void _shareButtonTap(BuildContext parentFatherContext, MFile file) {
    showDialog(
      context: parentFatherContext,
      builder: (dialogContext) {
        return ShareDialog(
          fatherContext: dialogContext,
          parentContext: parentFatherContext,
          file: file,
        );
      },
    );
  }

  void _renameButtonTap(
      BuildContext context, BuildContext fatherContext, MFile file) {
    showDialog(
      context: context,
      builder: (context) {
        return RenameFileDialog(
          file,
          fatherContext,
          () => _refreshCallback(true),
        );
      },
    );
  }

  Future<void> _showDownloadNotification(
      {required int id,
      required String title,
      required String body,
      String? payload}) async {
    var android = AndroidNotificationDetails('文件下载', '文件下载通道',
        playSound: false,
        channelDescription: '文件下载',
        priority: Priority.min,
        importance: Importance.min);
    var iOS = DarwinNotificationDetails();
    var platform = NotificationDetails(android: android, iOS: iOS);
    await _flutterLocalNotificationsPlugin.show(id, title, body, platform,
        payload: payload);
  }

  Widget myInkWell(
      {required Widget child,
      required MFile file,
      required BuildContext context}) {
    return InkWell(
      child: child,
      onTap: () {
        if (file.type == "file") {
          if (imageRex.hasMatch(file.name)) {
            _imageTap(context, file);
          } else {
            _openFileButtonTap(context, file);
          }
        } else {
          _dirTap(file);
        }
      },
      onDoubleTap: () {},
      onLongPress: () {
        if (file.type == "file") {
          _fileLongPress(context, file);
        } else {
          _dirLongPress(context, file);
        }
      },
    );
  }
}
