import 'dart:io';

import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:cloudreve/view/Home.dart';
import 'package:cloudreve/view/Setting.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;
  String _path = "/";
  double _processNum = -1;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cloudreve'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          var result = await FilePicker.platform
              .pickFiles(withReadStream: true, withData: true);
          if (result != null) {
            var file = result.files.first;
            var option = Options(
                method: "POST",
                contentType: "application/octet-stream",
                headers: {
                  "x-filename": file.name,
                  "x-path": Uri.encodeComponent(_path),
                  HttpHeaders.contentLengthHeader: file.size
                },
                sendTimeout: 100000);
            double oldProcess = 0;
            Response res = await HttpUtil.dio.post("/api/v3/file/upload",
                options: option,
                data: file.bytes, onSendProgress: (process, total) {
              if (process / total - oldProcess > 0.01) {
                oldProcess = process / total;
                setState(() {
                  _processNum = oldProcess;
                });
              }
            });

            if (res.statusCode == 200) {
              String text;
              if (_path == '/') {
                text = "上传成功:$_path${file.name}";
              } else {
                text = "上传成功:$_path/${file.name}";
              }
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(text),
                ),
              );
              setState(() {
                _processNum = -1;
              });
            }
          }
        },
        tooltip: '上传文件',
        child: const Icon(Icons.add),
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: const <Widget>[
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Text(
      //           'Drawer Header',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 24,
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.message),
      //         title: Text('Messages'),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.account_circle),
      //         title: Text('Profile'),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text('Settings'),
      //       ),
      //     ],
      //   ),
      // ),
      body: Center(
        child: IndexedStack(
          children: <Widget>[
            Home(
              progressNum: _processNum,
              path: _path,
              changePath: (String newPath) {
                setState(() {
                  _path = newPath;
                });
              },
            ),
            Setting()
          ],
          index: _selectedIndex,
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '设置',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
