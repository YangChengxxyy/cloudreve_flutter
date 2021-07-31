import 'dart:async';

import 'package:cloudreve/entity/File.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

typedef void ChangeString(String newPath);

class Home extends StatelessWidget {
  List<File>? fileList;

  ChangeString changePath;
  String path;

  double progressNum = -1;

  Home(
      {required this.changePath,
      required this.path,
      required this.progressNum});

  @override
  Widget build(BuildContext context) {
    Widget _progressBar = Container(
        padding: EdgeInsets.fromLTRB(5, 5, 10, 10),
        child: Row(
          children: [
            Expanded(
              child: LinearProgressIndicator(
                value: progressNum,
                backgroundColor: Colors.blue,
                valueColor: AlwaysStoppedAnimation<Color>(Colors.red),
              ),
            ),
            Container(
              padding: EdgeInsets.only(left: 10),
              child: Text((progressNum * 100).toStringAsFixed(1) + "%"),
            )
          ],
        ));

    return FutureBuilder(
        future: _getFiles(),
        builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data!.data['data'];
            var head = _buildHead(context);
            if (data != null) {
              var objects = data['objects'];

              var fileList = File.getFileList(objects);

              var widgetList = _buildItems(fileList, context);

              widgetList.insert(0, head);
              widgetList.insert(1, Divider(color: Colors.blue));

              if (progressNum != -1) {
                widgetList.insert(0, _progressBar);
              }

              return ListView.builder(
                  itemCount: widgetList.length,
                  itemBuilder: (context, index) {
                    return widgetList[index];
                  });
            } else {
              List<Widget> list = <Widget>[
                head,
                Divider(color: Colors.blue),
                Center(child: Text("暂无数据"))
              ];

              return Scrollbar(
                  child: ListView.builder(
                      itemCount: list.length,
                      itemBuilder: (context, index) {
                        return list[index];
                      }));
            }
          } else {
            return Center(child: Text("加载中"));
          }
        });
  }

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
          },
          child: Text(paths2[i]));
      buttons.add(button);
    }

    return ButtonBar(
      alignment: MainAxisAlignment.start,
      children: buttons,
    );
  }

  List<Widget> _buildItems(List<File> fileList, BuildContext context) {
    var widgetList = <Widget>[];
    if (fileList.length == 0) {
      return [Center(child: Text("暂无数据"))];
    }

    for (var file in fileList) {
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

      void _fileTap() {
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

                      String getDownloadUrl =
                          "/api/v3/file/download/${file.id}";
                      //设置连接超时时间
                      Response response = await http.put(getDownloadUrl);
                      String url = response.data['data'].toString();
                      Dio dio = Dio();
                      try {
                        response = await dio.download(
                            url, path!.path + "/" + file.name);
                        if (response.statusCode == 200) {
                          String snackString =
                              '下载至:' + path.path + "/" + file.name;
                          Navigator.pop(_);
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
                    Text(
                        "文件大小:\t\t${size.toStringAsFixed(1)}${sizeList[index]}"),
                    Text("上传时间:\t\t$date")
                  ],
                ));
          },
        );
      }

      void _dirTap() {
        if (path == "/") {
          changePath(path + file.name);
        } else {
          changePath(path + "/" + file.name);
        }
      }

      widgetList.add(Card(
        child: ListTile(
          leading: icon,
          title: Text(file.name),
          onTap: () {
            if (file.type == "file") {
              _fileTap();
            } else {
              _dirTap();
            }
          },
        ),
      ));
    }
    return widgetList;
  }

  Future<Response> _getFiles() async {
    Response response = await HttpUtil.dio.get('/api/v3/directory$path');
    await HttpUtil.dio.get("/api/v3/user/storage");
    return response;
  }
}
