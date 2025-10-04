import 'dart:async';
import 'dart:io';

import 'package:cloudreve/component/CustomSearchDelegate.dart';
import 'package:cloudreve/component/MDrawer.dart';
import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/entity/Storage.dart';
import 'package:cloudreve/utils/DarkModeProvider.dart';
import 'package:cloudreve/utils/GlobalSetting.dart';
import 'package:cloudreve/utils/cloudreve_repository.dart';
import 'package:cloudreve/view/Home.dart';
import 'package:cloudreve/view/Setting.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:open_file/open_file.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

Map<int, CancelToken> uploadCancelTokenMap = {};

class MainHome extends StatefulWidget {
  /// 用户数据
  final UserData userData;

  /// 用户存储信息
  final Storage storage;

  const MainHome({Key? key, required this.userData, required this.storage})
      : super(key: key);

  @override
  State<MainHome> createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  int _selectedIndex = 0;

  /// 当前路径
  String _path = "/";

  /// 访问后台的文件列表
  late Future<FileListing> _fileResp;

  /// 记录刷新时间 减少刷新时间
  int _lastRequest = -1;

  /// 列表模式
  Mode _mode = Mode.grid;

  /// 文件排序比较函数
  CompareFunction _compare = _compareFunctions[0];

  MFile? _openFile;

  late Storage _storage;
  late UserData _userData;

  _MainHomeState() {
    _fileResp = CloudreveRepository.listFiles(_path);
  }

  FlutterLocalNotificationsPlugin? flutterLocalNotificationsPlugin;

  @override
  void initState() {
    super.initState();
    _storage = widget.storage;
    _userData = widget.userData;
    flutterLocalNotificationsPlugin = FlutterLocalNotificationsPlugin();
    var android =
        AndroidInitializationSettings('@mipmap/ic_launcher2_foreground');
    var iOS = DarwinInitializationSettings();
    var initSetttings = InitializationSettings(android: android, iOS: iOS);
    flutterLocalNotificationsPlugin?.initialize(initSetttings,
        onDidReceiveNotificationResponse: _onSelectNotification);
  }

  static final _compareFunctions = <CompareFunction>[
    CompareFunction((f1, f2) {
      if (f1.type == "dir" && f2.type == "file") {
        return -9007199254740992;
      }
      return f1.name.compareTo(f2.name);
    }, 'A-Z'),
    CompareFunction((f1, f2) {
      if (f1.type == "dir" && f2.type == "file") {
        return -9007199254740992;
      }
      return f2.name.compareTo(f1.name);
    }, 'Z-A'),
    CompareFunction((f1, f2) {
      if (f1.type == "dir" && f2.type == "file") {
        return -9007199254740992;
      }
      return f1.getFormatDate().compareTo(f2.getFormatDate());
    }, '最早'),
    CompareFunction((f1, f2) {
      if (f1.type == "dir" && f2.type == "file") {
        return -9007199254740992;
      }
      return f2.getFormatDate().compareTo(f1.getFormatDate());
    }, '最新'),
    CompareFunction((f1, f2) {
      if (f1.type == "dir" && f2.type == "file") {
        return -9007199254740992;
      }
      return f1.size.compareTo(f2.size);
    }, '最大'),
    CompareFunction((f1, f2) {
      if (f1.type == "dir" && f2.type == "file") {
        return -9007199254740992;
      }
      return f2.size.compareTo(f1.size);
    }, '最小'),
  ];

  @override
  Widget build(BuildContext context) {
    _refresh(false);
    var darkMode = Provider.of<DarkModeProvider>(context).darkMode;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Cloudreve'),
          actions: _selectedIndex == 0
              ? [
                  PopupMenuButton<DarkMode>(
                    initialValue: darkMode,
                    tooltip: "暗黑模式",
                    icon: Builder(
                      builder: (BuildContext context) {
                        switch (darkMode) {
                          case DarkMode.auto:
                            return Icon(Icons.brightness_auto);
                          case DarkMode.open:
                            return Icon(Icons.brightness_low);
                          case DarkMode.close:
                            return Icon(Icons.brightness_high);
                        }
                      },
                    ),
                    itemBuilder: (context) {
                      return DarkMode.values.map((e) {
                        return PopupMenuItem<DarkMode>(
                          value: e,
                          child: Builder(
                            builder: (BuildContext context) {
                              switch (e) {
                                case DarkMode.auto:
                                  return Text("自动");
                                case DarkMode.open:
                                  return Text("暗黑");
                                case DarkMode.close:
                                  return Text("日间");
                              }
                            },
                          ),
                        );
                      }).toList();
                    },
                    onSelected: (mode) {
                      Provider.of<DarkModeProvider>(context, listen: false)
                          .changeMode(mode);
                    },
                  ),
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
                    icon: Builder(
                      builder: (BuildContext context) {
                        Icon icon = Icon(Icons.list);
                        if (_mode == Mode.list) {
                          icon = Icon(Icons.list);
                        } else if (_mode == Mode.grid) {
                          icon = Icon(Icons.grid_4x4_outlined);
                        }
                        return icon;
                      },
                    ),
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
                    onSelected: (c) {
                      this.setState(() {
                        _compare = c;
                      });
                    },
                  ),
                ]
              : null,
        ),
        drawer: MDrawer(
          storage: _storage,
          userData: _userData,
        ),
        body: Center(
          child: IndexedStack(
            children: <Widget>[
              Home(
                mode: _mode,
                refresh: _refresh,
                path: _path,
                fileResp: _fileResp,
                changePath: (String newPath) {
                  setState(() {
                    _path = newPath;
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
    final _newFoldController = TextEditingController();

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
                  final res = await CloudreveRepository.createDirectory(
                    _path,
                    _newFoldController.text.trim(),
                  );
                  if (res != null && res.code == 0) {
                    Navigator.pop(context);
                    _newFoldController.text = "";
                    _refresh(true);
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("新建目录成功"),
                      ),
                    );
                  } else {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text(res?.msg ?? "新建目录失败"),
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
              decoration: InputDecoration(
                labelText: "文件夹名称",
                icon: Icon(Icons.folder),
              ),
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
      String username = prefs.getString(usernameKey)!;
      String password = prefs.getString(passwordKey)!;
      final loginResult =
          await CloudreveRepository.signIn(email: username, password: password);
      final storageData = await CloudreveRepository.fetchStorage();

      final Storage storage = storageData ?? _storage;
      final UserData userData =
          loginResult.data != null ? loginResult.data!.user : _userData;
      var fileResp = CloudreveRepository.listFiles(_path);

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
        String username = prefs.getString(usernameKey)!;
        String password = prefs.getString(passwordKey)!;
        final loginResult = await CloudreveRepository.signIn(
            email: username, password: password);
        final storageData = await CloudreveRepository.fetchStorage();

        final Storage storage = storageData ?? _storage;
        final UserData userData =
            loginResult.data != null ? loginResult.data!.user : _userData;
        var fileResp = CloudreveRepository.listFiles(_path);

        setState(() {
          _fileResp = fileResp;
          _storage = storage;
          _userData = userData;
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
    CancelToken cancelToken = CancelToken();
    uploadCancelTokenMap[fileHashCode] = cancelToken;
    Response response;
    try {
      final options = Options(
        method: 'POST',
        contentType: 'application/octet-stream',
        headers: {
          'x-cr-filename': Uri.encodeComponent(file.name),
          'x-cr-path': Uri.encodeComponent(_path),
          HttpHeaders.contentLengthHeader: file.size,
        },
        sendTimeout: const Duration(seconds: 100),
      );

      response = await HttpUtil.dio.post(
        '/api/v3/file/upload',
        options: options,
        data: file.readStream,
        cancelToken: cancelToken,
        onSendProgress: (process, total) {
          final percent = total == 0 ? 0 : process / total;
          unawaited(
            _showUploadNotification(
              id: fileHashCode,
              title: '上传 ${file.name}',
              body: (percent * 100).toStringAsFixed(2) + "%",
              payload: 'upload-doing-$fileHashCode',
            ),
          );
        },
      );
    } on DioException catch (err) {
      if (err.type == DioExceptionType.cancel) {
        await flutterLocalNotificationsPlugin?.cancel(fileHashCode);
        await _showUploadNotification(
          id: fileHashCode,
          title: '上传 ${file.name}',
          body: '已取消',
          payload: 'upload-cancel-$fileHashCode',
        );
      } else {
        await _showUploadNotification(
          id: fileHashCode,
          title: '上传 ${file.name}',
          body: '上传出错',
          payload: 'upload-error-$fileHashCode',
        );
      }
      return;
    }
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

  void _onSelectNotification(NotificationResponse notificationResponse) {
    String s = notificationResponse.payload!;
    if (s.startsWith("download")) {
      String downloadString = s.substring(9);
      if (downloadString.startsWith("doing")) {
        CancelToken cancelToken =
            downloadCancelTokenMap[int.parse(downloadString.substring(6))]!;
        cancelToken.cancel();
        downloadCancelTokenMap.remove(int.parse(downloadString.substring(6)));
      } else if (downloadString.startsWith("done")) {
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
    var android = AndroidNotificationDetails('文件上传', '文件上传通道',
        playSound: false,
        channelDescription: '文件上传',
        priority: Priority.min,
        importance: Importance.min);
    var iOS = DarwinNotificationDetails();
    var platform = NotificationDetails(android: android, iOS: iOS);
    await flutterLocalNotificationsPlugin?.show(id, title, body, platform,
        payload: payload);
  }
}

class CompareFunction {
  int Function(MFile, MFile) fun;
  String name;
  CompareFunction(this.fun, this.name);
}
