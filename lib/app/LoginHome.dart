import 'package:cloudreve/app/MainHome.dart';
import 'package:cloudreve/app/RegisterHome.dart';
import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/Storage.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:dio/dio.dart';
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

  final TextEditingController _emailController = new TextEditingController();
  final TextEditingController _pwdController = new TextEditingController();

  var _rememberSelected = false;

  _LoginBodyState();

  @override
  Widget build(BuildContext context) {
    double maxHeight = MediaQuery.of(context).size.height;
    return Form(
      key: _formKey,
      child: Center(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container(
              margin:
                  EdgeInsets.only(top: maxHeight * 0.2, left: 40, right: 40),
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
                      return v.trim().length > 0 ? null : "电子邮箱不能为空";
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
                      } else if (v.trim().length < 6) {
                        return "密码过短";
                      } else if (v.trim().length == 0) {
                        return "密码不能为空";
                      }
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
                            //验证通过提交数据
                            Response logResp = await session(
                                _emailController.text, _pwdController.text);
                            LoginResult loginResult =
                                LoginResult.fromJson(logResp.data);
                            if (loginResult.code == 0) {
                              Response storageResp = await getStorage();
                              Storage sto =
                                  Storage.fromJson(storageResp.data['data']);
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.setBool("isRemember", _rememberSelected);
                              prefs.setBool("isLogin", true);
                              prefs.setString(
                                  "username", _emailController.text);
                              prefs.setString("password", _pwdController.text);
                              _onLoginBtnClick(loginResult.data!, sto);
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
                                            logResp.data['msg'],
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

  _onLoginBtnClick(UserData userData, Storage storage) {
    Navigator.of(context).pushAndRemoveUntil(
        new MaterialPageRoute(
          builder: (context) => new MainHome(
            userData: userData,
            storage: storage,
          ),
        ),
        (route) => route == null);
  }
}
