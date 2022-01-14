import 'package:cloudreve/app/MainApp.dart';
import 'package:cloudreve/app/RegisterApp.dart';
import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/Storage.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginApp extends StatefulWidget {
  @override
  State<LoginApp> createState() => _LoginAppState();
}

class LoginBody extends StatelessWidget {
  void Function(UserData userData, Storage storage) onLoginBtnClick;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  TextEditingController _emailController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  LoginBody({Key? key, required this.onLoginBtnClick}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Center(
        child: ListView.builder(
          itemCount: 1,
          itemBuilder: (context, index) {
            return Container(
              margin: const EdgeInsets.only(top: 150, left: 40, right: 40),
              child: Column(
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
                        labelText: "电子邮箱", icon: Icon(Icons.email)),
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
                        labelText: "密码", icon: Icon(Icons.lock)),
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
                  Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.only(top: 30),
                    child: SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ButtonStyle(),
                        onPressed: () async {
                          if ((_formKey.currentState as FormState).validate()) {
                            //验证通过提交数据
                            Response logResp = await session(
                                _emailController.text, _pwdController.text);
                            LoginResult loginResult =
                                LoginResult.fromJson(logResp.data);
                            if (loginResult.code == 0) {
                              Response storageResp = await storage();
                              Storage sto =
                                  Storage.fromJson(storageResp.data['data']);
                              SharedPreferences prefs =
                                  await SharedPreferences.getInstance();
                              prefs.setBool("isLogin", true);
                              prefs.setString(
                                  "username", _emailController.text);
                              prefs.setString("password", _pwdController.text);
                              onLoginBtnClick(loginResult.data!, sto);
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
                          return RegisterApp();
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
}

class _LoginAppState extends State<LoginApp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("登录Cloudreve"),
      ),
      body: LoginBody(
        onLoginBtnClick: _onLoginBtnClick,
      ),
    );
  }

  _onLoginBtnClick(UserData userData, Storage storage) {
    Navigator.of(context).pushAndRemoveUntil(
        new MaterialPageRoute(
          builder: (context) => new MainApp(
            userData: userData,
            storage: storage,
          ),
        ),
        (route) => route == null);
  }
}
