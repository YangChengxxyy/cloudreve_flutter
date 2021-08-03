import 'dart:async';
import 'dart:typed_data';

import 'package:cloudreve/entity/File.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

typedef void ChangeString(String newValue);
typedef void ChangeDouble(double newValue);
typedef void VoidParBool(bool b);

enum Mode { list, grid }

Map<String, Uint8List> _thumbCache = {};
Map<String, String> _downloadUrlCache = {};
Map<String, Uint8List> _imageCache = {};

class Home extends StatelessWidget {
  ChangeString changePath;
  ChangeDouble changeProgressNum;
  String path;
  Future<Response> fileResp;
  double progressNum = -1;
  VoidParBool refresh;
  Mode mode;

  Home(
      {required this.changePath,
      required this.path,
      required this.progressNum,
      required this.changeProgressNum,
      required this.fileResp,
      required this.refresh,
      required this.mode});

  @override
  Widget build(BuildContext context) {
    ///进度条
    Widget _progressBar = Container(
        padding: EdgeInsets.fromLTRB(5, 5, 10, 10),
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
            )
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

              List<Widget> headList = [];

              headList.insert(0, head);
              headList.insert(1, Divider(color: Colors.blue));

              if (progressNum != -1) {
                headList.insert(0, _progressBar);
              }
              Widget items;
              if (mode == Mode.list) {
                items = SliverList(
                  delegate: SliverChildBuilderDelegate(
                    (BuildContext context, int index) {
                      return _buildListItem(context, fileList[index]);
                    },
                    childCount: fileList.length,
                  ),
                );
              } else {
                items = SliverPadding(
                  sliver: SliverGrid(
                    delegate: SliverChildBuilderDelegate(
                      (BuildContext _, int index) {
                        return _buildGridItem(context, fileList[index], index);
                      },
                      childCount: fileList.length,
                    ),
                    gridDelegate: new SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2, //Grid按两列显示
                      mainAxisSpacing: 10.0,
                      crossAxisSpacing: 5.0,
                    ),
                  ),
                  padding: EdgeInsets.symmetric(horizontal: 10),
                );
              }

              return Scrollbar(
                child: CustomScrollView(
                  slivers: [
                    SliverList(
                      delegate: SliverChildBuilderDelegate(
                        (BuildContext context, int index) {
                          return headList[index];
                        },
                        childCount: headList.length,
                      ),
                    ),
                    items
                  ],
                ),
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

  void _imageDoubleTap(BuildContext context, File file) {
    var image = FutureBuilder(
      future: _getImage(file),
      builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
        if (snapshot.hasData) {
          if (_imageCache[file.id] == null) {
            _imageCache[file.id] = snapshot.data!.data as Uint8List;
          }
          return Container(
            child: ConstrainedBox(
              child: Image.memory(
                snapshot.data!.data,
                fit: BoxFit.contain,
              ),
              constraints: BoxConstraints.expand(),
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
      return HttpUtil.dio.get("/api/v3/file/thumb/${file.id}",
          options: Options(responseType: ResponseType.bytes));
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
        String getDownloadUrl = "/api/v3/file/download/${file.id}";
        //设置连接超时时间
        Response getUrlResp = await HttpUtil.dio.put(getDownloadUrl);
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
    double size = (maxHeight - 30) ~/ 2 - 62;
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
                  Response delRes =
                      await HttpUtil.dio.delete("/api/v3/object", data: {
                    "dirs": [],
                    "items": [file.id]
                  });
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
                  Dio http = HttpUtil.dio;
                  var path =
                      Theme.of(context).platform == TargetPlatform.android
                          ? await getExternalStorageDirectory()
                          : await getApplicationSupportDirectory();

                  String getDownloadUrl = "/api/v3/file/download/${file.id}";
                  //设置连接超时时间
                  Response response = await http.put(getDownloadUrl);
                  String url = response.data['data'].toString();
                  Dio dio = Dio();
                  try {
                    Navigator.pop(_);
                    response = await dio
                        .download(url, path!.path + "/" + file.name,
                            onReceiveProgress: (process, total) {
                      changeProgressNum(process / total);
                    });
                    if (response.statusCode == 200) {
                      String snackString = '下载至:' + path.path + "/" + file.name;
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
