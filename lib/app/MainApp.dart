import 'package:cloudreve/component/CustomSearchDelegate.dart';
import 'package:cloudreve/component/MDrawer.dart';
import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/entity/Storage.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:cloudreve/view/Home.dart';
import 'package:cloudreve/view/Setting.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:open_file/open_file.dart';
import 'package:shared_preferences/shared_preferences.dart';

Map<int, CancelToken> uploadCancelTokenMap = {};

class MainApp extends StatefulWidget {
  /// 用户数据
  late final UserData userData;

  /// 用户存储信息
  late final Storage storage;

  MainApp({Key? key, required this.userData, required this.storage})
      : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
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

  /// 文件排序比较函数
  CompareFunction _compare = _compareFunctions[0];

  MFile? _openFile;

  _MainAppState() {
    _fileResp = directory(_path);
  }

  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();
    flutterLocalNotificationsPlugin = new FlutterLocalNotificationsPlugin();
    var android =
        new AndroidInitializationSettings('@mipmap/ic_launcher2_foreground');
    var iOS = new IOSInitializationSettings();
    var initSetttings = new InitializationSettings(android: android, iOS: iOS);
    flutterLocalNotificationsPlugin?.initialize(initSetttings,
        onSelectNotification: _onSelectNotification);
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
                        }, gotoPath: (String path) {
                          setState(() {
                            _path = path;
                          });
                          _refresh(true);
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
        drawer: MDrawer(
          storage: widget.storage,
          userData: widget.userData,
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
                userData: widget.userData,
                refresh: _refresh,
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
        widget.storage = storage;
        widget.userData = userData;
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
          widget.storage = storage;
          widget.userData = userData;
        });
      }
    }
  }

  void _uploadFile() async {
    var result = await FilePicker.platform
        .pickFiles(withReadStream: true, allowMultiple: true);
    if (result != null) {
      var files = result.files;
      for (var file in files) {
        _uploadSingleFile(file);
      }
    }
  }

  Future<void> _uploadSingleFile(PlatformFile file) async {
    int fileHashCode = file.hashCode;
    CancelToken cancelToken = new CancelToken();
    uploadCancelTokenMap[fileHashCode] = cancelToken;
    Response response =
        await uploadFile(file, _path, cancelToken, (processs, total) async {
      double precent = processs / total;
      await _showUploadNotification(
          id: fileHashCode,
          title: '上传 ${file.name}',
          body: (precent * 100).toStringAsFixed(2) + "%",
          payload: 'upload-doing-$fileHashCode');
    }).catchError((err) async {
      if (CancelToken.isCancel(err)) {
        await flutterLocalNotificationsPlugin!.cancel(fileHashCode);
        await _showUploadNotification(
            id: fileHashCode,
            title: '上传 ${file.name}',
            body: '已取消',
            payload: 'upload-cancel-$fileHashCode');
      } else {
        await _showUploadNotification(
            id: fileHashCode,
            title: '上传 ${file.name}',
            body: '上传出错',
            payload: 'upload-error-$fileHashCode');
      }
    });
    try {
      if (response.statusCode == 200) {
        await flutterLocalNotificationsPlugin!.cancel(fileHashCode);
        await _showUploadNotification(
            id: fileHashCode,
            title: '上传 ${file.name}',
            body: '至$_path',
            payload: 'upload-done');
        _refresh(true);
      }
    } catch (e) {
      await flutterLocalNotificationsPlugin!.cancel(fileHashCode);
      await _showUploadNotification(
          id: fileHashCode,
          title: '上传 ${file.name}',
          body: '已取消',
          payload: 'upload-cancel-$fileHashCode');
    }
  }

  void _onSelectNotification(String? payload) {
    String s = payload!;
    if (s.startsWith("download")) {
      String downloadString = s.substring(9);
      if (downloadString.startsWith("doing")) {
        CancelToken cancelToken =
            downloadCancelTokenMap[int.parse(downloadString.substring(6))]!;
        cancelToken.cancel();
        downloadCancelTokenMap.remove(int.parse(downloadString.substring(6)));
      } else if (downloadString.startsWith("done")) {
        debugPrint(downloadString.substring(5));
        OpenFile.open(downloadString.substring(5));
      }
    } else if (s.startsWith("upload")) {
      String uploadString = s.substring(7);
      if (uploadString.startsWith("doing")) {
        CancelToken cancelToken =
            uploadCancelTokenMap[int.parse(uploadString.substring(6))]!;
        cancelToken.cancel();
        uploadCancelTokenMap.remove(int.parse(uploadString.substring(6)));
      }
    }
  }

  Future<void> _showUploadNotification(
      {required int id,
      required String title,
      required String body,
      String? payload}) async {
    var android = new AndroidNotificationDetails('文件上传', '文件上传通道',
        playSound: false,
        channelDescription: '文件上传',
        priority: Priority.min,
        importance: Importance.min);
    var iOS = new IOSNotificationDetails();
    var platform = new NotificationDetails(android: android, iOS: iOS);
    await flutterLocalNotificationsPlugin?.show(id, title, body, platform,
        payload: payload);
  }
}

class CompareFunction {
  int Function(MFile, MFile) fun;
  String name;
  CompareFunction(this.fun, this.name);
}
