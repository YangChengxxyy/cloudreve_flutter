import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'Login.dart';

String registerUrl = "/api/v3/user";

class RegisterApp extends StatefulWidget {
  @override
  State createState() {
    return _RegisterAppState();
  }
}

class _RegisterAppState extends State<RegisterApp> {
  _onRegisterBtnClick() {
    Navigator.of(context).pushAndRemoveUntil(
        new MaterialPageRoute(builder: (context) => new LoginApp()),
        (route) => route == null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("注册Cloudreve"),
        ),
        body: RegisterBody(
          onRegisterBtnClick: _onRegisterBtnClick,
        ));
  }
}

class RegisterBody extends StatelessWidget {
  VoidCallback onRegisterBtnClick;

  RegisterBody({Key? key, required this.onRegisterBtnClick});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();
  TextEditingController _pwdController2 = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Center(
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context, index) {
                  return Container(
                    margin:
                        const EdgeInsets.only(top: 150, left: 40, right: 40),
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
                            }),
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
                            }),
                        TextFormField(
                            controller: _pwdController2,
                            keyboardType: TextInputType.visiblePassword,
                            obscureText: true,
                            decoration: InputDecoration(
                                labelText: "确认密码",
                                icon: Icon(Icons.lock_clock)),
                            validator: (v) {
                              if (v == null) {
                                return null;
                              } else if (v != _pwdController.text) {
                                return "两次密码不一致";
                              }
                            }),
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 30),
                          child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  style: ButtonStyle(),
                                  onPressed: () async {
                                    if ((_formKey.currentState as FormState)
                                        .validate()) {
                                      //验证通过提交数据
                                      Response registerResp = await HttpUtil
                                          .http
                                          .post("/api/v3/user", data: {
                                        'userName': _emailController.text,
                                        'Password': _pwdController.text,
                                        'captchaCode': ''
                                      });

                                      if (registerResp.data['code'] == 203) {
                                        _emailController.clear();
                                        _pwdController.clear();
                                        _pwdController2.clear();
                                        showDialog(
                                            context: context,
                                            builder: (_) {
                                              return AlertDialog(
                                                title: Text(
                                                  "提示",
                                                ),
                                                actions: [
                                                  TextButton(
                                                      onPressed: () {
                                                        Navigator.of(context).pushAndRemoveUntil(
                                                            new MaterialPageRoute(builder: (context) => new LoginApp()),
                                                                (route) => route == null);
                                                      },
                                                      child: Text("OK"))
                                                ],
                                                content:
                                                    new SingleChildScrollView(
                                                  child: new ListBody(
                                                    children: <Widget>[
                                                      new Text(
                                                        '请访问邮箱点击激活按钮',
                                                        style: TextStyle(
                                                            color: Colors.blue),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            });
                                      }
                                    }
                                  },
                                  child: Text("注册"))),
                        ),
                        Container(
                          alignment: Alignment.centerLeft,
                          child: TextButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              child: Text("返回登录",
                                  style: TextStyle(color: Colors.blue))),
                        )
                      ],
                    ),
                  );
                })));
  }
}
