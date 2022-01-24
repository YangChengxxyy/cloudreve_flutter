import 'package:cloudreve/app/LoginApp.dart';
import 'package:cloudreve/component/CustomSearchDelegate.dart';
import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/entity/Storage.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:cloudreve/view/Home.dart';
import 'package:cloudreve/view/Setting.dart';
import 'package:cloudreve/view/Share.dart';
import 'package:cloudreve/view/WebDav.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MainApp extends StatefulWidget {
  /// 用户数据
  late UserData userData;

  /// 用户存储信息
  late Storage storage;

  MainApp({Key? key, required this.userData, required this.storage})
      : super(key: key);

  @override
  State<MainApp> createState() =>
      _MainAppState(userData: userData, storage: storage);
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;

  /// 当前路径
  String _path = "/";

  /// 下载进度现在只支持单个
  double _processNum = -1;

  /// 访问后台的文件列表
  late Future<Response> _fileResp;

  /// 记录刷新时间 减少刷新时间
  int _lastRequest = -1;

  /// 列表模式
  Mode _mode = Mode.grid;

  /// 用户数据
  late UserData _userData;

  /// 用户存储信息
  late Storage _storage;

  /// 文件排序比较函数
  CompareFunction _compare = _compareFunctions[0];

  MFile? _openFile;

  bool? _open = false;

  _MainAppState({required UserData userData, required Storage storage}) {
    _userData = userData;
    _storage = storage;
    _fileResp = directory(_path);
  }

  static final _compareFunctions = <CompareFunction>[
    new CompareFunction((f1, f2) {
      if (f1.type == "dir" && f2.type == "file") {
        return -9007199254740992;
      }
      return f1.name.compareTo(f2.name);
    }, 'A-Z'),
    new CompareFunction((f1, f2) {
      if (f1.type == "dir" && f2.type == "file") {
        return -9007199254740992;
      }
      return f2.name.compareTo(f1.name);
    }, 'Z-A'),
    new CompareFunction((f1, f2) {
      if (f1.type == "dir" && f2.type == "file") {
        return -9007199254740992;
      }
      return f1.getFormatDate().compareTo(f2.getFormatDate());
    }, '最早'),
    new CompareFunction((f1, f2) {
      if (f1.type == "dir" && f2.type == "file") {
        return -9007199254740992;
      }
      return f2.getFormatDate().compareTo(f1.getFormatDate());
    }, '最新'),
    new CompareFunction((f1, f2) {
      if (f1.type == "dir" && f2.type == "file") {
        return -9007199254740992;
      }
      return f1.size.compareTo(f2.size);
    }, '最大'),
    new CompareFunction((f1, f2) {
      if (f1.type == "dir" && f2.type == "file") {
        return -9007199254740992;
      }
      return f2.size.compareTo(f1.size);
    }, '最小'),
  ];

  @override
  Widget build(BuildContext context) {
    _refresh(false);

    Icon icon = Icon(Icons.list);
    if (_mode == Mode.list) {
      icon = Icon(Icons.list);
    } else if (_mode == Mode.grid) {
      icon = Icon(Icons.grid_4x4_outlined);
    }

    return Scaffold(
        appBar: AppBar(
          title: const Text('Cloudreve'),
          actions: _selectedIndex == 0
              ? [
                  IconButton(
                    onPressed: () {
                      showSearch(
                        context: context,
                        delegate: CustomSearchDelegate(resultCallback: (file) {
                          setState(() {
                            _openFile = file;
                          });
                        }),
                        useRootNavigator: true,
                      );
                    },
                    icon: Icon(Icons.search),
                    tooltip: "搜索",
                  ),
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
                    icon: icon,
                    tooltip: "切换显示模式",
                  ),
                  PopupMenuButton<CompareFunction>(
                    initialValue: _compare,
                    tooltip: "排序方式",
                    icon: Icon(
                      Icons.sort_by_alpha,
                    ),
                    itemBuilder: (context) {
                      return _compareFunctions.map((e) {
                        return PopupMenuItem<CompareFunction>(
                          value: e,
                          child: Text(e.name),
                        );
                      }).toList();
                    },
                    onSelected: (c) async {
                      this.setState(() {
                        _compare = c;
                      });
                    },
                  ),
                ]
              : null,
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
                    Text(
                      _userData.nickname,
                      style: TextStyle(fontSize: 20, color: Colors.black45),
                    )
                  ],
                ),
              ),
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
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return Share();
                  }));
                },
              ),
              ListTile(
                leading: Icon(Icons.phonelink),
                textColor: Colors.grey,
                title: Text("WebDav"),
                onTap: () {
                  Navigator.push(context, MaterialPageRoute(builder: (context) {
                    return WebDav();
                  }));
                },
              ),
              Divider(
                height: 0,
              ),
              ListTile(
                leading: Icon(Icons.logout),
                textColor: Colors.grey,
                title: Text('退出登录'),
                onTap: () async {
                  await deleteSession();

                  SharedPreferences prefs =
                      await SharedPreferences.getInstance();
                  await prefs.clear();
                  Navigator.of(context).pushAndRemoveUntil(
                      new MaterialPageRoute(
                          builder: (context) => new LoginApp()),
                      (route) => route == null);
                },
              ),
            ],
          ),
        ),
        body: Center(
          child: IndexedStack(
            children: <Widget>[
              Home(
                mode: _mode,
                refresh: _refresh,
                progressNum: _processNum,
                path: _path,
                fileResp: _fileResp,
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
                compare: _compare.fun,
                openFile: _openFile,
                setOpenFile: (file) {
                  setState(() {
                    _openFile = file;
                  });
                },
              ),
              Setting(
                userData: _userData,
              )
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
        floatingActionButton: _selectedIndex == 0
            ? FloatingActionButton(
                child: PopupMenuButton<void Function()>(
                  tooltip: "上传",
                  offset: Offset(0, -118),
                  onSelected: (fun) async {
                    fun();
                  },
                  icon: Icon(
                    Icons.add,
                  ),
                  itemBuilder: (context) {
                    return <PopupMenuEntry<void Function()>>[
                      PopupMenuItem<void Function()>(
                        value: _uploadFile,
                        child: Text('上传文件'),
                      ),
                      PopupMenuItem<void Function()>(
                        value: _newFold,
                        child: Text('新建目录'),
                      ),
                    ];
                  },
                ),
                onPressed: () => {},
              )
            : null);
  }

  Future<Response> _getAvatar() {
    return avatar(_userData.id);
  }

  void _newFold() {
    final _newFoldController = new TextEditingController();

    final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("新建目录"),
          actions: [
            TextButton(
              onPressed: () async {
                if ((_formKey.currentState!).validate()) {
                  Response res = await addDirectory(
                      {"path": _path + "/" + _newFoldController.text.trim()});
                  if (res.statusCode == 200) {
                    Navigator.of(context).pop(true);
                    _newFoldController.text = "";
                    _refresh(true);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("新建目录成功"),
                      ),
                    );
                  }
                }
              },
              child: Text("创建"),
            )
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

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  /// 刷新 [immediately]表示是否强制
  void _refresh(bool immediately) async {
    if (immediately) {
      _lastRequest = DateTime.now().millisecondsSinceEpoch;

      SharedPreferences prefs = await SharedPreferences.getInstance();
      String username = prefs.getString("username")!;
      String password = prefs.getString("password")!;
      Response loginResp = await session(username, password);
      Response storageResp = await getStorage();

      UserData userData = UserData.fromJson(loginResp.data['data']);
      Storage storage = Storage.fromJson(storageResp.data['data']);
      var fileResp = directory(_path);

      setState(() {
        _fileResp = fileResp;
        _storage = storage;
        _userData = userData;
      });
    } else {
      int now = DateTime.now().millisecondsSinceEpoch;
      if (_lastRequest == -1 || (now - _lastRequest) / 1000 / 60 > 1) {
        _lastRequest = DateTime.now().millisecondsSinceEpoch;

        SharedPreferences prefs = await SharedPreferences.getInstance();
        String username = prefs.getString("username")!;
        String password = prefs.getString("password")!;
        Response loginResp = await session(username, password);
        Response storageResp = await getStorage();

        UserData userData = UserData.fromJson(loginResp.data['data']);
        Storage storage = Storage.fromJson(storageResp.data['data']);
        var fileResp = directory(_path);

        setState(() {
          _fileResp = fileResp;
          _storage = storage;
          _userData = userData;
        });
      }
    }
  }

  void _uploadFile() async {
    var result = await FilePicker.platform.pickFiles(withReadStream: true);
    if (result != null) {
      var file = result.files.first;

      Response res = await uploadFile(file, _path, (process, total) {
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
        _refresh(true);
      }
    }
  }
}

class CompareFunction {
  int Function(MFile, MFile) fun;
  String name;
  CompareFunction(this.fun, this.name);
}
