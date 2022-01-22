import 'dart:io';
import 'dart:typed_data';

import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/entity/Result.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:open_file/open_file.dart';
import 'package:path_provider/path_provider.dart';
import 'package:photo_view/photo_view.dart';

Map<String, String> _downloadUrlCache = {};

enum Mode { list, grid }
typedef void ChangeDoubleCallBack(double newValue);
typedef void ChangeStringCallBack(String newValue);
typedef void RefreshCallBack(bool b);

class Home extends StatelessWidget {
  /// 上次返回时间
  int _lastBack = -1;

  /// 默认下载路径
  String downPath = "/storage/emulated/0/Download/";

  /// 修改path函数
  ChangeStringCallBack changePath;

  /// 修改进度函数
  ChangeDoubleCallBack changeProgressNum;

  /// 文件排序比较函数
  int Function(MFile, MFile)? compare;

  /// 路径
  String path;

  /// 访问文件数据
  Future<Response> fileResp;

  /// 进度
  double progressNum = -1;

  /// 刷新函数
  RefreshCallBack refresh;

  /// 类型
  Mode mode;

  /// 外间距
  double paddingNum = 10;

  final imageRex = RegExp(r".*\.(jpg|gif|bmp|png|jpeg)");
  final pdfRex = RegExp(r".*\.(pdf)");
  final wordRegex = RegExp(r".*\.(doc|docx)");
  final zipRegex = RegExp(r".*\.(zip|rar|7z)");
  final apkRegex = RegExp(r".*\.(apk)");

  Home(
      {required this.changePath,
      required this.path,
      required this.progressNum,
      required this.changeProgressNum,
      required this.fileResp,
      required this.refresh,
      required this.mode,
      this.compare});

  @override
  Widget build(BuildContext context) {
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
              widgetList.add(Divider(color: Colors.blue));

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
    Icon icon = Icon(Icons.file_present);
    bool isImage = false;

    if (file.type == "dir") {
      icon = Icon(Icons.folder, color: Colors.grey);
    } else {
      if (imageRex.hasMatch(file.name)) {
        icon = Icon(Icons.image, color: Colors.grey);
        isImage = true;
      } else if (pdfRex.hasMatch(file.name)) {
        icon = Icon(
          Icons.picture_as_pdf,
          color: Colors.red,
        );
      } else if (zipRegex.hasMatch(file.name)) {
        icon = Icon(Icons.archive, color: Colors.grey);
      } else if (wordRegex.hasMatch(file.name)) {
        icon = Icon(Icons.book, color: Colors.grey);
      } else if (apkRegex.hasMatch(file.name)) {
        icon = Icon(
          Icons.android,
          color: Colors.green,
        );
      }
    }

    double maxHeight = MediaQuery.of(context).size.width;
    double size = (maxHeight - paddingNum * 3) ~/ 2 - 62;
    Widget headImage;
    if (!isImage) {
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
            _openFileButtonTap(context, null, file);
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
    Icon icon = Icon(Icons.file_present);

    if (file.type == "dir") {
      icon = Icon(Icons.folder);
    } else {
      if (imageRex.hasMatch(file.name)) {
        icon = Icon(Icons.image);
      } else if (pdfRex.hasMatch(file.name)) {
        icon = Icon(
          Icons.picture_as_pdf,
          color: Colors.red,
        );
      } else if (zipRegex.hasMatch(file.name)) {
        icon = Icon(Icons.archive);
      } else if (wordRegex.hasMatch(file.name)) {
        icon = Icon(Icons.book);
      } else if (apkRegex.hasMatch(file.name)) {
        icon = Icon(
          Icons.android,
          color: Colors.green,
        );
      }
    }

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
            _openFileButtonTap(context, null, file);
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
            TextButton(
              child: Text("删除"),
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
            TextButton(
              child: const Text("分享"),
              onPressed: () {
                _showShareDialog(dialogContext, file);
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
  void _fileLongPress(BuildContext context, MFile file) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          actions: [
            ButtonBar(
              children: [
                TextButton(
                  child: Text("删除"),
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
                TextButton(
                  child: const Text("分享"),
                  onPressed: () {
                    _showShareDialog(dialogContext, file);
                  },
                ),
                TextButton(
                  child: const Text('打开'),
                  onPressed: () async {
                    _openFileButtonTap(context, dialogContext, file);
                  },
                ),
                TextButton(
                  child: const Text('下载'),
                  onPressed: () async {
                    _downloadButtonTap(context, dialogContext, file);
                  },
                ),
              ],
            ),
          ],
          content: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Text("文件名:\t\t${file.name}"),
              Text("文件大小:\t\t${MFile.getFileSize(file.size.toDouble(), 1)}"),
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
        response = await dio.download(url, downPath + file.name,
            onReceiveProgress: (process, total) {
          changeProgressNum(process / total);
        });
        if (response.statusCode == 200) {
          String snackString = '下载至:' + downPath + file.name;
          changeProgressNum(-1);
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
  void _openFileButtonTap(
      BuildContext context, BuildContext? dialogContext, MFile file) async {
    if (imageRex.hasMatch(file.name)) {
      _imageTap(context, file);
    } else {
      String tempPath = (await getTemporaryDirectory()).path + "/";
      File f = File(tempPath + file.name);
      var exist = await f.exists();
      if (exist) {
        if (dialogContext != null) {
          Navigator.pop(dialogContext);
        }
        final _result = await OpenFile.open(tempPath + file.name);
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
          if (dialogContext != null) {
            Navigator.pop(dialogContext);
          }
          response = await dio.download(url, tempPath + file.name);
          if (response.statusCode == 200) {
            refresh(true);
            final _result = await OpenFile.open(tempPath + file.name);
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text(_result.message),
              ),
            );
          } else {
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

  void _showShareDialog(BuildContext parentFatherContext, MFile file) {
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
}

class TimeString {
  int seconds;
  String name;
  TimeString(this.seconds, this.name);
}

class ShareDialg extends StatefulWidget {
  late BuildContext _fatherContext;
  late BuildContext _parentFatherContext;

  late MFile _file;

  ShareDialg(
      {Key? key,
      required BuildContext fatherContext,
      required BuildContext parentFatherContext,
      required MFile file})
      : super(key: key) {
    _fatherContext = fatherContext;
    _parentFatherContext = parentFatherContext;
    _file = file;
  }

  @override
  _ShareDialgState createState() => _ShareDialgState();
}

class _ShareDialgState extends State<ShareDialg> {
  final _passwordController = new TextEditingController();

  bool _isPassword = false;

  bool _isExpive = false;

  bool _isPreview = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static var _countList = <int>[1, 2, 3, 4, 5, 20, 50, 100];

  static var _timeList = <TimeString>[
    TimeString(5 * 60, "5分钟"),
    TimeString(1 * 60 * 60, "1小时"),
    TimeString(1 * 24 * 60 * 60, "1天"),
    TimeString(7 * 24 * 60 * 60, "7天"),
    TimeString(30 * 24 * 60 * 60, "30天"),
  ];

  int _downloads = _countList[0];

  TimeString _expive = _timeList[2];

  @override
  Widget build(BuildContext context) {
    var list = <Widget>[Divider()];
    if (_isPassword) {
      list.addAll([
        CheckboxListTile(
          value: _isPassword,
          title: Row(
            children: [
              Icon(Icons.lock_outline),
              Text("使用密码保护"),
            ],
          ),
          onChanged: (value) {
            setState(() {
              _isPassword = value!;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 24),
          child: TextFormField(
            controller: _passwordController,
            keyboardType: TextInputType.visiblePassword,
            obscureText: true,
            autofocus: false,
            decoration: InputDecoration(
              labelText: "分享密码",
              border: OutlineInputBorder(
                borderSide: BorderSide(
                  color: Colors.grey,
                  width: 1,
                ),
              ),
              isDense: true,
            ),
            validator: (v) {
              if (v == null) {
                return null;
              }
              return v.trim().length > 0 ? null : "分享密码不能为空";
            },
          ),
        ),
      ]);
    } else {
      list.add(
        CheckboxListTile(
          value: _isPassword,
          title: Row(
            children: [
              Icon(Icons.lock_outline),
              Text("使用密码保护"),
            ],
          ),
          onChanged: (value) {
            setState(() {
              _isPassword = value!;
            });
          },
        ),
      );
    }

    if (_isExpive) {
      list.addAll([
        CheckboxListTile(
          value: _isExpive,
          title: Row(
            children: [
              Icon(Icons.timer),
              Text("自动过期"),
            ],
          ),
          onChanged: (value) {
            setState(() {
              _isExpive = value!;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: PopupMenuButton<int>(
                  initialValue: _downloads,
                  child: Row(
                    children: [
                      Text('$_downloads次'),
                      Icon(Icons.arrow_drop_down_rounded),
                    ],
                  ),
                  itemBuilder: (context) {
                    return _countList.map((count) {
                      return PopupMenuItem<int>(
                        value: count,
                        child: Text("$count次"),
                      );
                    }).toList();
                  },
                  onSelected: (c) async {
                    this.setState(() {
                      _downloads = c;
                    });
                  },
                ),
              ),
              Text("或者"),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5),
                child: PopupMenuButton<TimeString>(
                  initialValue: _expive,
                  child: Row(
                    children: [
                      Text(_expive.name),
                      Icon(Icons.arrow_drop_down_rounded),
                    ],
                  ),
                  itemBuilder: (context) {
                    return _timeList.map((time) {
                      return PopupMenuItem<TimeString>(
                        value: time,
                        child: Text(time.name),
                      );
                    }).toList();
                  },
                  onSelected: (t) async {
                    this.setState(() {
                      _expive = t;
                    });
                  },
                ),
              ),
              Text("后过期")
            ],
          ),
        ),
      ]);
    } else {
      list.add(
        CheckboxListTile(
          value: _isExpive,
          title: Row(
            children: [
              Icon(Icons.timer),
              Text("自动过期"),
            ],
          ),
          onChanged: (value) {
            setState(() {
              _isExpive = value!;
            });
          },
        ),
      );
    }
    list.add(
      CheckboxListTile(
        value: _isPreview,
        title: Row(
          children: [
            Icon(Icons.remove_red_eye_outlined),
            Text("允许预览"),
          ],
        ),
        onChanged: (value) {
          setState(() {
            _isPreview = value!;
          });
        },
      ),
    );

    return Form(
      key: _formKey,
      child: SimpleDialog(
        title: Text("创建分享链接"),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        children: [
          ...list,
          ButtonBar(
            alignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () async {
                  if (_formKey.currentState!.validate()) {
                    Response response = await share(
                        fileId: widget._file.id,
                        isDir: widget._file.type == "dir",
                        password: _isPassword ? _passwordController.text : "",
                        preview: _isPreview,
                        downloads: _isExpive ? _downloads : -1,
                        expive: _expive.seconds);
                    if (response.data["code"] == 0) {
                      Navigator.pop(widget._fatherContext);
                      Navigator.pop(widget._parentFatherContext);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("分享成功"),
                        ),
                      );
                      showDialog(
                        context: context,
                        builder: (BuildContext lastContext) {
                          return AlertDialog(
                            title: Text("分享成功"),
                            content: SelectableText(
                              response.data["data"].toString(),
                              autofocus: true,
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Clipboard.setData(
                                    ClipboardData(
                                      text: response.data["data"].toString(),
                                    ),
                                  );
                                  Navigator.pop(lastContext);
                                  ScaffoldMessenger.of(lastContext)
                                      .showSnackBar(
                                    SnackBar(
                                      content: Text("复制成功"),
                                    ),
                                  );
                                },
                                child: Text("复制"),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  }
                },
                child: Text("确定"),
              ),
            ],
          )
        ],
      ),
    );
  }
}
