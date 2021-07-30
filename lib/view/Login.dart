import 'package:cloudreve/main.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LoginApp extends StatefulWidget {
  @override
  State<LoginApp> createState() => _LoginAppState();
}

class _LoginAppState extends State<LoginApp> {
  _onLoginBtnClick() {
    Navigator.of(context).pushAndRemoveUntil(
        new MaterialPageRoute(builder: (context) => new HomeApp()),
        (route) => route == null);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("登录Cloudreve"),
        ),
        body: LoginBody(
          onLoginBtnClick: _onLoginBtnClick,
        ));
  }
}

class LoginBody extends StatelessWidget {
  VoidCallback onLoginBtnClick;

  LoginBody({Key? key, required this.onLoginBtnClick}) : super(key: key);

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  TextEditingController _emailController = new TextEditingController();
  TextEditingController _pwdController = new TextEditingController();

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
                        Container(
                          alignment: Alignment.center,
                          padding: EdgeInsets.only(top: 50),
                          child: SizedBox(
                              width: double.infinity,
                              child: ElevatedButton(
                                  style: ButtonStyle(),
                                  onPressed: () async {
                                    if ((_formKey.currentState as FormState)
                                        .validate()) {
                                      //验证通过提交数据
                                      Response logResp = await HttpUtil.http
                                          .post("/api/v3/user/session", data: {
                                        'userName': _emailController.text,
                                        'Password': _pwdController.text,
                                        'captchaCode': ''
                                      });
                                      if (logResp.data['code'] == 0) {
                                        await HttpUtil.http
                                            .get('/api/v3/user/storage');
                                        SharedPreferences prefs =
                                            await SharedPreferences
                                                .getInstance();
                                        prefs.setBool("isLogin", true);
                                        prefs.setString(
                                            "username", _emailController.text);
                                        prefs.setString(
                                            "password", _pwdController.text);
                                        onLoginBtnClick();
                                      } else {
                                        _pwdController.clear();
                                        showDialog(
                                            context: context,
                                            builder: (_) {
                                              return AlertDialog(
                                                title: Text(
                                                  "提示",
                                                ),
                                                content:
                                                    new SingleChildScrollView(
                                                  child: new ListBody(
                                                    children: <Widget>[
                                                      new Text(
                                                        '密码错误',
                                                        style: TextStyle(
                                                            color: Colors.red),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              );
                                            });
                                      }
                                    }
                                  },
                                  child: Text("登录"))),
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: TextButton(
                              onPressed: () {},
                              child: Text("注册账户",
                                  style: TextStyle(color: Colors.blue))),
                        )
                      ],
                    ),
                  );
                })));
  }
}
