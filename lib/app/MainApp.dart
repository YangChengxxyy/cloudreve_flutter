import 'package:cloudreve/entity/LoginState.dart';
import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/entity/Storage.dart';
import 'package:cloudreve/view/Home.dart';
import 'package:cloudreve/view/Setting.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:cloudreve/Service.dart';

class MainApp extends StatefulWidget {
  late LoginState _loginState;
  late Storage _storage;

  MainApp({Key? key, required LoginState loginState, required Storage storage})
      : super(key: key) {
    _loginState = loginState;
    _storage = storage;
  }

  @override
  State<MainApp> createState() => _MainAppState(_loginState, _storage);
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;
  String _path = "/";
  double _processNum = -1;

  Future<Response>? _fileResp;
  int _lastRequest = -1;

  Mode _mode = Mode.grid;
  late LoginState _loginState;
  Storage _storage = new Storage(0, 100, 100);

  _MainAppState(LoginState loginState, Storage storage) {
    _loginState = loginState;
    _storage = storage;
  }

  void _refreshFileList(bool immediately) async {
    if (immediately) {
      _lastRequest = DateTime.now().millisecondsSinceEpoch;
      setState(() {
        _fileResp = Service.directory(_path);
      });
      _storage = Storage.fromJson((await Service.storage()).data['data']);
    } else {
      int now = DateTime.now().millisecondsSinceEpoch;
      if (_lastRequest == -1 || (now - _lastRequest) / 1000 / 60 > 1) {
        _lastRequest = DateTime.now().millisecondsSinceEpoch;
        setState(() {
          _fileResp = Service.directory(_path);
        });
        _storage = Storage.fromJson((await Service.storage()).data['data']);
      }
    }
  }

  TextEditingController _newFoldController = new TextEditingController();
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  void _newFold() {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("新建目录"),
          actions: [
            TextButton(
                onPressed: () async {
                  if ((_formKey.currentState as FormState).validate()) {
                    Response res = await Service.addDirectory(
                        {"path": _path + "/" + _newFoldController.text.trim()});
                    if (res.statusCode == 200) {
                      Navigator.of(context).pop(true);
                      _newFoldController.text = "";
                      _refreshFileList(true);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("新建目录成功"),
                        ),
                      );
                    }
                  }
                },
                child: Text("创建"))
          ],
          content: Form(
            key: _formKey,
            child: TextFormField(
              controller: _newFoldController,
              decoration:
                  InputDecoration(labelText: "文件夹名称", icon: Icon(Icons.folder)),
              validator: (v) {
                if (v == null) {
                  return null;
                }
                return v.trim().length > 0 ? null : "文件夹名称不得为空";
              },
            ),
          ),
        );
      },
    );
  }

  void _uploadFile() async {
    var result = await FilePicker.platform.pickFiles(withReadStream: true);
    if (result != null) {
      var file = result.files.first;

      Response res = await Service.uploadFile(file, _path, (process, total) {
        setState(() {
          _processNum = process / total;
        });
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
        _refreshFileList(true);
      }
    }
  }

  Future<Response<dynamic>> _getAvatar() {
    return Service.avatar(_loginState.data.id);
  }

  @override
  Widget build(BuildContext context) {
    _refreshFileList(false);

    Icon icon = Icon(Icons.list);
    if (_mode == Mode.list) {
      icon = Icon(Icons.list);
    } else if (_mode == Mode.grid) {
      icon = Icon(Icons.grid_4x4_outlined);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cloudreve'),
        actions: [
          IconButton(
              onPressed: () {
                if (_mode == Mode.list) {
                  setState(() {
                    _mode = Mode.grid;
                  });
                } else {
                  setState(() {
                    _mode = Mode.list;
                  });
                }
              },
              icon: icon),
          PopupMenuButton<int>(
            onSelected: (i) async {
              if (i == 1) {
                _uploadFile();
              } else if (i == 2) {
                _newFold();
              }
            },
            icon: Icon(
              Icons.add,
            ),
            itemBuilder: (context) {
              return <PopupMenuEntry<int>>[
                PopupMenuItem<int>(
                  value: 1,
                  child: Text('上传文件'),
                ),
                PopupMenuItem<int>(
                  value: 2,
                  child: Text('新建目录'),
                ),
              ];
            },
          )
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[

            DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.blue,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    FutureBuilder(
                      future: _getAvatar(),
                      builder: (BuildContext context, AsyncSnapshot snapshot) {
                        if (snapshot.hasData) {
                          return Container(
                            alignment: Alignment.topCenter,
                            padding: EdgeInsets.only(bottom: 15),
                            child: ClipOval(
                              child: Image.memory(
                                snapshot.data!.data,
                                fit: BoxFit.cover,
                                width: 75,
                                height: 75,
                              ),
                            ),
                          );
                        } else {
                          return Container(
                            child: SizedBox(
                              child: CircularProgressIndicator(),
                              height: 50.0,
                              width: 50.0,
                            ),
                            alignment: Alignment.center,
                            height: 75,
                            width: 75,
                          );
                        }
                      },
                    ),
                    Text(_loginState.data.nickname,style: TextStyle(
                      fontSize: 20,
                      color: Colors.black45
                    ),)
                  ],
                )),
            ListTile(
              leading: Icon(Icons.storage),
              textColor: Colors.grey,
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "存储空间",
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 5),
                    child: LinearProgressIndicator(
                      value: (_storage.used.toDouble() /
                          _storage.total.toDouble()),
                      backgroundColor: Colors.grey,
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                  ),
                  Text(
                    "${MFile.getFileSize(_storage.used.toDouble(), 1)}/${MFile.getFileSize(_storage.total.toDouble(), 1)}",
                  )
                ],
              ),
            ),
            Divider(),
            ListTile(
              leading: Icon(Icons.share),
              textColor: Colors.grey,
              title: Text("我的分享"),
            ),
            ListTile(
              leading: Icon(Icons.phonelink),
              textColor: Colors.grey,
              title: Text("离线下载"),
            ),
            ListTile(
              leading: Icon(Icons.phonelink),
              textColor: Colors.grey,
              title: Text("任务队列"),
            ),
            ListTile(
              leading: Icon(Icons.assignment),
              textColor: Colors.grey,
              title: Text("任务队列"),
            )
          ],
        ),
      ),
      body: Center(
        child: IndexedStack(
          children: <Widget>[
            Home(
              mode: _mode,
              refresh: _refreshFileList,
              progressNum: _processNum,
              path: _path,
              fileResp: _fileResp!,
              changePath: (String newPath) {
                setState(() {
                  _path = newPath;
                });
              },
              changeProgressNum: (double newNum) {
                setState(() {
                  _processNum = newNum;
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
