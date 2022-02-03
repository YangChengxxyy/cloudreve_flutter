import 'dart:io';
import 'dart:typed_data';

import 'package:cloudreve/component/RenameFileDialog.dart';
import 'package:cloudreve/component/ShareDialog.dart';
import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:photo_view/photo_view.dart';
import 'package:url_launcher/url_launcher.dart';

Map<String, String> _downloadUrlCache = {};

enum Mode { list, grid }

final imageRex = RegExp(r".*\.(jpg|gif|bmp|png|jpeg)");
final pdfRex = RegExp(r".*\.(pdf)");
final wordRegex = RegExp(r".*\.(doc|docx)");
final zipRegex = RegExp(r".*\.(zip|rar|7z)");
final apkRegex = RegExp(r".*\.(apk)");
final videoRegex = RegExp(r".*\.(avi|mp4|mpg|mpeg|mov|flv)");

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

class Home extends StatelessWidget {
  /// 修改path函数
  void Function(String) changePath;

  /// 修改进度函数
  void Function(double) changeProgressNum;

  /// 文件排序比较函数
  int Function(MFile, MFile)? compare;

  /// 路径
  String path;

  /// 访问文件数据
  Future<Response> fileResp;

  /// 进度
  double progressNum = -1;

  /// 刷新函数
  void Function(bool) refresh;

  /// 类型
  Mode mode;

  /// 外间距
  double paddingNum = 10;

  MFile? openFile;

  late void Function(MFile? file) setOpenFile;

  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

  Home({
    required this.changePath,
    required this.path,
    required this.progressNum,
    required this.changeProgressNum,
    required this.fileResp,
    required this.refresh,
    required this.mode,
    this.compare,
    this.openFile,
    required this.setOpenFile,
  }) {
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android =
        new AndroidInitializationSettings('@mipmap/ic_launcher2_foreground');
    var iOS = new IOSInitializationSettings();
    var initSetttings = new InitializationSettings(android: android, iOS: iOS);
    flutterLocalNotificationsPlugin?.initialize(initSetttings,
        onSelectNotification: _onSelectNotification);
  }

  /// 上次返回时间
  int _lastBack = -1;

  /// 默认下载路径
  final String downPath = "/storage/emulated/0/Download/";

  @override
  Widget build(BuildContext context) {
    if (openFile != null) {
      Future.delayed(Duration(seconds: 1), () {
        _openFileButtonTap(context, openFile!);
        setOpenFile(null);
      });
    }

    /// 进度条
    Widget _progressBar = Container(
      padding: EdgeInsets.symmetric(horizontal: paddingNum),
      child: Row(
        children: [
          Expanded(
            child: LinearProgressIndicator(
              value: progressNum,
              backgroundColor: Colors.grey,
              valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            child: Text((progressNum * 100).toStringAsFixed(1) + "%"),
          ),
          // Container(
          //     padding: EdgeInsets.only(left: 10),
          //     child: TextButton(
          //       child: Text("Cancel"),
          //       onPressed: () {},
          //     ))
        ],
      ),
    );

    return WillPopScope(
      child: FutureBuilder(
        future: fileResp,
        builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data!.data['data'];
            var head = _buildHead(context);
            if (data != null) {
              var objects = data['objects'];

              var fileList = MFile.getFileList(objects, compare);

              List<Widget> widgetList = [];

              widgetList.add(head);
              widgetList.add(Divider(
                color: Colors.blue,
                height: 0,
              ));

              if (progressNum != -1) {
                widgetList.insert(0, _progressBar);
              }
              switch (mode) {
                case Mode.list:
                  var item = Expanded(
                    child: Scrollbar(
                      child: RefreshIndicator(
                        onRefresh: () {
                          return _refresh(context);
                        },
                        child: ListView.builder(
                          itemBuilder: (context, index) {
                            return _buildListItem(context, fileList[index]);
                          },
                          itemCount: fileList.length,
                        ),
                      ),
                    ),
                  );
                  widgetList.add(item);
                  break;
                case Mode.grid:
                  var item = Expanded(
                    child: Scrollbar(
                      child: RefreshIndicator(
                        onRefresh: () {
                          return _refresh(context);
                        },
                        child: GridView.builder(
                          gridDelegate:
                              new SliverGridDelegateWithFixedCrossAxisCount(
                            crossAxisCount: 2, //Grid按两列显示
                            mainAxisSpacing: paddingNum,
                            crossAxisSpacing: 5.0,
                          ),
                          itemBuilder: (context, index) {
                            return _buildGridItem(
                                context, fileList[index], index);
                          },
                          itemCount: fileList.length,
                        ),
                      ),
                    ),
                  );
                  widgetList.add(item);
                  break;
              }

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

              if (progressNum != -1) {
                widgetList.insert(0, _progressBar);
              }

              return ListView.builder(
                itemCount: widgetList.length,
                itemBuilder: (context, index) {
                  return widgetList[index];
                },
              );
            }
          } else {
            return Center(child: Text("加载中"));
          }
        },
      ),
      onWillPop: () async {
        if (path == "/") {
          if (_lastBack == -1) {
            Fluttertoast.showToast(
                msg: "再次滑动返回",
                toastLength: Toast.LENGTH_SHORT,
                gravity: ToastGravity.CENTER,
                timeInSecForIosWeb: 1,
                backgroundColor: Colors.red,
                textColor: Colors.white,
                fontSize: 16.0);
            _lastBack = DateTime.now().microsecondsSinceEpoch;
            return false;
          } else {
            int now = DateTime.now().millisecondsSinceEpoch;
            if (now - _lastBack >= 1000) {
              _lastBack = now;
              return false;
            } else {
              return true;
            }
          }
        } else {
          List<String> paths1 = path.split("/");
          paths1[0] = "/";
          var paths2 = paths1.where((e) {
            return e != "";
          }).toList();
          String before = "/";
          for (int i = 1; i < paths2.length - 1; i++) {
            before += paths2[i];
          }
          changePath(before);
          refresh(true);
          return false;
        }
      },
    );
  }

  /// 构建网格项
  Widget _buildGridItem(BuildContext context, MFile file, int index) {
    Icon icon = getIcon(file);

    double maxHeight = MediaQuery.of(context).size.width;
    double size = (maxHeight - paddingNum * 3) ~/ 2 - 62;
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

    return InkWell(
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

  /// 构建头部
  Widget _buildHead(BuildContext context) {
    List<String> paths1 = path.split("/");
    List<Widget> buttons = <Widget>[];
    paths1[0] = "/";

    var paths2 = paths1.where((e) {
      return e != "";
    }).toList();

    for (int i = 0; i < paths2.length; i++) {
      var button = ElevatedButton(
        onPressed: () {
          if (i == 0) {
            changePath("/");
          } else {
            String before = "/";
            for (int j = 1; j <= i; j++) {
              if (j == i) {
                before += paths2[j];
              } else {
                before += paths2[j] + "/";
              }
            }
            changePath(before);
          }
          refresh(true);
        },
        child: Text(paths2[i]),
      );
      buttons.add(button);
    }

    return ButtonBar(
      alignment: MainAxisAlignment.start,
      children: buttons,
    );
  }

  /// 构建文件列表浏览
  Widget _buildListItem(BuildContext context, MFile file) {
    Icon icon = getIcon(file);

    return InkWell(
      child: Card(
        child: ListTile(
          leading: icon,
          title: Text(file.name),
        ),
      ),
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

  /// 目录单击事件
  void _dirTap(file) {
    if (path == "/") {
      changePath(path + file.name);
    } else {
      changePath(path + "/" + file.name);
    }
    refresh(true);
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
                Response delRes = await deleteItem([file.id], []);
                if (delRes.data['code'] == 0) {
                  ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text("删除成功"),
                    ),
                  );
                  Navigator.pop(dialogContext);
                  changePath(path);
                  refresh(true);
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
                  Response delRes = await deleteItem([], [file.id]);
                  if (delRes.data['code'] == 0) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("删除成功"),
                      ),
                    );
                    Navigator.pop(dialogContext);
                    changePath(path);
                    refresh(true);
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
    String cachePath = (await getTemporaryDirectory()).path + "/";
    String thumbPath = cachePath + "thumb-" + fileId;
    File file = new File(thumbPath);
    if (file.existsSync()) {
      return file.readAsBytesSync();
    } else {
      Uint8List thumb = (await getThumb(fileId)).data;
      final file = await new File(thumbPath).create();
      file.writeAsBytesSync(thumb);
      return thumb;
    }
  }

  /// 获取图像
  Future<Uint8List> _getImage(String fileId) async {
    String cachePath = (await getTemporaryDirectory()).path + "/";
    String imagePath = cachePath + "image-" + fileId;
    File file = new File(imagePath);
    if (file.existsSync()) {
      return file.readAsBytesSync();
    } else {
      String? downloadUrl;
      if (_downloadUrlCache[fileId] == null) {
        Response getUrlResp = await getDownloadUrl(fileId);
        downloadUrl = getUrlResp.data['data'].toString();
        _downloadUrlCache[fileId] = downloadUrl;
      } else {
        downloadUrl = _downloadUrlCache[fileId]!;
      }
      Uint8List image = (await getImage(downloadUrl)).data;
      final file = await new File(imagePath).create();
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
        refresh(true);
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("刷新完成"),
          ),
        );
      },
    );
  }

  /// 下载按钮点击
  void _downloadButtonTap(
      BuildContext context, BuildContext? dialogContext, MFile file) async {
    File f = File(downPath + file.name);
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
      Response response = await getDownloadUrl(file.id);
      String url = response.data['data'].toString();
      Dio dio = Dio();
      try {
        if (dialogContext != null) {
          Navigator.pop(dialogContext);
        }
        int fileHashCode = file.hashCode;
        response = await dio.download(url, downPath + file.name,
            onReceiveProgress: (process, total) async {
          double precent = process / total;
          await _showDownloadNotification(
            id: fileHashCode,
            title: '下载 ${file.name}',
            body: (precent * 100).toStringAsFixed(2) + "%",
            payload: 'doing',
          );
        });
        if (response.statusCode == 200) {
          await _showDownloadNotification(
            id: fileHashCode,
            title: '下载 ${file.name}',
            body: '至:$downPath',
            payload: 'done-$downPath',
          );

          String snackString = '下载至:$downPath${file.name}';
          refresh(true);
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text(snackString),
            ),
          );
        } else {
          throw Exception('接口出错');
        }
      } catch (e) {
        return print(e);
      }
    }
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
        Response response = await getDownloadUrl(file.id);
        String url = response.data['data'].toString();
        Dio dio = Dio();
        try {
          response = await dio.download(url, tempPath + file.name);
          if (response.statusCode == 200) {
            refresh(true);
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
        } catch (e) {
          return print(e);
        }
      }
    }
  }

  void _shareButtonTap(BuildContext parentFatherContext, MFile file) {
    showDialog(
      context: parentFatherContext,
      builder: (dialogContext) {
        return ShareDialg(
          fatherContext: dialogContext,
          parentFatherContext: parentFatherContext,
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
          () => refresh(true),
        );
      },
    );
  }

  void _onSelectNotification(String? payload) {
    debugPrint("payload : $payload");
    if (payload!.startsWith("done")) {
      OpenFile.open(payload.substring(5));
    }
  }

  Future<void> _showDownloadNotification(
      {required int id,
      required String title,
      required String body,
      String? payload}) async {
    var android = new AndroidNotificationDetails(
        'download channel id', 'download channel name',
        playSound: false,
        channelDescription: '文件下载',
        priority: Priority.min,
        importance: Importance.min);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android: android, iOS: iOS);
    await flutterLocalNotificationsPlugin?.show(id, title, body, platform,
        payload: payload);
  }
}
