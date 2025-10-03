import 'package:cloudreve/app/MainHome.dart';
import 'package:cloudreve/app/RegisterHome.dart';
import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/Storage.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:cloudreve/utils/GlobalSetting.dart';
import 'package:dio/dio.dart';
import 'package:direct_select_flutter/direct_select_container.dart';
import 'package:direct_select_flutter/direct_select_item.dart';
import 'package:direct_select_flutter/direct_select_list.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginHome extends StatefulWidget {
  @override
  State<LoginHome> createState() => _LoginHomeState();
}

class _LoginHomeState extends State<LoginHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录Cloudreve"),
      ),
      body: LoginBody(),
    );
  }
}

class LoginBody extends StatefulWidget {
  const LoginBody({Key? key}) : super(key: key);

  @override
  _LoginBodyState createState() => _LoginBodyState();
}

class _LoginBodyState extends State<LoginBody> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();

  var _rememberSelected = true;

  var _urlSelectedIndex = 0;

  var _httpUrlRegExp = RegExp(
      r"^(http|https)://([\w-]+\.)+[\w-]+(/[\w-./?%&=]*)?:?([0-9]{0,5})$");

  DirectSelectItem<SelectItem> _getDropDownMenuItem(SelectItem item) {
    return DirectSelectItem<SelectItem>(
      itemHeight: 56,
      value: item,
      itemBuilder: (context, value) {
        return Row(
          children: [
            value.icon,
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(left: 16),
                child: Text(
                  value.title,
                  style: TextStyle(fontSize: 16, color: Colors.grey[600]),
                  overflow: TextOverflow.ellipsis,
                  maxLines: 1,
                ),
              ),
            ),
          ],
        );
      },
    );
  }

  BoxDecoration _getDslDecoration() {
    return BoxDecoration(
      border: BorderDirectional(
        bottom: BorderSide(width: 1, color: Colors.black12),
        top: BorderSide(width: 1, color: Colors.black12),
      ),
    );
  }

  var _urls = <SelectItem>[
    SelectItem(title: HttpUtil.dio.options.baseUrl, icon: Icon(Icons.http)),
  ];

  @override
  void initState() {
    super.initState();
    _initUrls();
  }

  void _initUrls() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? urls = prefs.getStringList(urlsKey);
    int? index = prefs.getInt(selectedIndexKey);
    if (urls != null) {
      for (final e in urls) {
        _urls.add(SelectItem(title: e, icon: Icon(Icons.http)));
      }
    }
    setState(() {
      _urls.add(SelectItem(
          title: "Add", icon: Icon(Icons.add), selectType: SelectType.add));
      if (index != null) {
        _urlSelectedIndex = index;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;

    return DirectSelectContainer(
      child: Form(
        key: _formKey,
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container(
              margin:
                  EdgeInsets.only(top: maxHeight * 0.15, left: 40, right: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    alignment: Alignment.topCenter,
                    margin: EdgeInsets.only(bottom: 30),
                    // 设置图片为圆形
                    child: ClipOval(
                      child: Image.asset(
                        "assets/logo.png",
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: DirectSelectList<SelectItem>(
                          values: _urls,
                          defaultItemIndex: _urlSelectedIndex,
                          itemBuilder: (SelectItem value) =>
                              _getDropDownMenuItem(value),
                          focusedItemDecoration: _getDslDecoration(),
                          onItemSelectedListener: (item, index, context) async {
                            switch (item.selectType) {
                              case SelectType.add:
                                String? url = await _showAddUrl();
                                if (url != null) {
                                  setState(() {
                                    _urls.insert(
                                      _urls.length - 1,
                                      SelectItem(
                                        title: url,
                                        icon: Icon(Icons.http),
                                      ),
                                    );
                                    _urlSelectedIndex = _urls.length - 2;
                                  });
                                  _addUrl(url);
                                  HttpUtil.dio.options.baseUrl = url;
                                  HttpUtil.clearAuthToken();
                                  _selectUrl(_urlSelectedIndex);
                                }
                                break;
                              case SelectType.none:
                                HttpUtil.dio.options.baseUrl = item.title;
                                HttpUtil.clearAuthToken();
                                _selectUrl(index);
                                setState(() {
                                  _urlSelectedIndex = index;
                                });
                                break;
                            }
                          },
                        ),
                      ),
                      Offstage(
                        offstage: _urls.length == 2 || _urlSelectedIndex == 0,
                        child: IconButton(
                          icon: Icon(Icons.close),
                          onPressed: () => _removeUrl(),
                        ),
                      ),
                    ],
                  ),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "电子邮箱",
                      icon: Icon(Icons.email),
                    ),
                    validator: (v) {
                      if (v == null) {
                        return null;
                      }
                      return v.trim().isNotEmpty ? null : "电子邮箱不能为空";
                    },
                  ),
                  TextFormField(
                    controller: _pwdController,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                      labelText: "密码",
                      icon: Icon(Icons.lock),
                    ),
                    validator: (v) {
                      if (v == null) {
                        return null;
                      }
                      if (v.trim().isEmpty) {
                        return "密码不能为空";
                      }
                      if (v.trim().length < 6) {
                        return "密码过短";
                      }
                      return null;
                    },
                  ),
                  CheckboxListTile(
                    contentPadding: EdgeInsets.zero,
                    value: _rememberSelected,
                    secondary: Icon(Icons.remember_me),
                    title: Text(
                      "记住我",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                    onChanged: (value) {
                      setState(() {
                        _rememberSelected = value == null ? false : value;
                      });
                    },
                  ),
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () async {
                          if ((_formKey.currentState!).validate()) {
                            final loginResult = await session(
                              _emailController.text,
                              _pwdController.text,
                            );

                            if (loginResult.isSuccess &&
                                loginResult.data != null) {
                              final storageResp = await getStorage();
                              final storageData = storageResp?.data;
                              final Storage sto = storageData != null
                                  ? Storage.fromApi(storageData)
                                  : Storage(0, 0, 0);
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.setBool(isRememberKey, _rememberSelected);
                              prefs.setBool(isLoginKey, true);
                              prefs.setString(
                                  usernameKey, _emailController.text);
                              prefs.setString(passwordKey, _pwdController.text);
                              _onLoginBtnClick(loginResult.data!.user, sto);
                            } else {
                              _pwdController.clear();
                              showDialog(
                                context: context,
                                builder: (_) {
                                  return AlertDialog(
                                    title: Text(
                                      "提示",
                                    ),
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Text(
                                            loginResult.msg ?? '登录失败',
                                            style: TextStyle(color: Colors.red),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            }
                          }
                        },
                        child: Text("登录"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: TextButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (_) {
                          return RegisterHome();
                        }));
                      },
                      child: Text(
                        "注册账户",
                        style: TextStyle(color: Colors.blue),
                      ),
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _onLoginBtnClick(UserData userData, Storage storage) {
    Navigator.pushAndRemoveUntil(
        context,
        MaterialPageRoute(
          builder: (context) => MainHome(
            userData: userData,
            storage: storage,
          ),
        ),
        (route) => false);
  }

  void _addUrl(String url) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    List<String>? urls = prefs.getStringList(urlsKey);
    if (urls != null) {
      urls.add(url);
    } else {
      urls = <String>[];
      urls.add(url);
    }
    prefs.setStringList(urlsKey, urls);
  }

  void _selectUrl(int index) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt(selectedIndexKey, index);
  }

  Future<String?> _showAddUrl() {
    final _newUrlController = TextEditingController(text: "http://");

    final GlobalKey<FormState> _formKey2 = GlobalKey<FormState>();

    return showDialog<String>(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text("新增服务器"),
          actions: [
            TextButton(
              onPressed: () async {
                if ((_formKey2.currentState!).validate()) {
                  Navigator.pop<String>(context, _newUrlController.text);
                }
              },
              child: Text("创建"),
            )
          ],
          content: Form(
            key: _formKey2,
            child: TextFormField(
              controller: _newUrlController,
              decoration: InputDecoration(
                labelText: "服务器地址",
                icon: Icon(Icons.http),
              ),
              validator: (v) {
                if (v == null) {
                  return null;
                }
                final value = v.trim();
                if (value.isEmpty) {
                  return "服务器地址不得为空";
                }
                if (_httpUrlRegExp.hasMatch(value)) {
                  return null;
                }
                return "非法服务器地址";
              },
            ),
          ),
        );
      },
    );
  }

  void _removeUrl() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _urls.removeAt(_urlSelectedIndex);
      if (_urlSelectedIndex == _urls.length - 1) {
        _urlSelectedIndex--;
      }
    });
    await prefs.setInt(selectedIndexKey, _urlSelectedIndex);
    var urls = <String>[];
    for (int i = 1; i < _urls.length - 1; i++) {
      urls.add(_urls[i].title);
    }
    await prefs.setStringList(urlsKey, urls);
  }
}

class SelectItem {
  String title;
  Icon icon;
  SelectType selectType;
  SelectItem(
      {required this.title,
      required this.icon,
      this.selectType = SelectType.none});
}

enum SelectType { none, add }
