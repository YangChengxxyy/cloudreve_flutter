import 'dart:async';
import 'dart:typed_data';

import 'package:cloudreve/Service.dart';
import 'package:cloudreve/entity/File.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

typedef void ChangeStringCallBack(String newValue);
typedef void ChangeDoubleCallBack(double newValue);
typedef void RefreshCallBack(bool b);

enum Mode { list, grid }

Map<String, Uint8List> _thumbCache = {};
Map<String, String> _downloadUrlCache = {};
Map<String, Uint8List> _imageCache = {};

class Home extends StatelessWidget {
  ChangeStringCallBack changePath;
  ChangeDoubleCallBack changeProgressNum;
  String path;
  Future<Response> fileResp;
  double progressNum = -1;
  RefreshCallBack refresh;
  Mode mode;
  double paddingNum = 10;

  Home({
    required this.changePath,
    required this.path,
    required this.progressNum,
    required this.changeProgressNum,
    required this.fileResp,
    required this.refresh,
    required this.mode,
  });

  Future<Null> _refresh(BuildContext context) {
    return Future.delayed(Duration(seconds: 1), () {
      // 延迟1s完成刷新
      refresh(true);
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("刷新完成"),
        ),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    ///进度条
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
            Container(
                padding: EdgeInsets.only(left: 10),
                child: TextButton(
                  child: Text("Cancel"),
                  onPressed: () {},
                ))
          ],
        ));

    return FutureBuilder(
        future: fileResp,
        builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data!.data['data'];
            var head = _buildHead(context);
            if (data != null) {
              var objects = data['objects'];

              var fileList = File.getFileList(objects);

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
                  });
            }
          } else {
            return Center(child: Text("加载中"));
          }
        });
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
          child: Text(paths2[i]));
      buttons.add(button);
    }

    return ButtonBar(
      alignment: MainAxisAlignment.start,
      children: buttons,
    );
  }

  ///构建文件列表浏览
  Widget _buildListItem(BuildContext context, File file) {
    Icon icon = Icon(Icons.file_present);

    var imageRex = RegExp(r".*\.(jpg|gif|bmp|png|jpeg)");
    var pdfRex = RegExp(r".*\.(pdf)");
    var wordRegex = RegExp(r".*\.(doc|docx)");
    var zipRegex = RegExp(r".*\.(zip|rar|7z)");
    var apkRegex = RegExp(r".*\.(apk)");

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
        if (imageRex.hasMatch(file.name)) {
          _imageDoubleTap(context, file);
        }
      },
      onDoubleTap: () {
        if (file.type == "file") {
          _fileTap(context, file);
        } else {
          _dirTap(file);
        }
      },
    );
  }

  void _imageDoubleTap(BuildContext context, File file) {
    var image = FutureBuilder(
      future: _getImage(file),
      builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
        if (snapshot.hasData) {
          if (_imageCache[file.id] == null) {
            _imageCache[file.id] = snapshot.data!.data as Uint8List;
          }
          return Container(
              child: PhotoView(
            imageProvider: Image.memory(
              snapshot.data!.data,
              fit: BoxFit.contain,
            ).image,
          ));
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
        });
  }

  Future<Response<dynamic>> _geThumbImage(File file) {
    if (_thumbCache[file.id] == null) {
      return Service.getThumb(file.id);
    } else {
      Response response = Response(requestOptions: RequestOptions(path: ""));
      response.data = _thumbCache[file.id];
      return Future<Response>.value(response);
    }
  }

  Future<Response<dynamic>> _getImage(File file) async {
    if (_imageCache[file.id] == null) {
      String downloadUrl;
      if (_downloadUrlCache[file.id] == null) {
        Response getUrlResp = await Service.getDownloadUrl(file.id);
        downloadUrl = getUrlResp.data['data'].toString();
        _downloadUrlCache[file.id] = downloadUrl;
      } else {
        downloadUrl = _downloadUrlCache[file.id]!;
      }
      return HttpUtil.dio
          .get(downloadUrl, options: Options(responseType: ResponseType.bytes));
    } else {
      Response response = Response(requestOptions: RequestOptions(path: ""));
      response.data = _imageCache[file.id];
      return Future<Response>.value(response);
    }
  }

  Widget _buildGridItem(BuildContext context, File file, int index) {
    Icon icon = Icon(Icons.file_present);

    var imageRex = RegExp(r".*\.(jpg|gif|bmp|png|jpeg)");
    var pdfRex = RegExp(r".*\.(pdf)");
    var wordRegex = RegExp(r".*\.(doc|docx)");
    var zipRegex = RegExp(r".*\.(zip|rar|7z)");
    var apkRegex = RegExp(r".*\.(apk)");

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
        future: _geThumbImage(file),
        builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
          if (snapshot.hasData) {
            if (_thumbCache[file.id] == null) {
              _thumbCache[file.id] = snapshot.data!.data as Uint8List;
            }
            return Container(
              child: ConstrainedBox(
                child: Image.memory(
                  snapshot.data!.data,
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
      )),
      onTap: () {
        if (file.type == "file") {
          _fileTap(context, file);
        } else {
          _dirTap(file);
        }
      },
      onDoubleTap: () {
        if (imageRex.hasMatch(file.name)) {
          _imageDoubleTap(context, file);
        }
      },
    );
  }

  ///文件点击事件
  void _fileTap(BuildContext context, File file) {
    String date =
        file.date.substring(0, 10) + " " + file.date.substring(11, 11 + 8);
    var sizeList = <String>["B", "KB", "MB", "GB"];
    double size = file.size.toDouble();
    int index = 0;
    while (size > 1024) {
      size /= 1024;
      index++;
    }

    showDialog(
      context: context,
      builder: (_) {
        return AlertDialog(
            actions: <Widget>[
              TextButton(
                child: Text("删除"),
                onPressed: () async {
                  Response delRes = await Service.deleteItem([], file.id);
                  if (delRes.data['code'] == 0) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("删除成功"),
                      ),
                    );
                    Navigator.pop(_);
                    changePath(path);
                    refresh(true);
                  }
                },
              ),
              TextButton(
                child: const Text('下载'),
                onPressed: () async {
                  Response response = await Service.getDownloadUrl(file.id);
                  String url = response.data['data'].toString();
                  Dio dio = Dio();
                  try {
                    Navigator.pop(_);
                    String downPath = "/storage/emulated/0/Download/";
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
                },
              ),
            ],
            content: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text("文件名:\t\t${file.name}"),
                Text("文件大小:\t\t${size.toStringAsFixed(1)}${sizeList[index]}"),
                Text("上传时间:\t\t$date")
              ],
            ));
      },
    );
  }

  //目录点击事件
  void _dirTap(file) {
    if (path == "/") {
      changePath(path + file.name);
    } else {
      changePath(path + "/" + file.name);
    }
    refresh(true);
  }
}
