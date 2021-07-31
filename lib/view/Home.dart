import 'dart:async';

import 'package:cloudreve/entity/File.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';

class Home extends StatefulWidget {
  final ChangePath changePath;
  final Widget? progressBar;
  final bool isProgress;

  Home(
      {Key? key,
      required this.changePath,
      this.progressBar,
      required this.isProgress})
      : super(key: key);

  @override
  State<Home> createState() => _HomeState(
      changePath: changePath,
      progressBar: this.progressBar,
      isProgress: this.isProgress);
}

typedef void ChangePath(String newPath);

class _HomeState extends State<Home> {
  List<File>? fileList;

  ChangePath changePath;
  String _path = "/";

  final Widget? progressBar;
  final bool isProgress;

  _HomeState(
      {required this.changePath, this.progressBar, required this.isProgress});

  Widget _buildHead() {
    List<String> paths1 = _path.split("/");
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
              setState(() {
                _path = "/";
              });
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
              setState(() {
                _path = before;
              });
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

  List<Widget> _buildItems(List<File> fileList) {
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

      if (file.type == "dir") {
        icon = Icon(Icons.folder);
      } else {
        if (imageRex.hasMatch(file.name)) {
          icon = Icon(Icons.image);
        } else if (pdfRex.hasMatch(file.name)) {
          icon = Icon(Icons.picture_as_pdf);
        } else if (zipRegex.hasMatch(file.name)) {
          icon = Icon(Icons.archive);
        } else if (wordRegex.hasMatch(file.name)) {
          icon = Icon(Icons.book);
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
                    onPressed: () async {
                      bool status = await Permission.storage.isGranted;
                      //判断如果还没拥有读写权限就申请获取权限
                      if (!status) {
                        await Permission.storage.request().isGranted;
                      } // 调用下载方法 --------做该做的事
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
                        return print('ERROR:======>$e');
                      }
                    },
                    child: const Text('下载'),
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
        if (_path == "/") {
          changePath(_path + file.name);
          setState(() {
            _path += file.name;
          });
        } else {
          changePath(_path + "/" + file.name);
          setState(() {
            _path += "/" + file.name;
          });
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

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _getFiles(),
        builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
          if (snapshot.hasData) {
            var data = snapshot.data!.data['data'];
            var head = _buildHead();
            if (data != null) {
              var objects = data['objects'];

              var fileList = File.getFileList(objects);

              var widgetList = _buildItems(fileList);
              if (isProgress) {
                widgetList.insert(0, progressBar!);
                widgetList.insert(1, head);
                widgetList.insert(2, Divider(color: Colors.blue));
              } else {
                widgetList.insert(0, head);
                widgetList.insert(1, Divider(color: Colors.blue));
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
              if (isProgress) {
                list.insert(0, progressBar!);
              }

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
    ;
  }

  Future<Response> _getFiles() async {
    Response response = await HttpUtil.dio.get('/api/v3/directory$_path');
    await HttpUtil.dio.get("/api/v3/user/storage");
    return response;
  }
}
