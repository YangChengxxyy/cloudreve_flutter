import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/utils/cloudreve_repository.dart';
import 'package:flutter/material.dart';

import 'LoginHome.dart';

class RegisterHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("注册Cloudreve"),
      ),
      body: RegisterBody(),
    );
  }
}

class RegisterBody extends StatelessWidget {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _pwdController = TextEditingController();
  final TextEditingController _pwdController2 = TextEditingController();
  RegisterBody({Key? key});

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
                  EdgeInsets.only(top: maxHeight * 0.15, left: 40, right: 40),
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
                      return v.trim().isNotEmpty ? null : "电子邮箱不能为空";
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
                  TextFormField(
                    controller: _pwdController2,
                    keyboardType: TextInputType.visiblePassword,
                    obscureText: true,
                    decoration: InputDecoration(
                        labelText: "确认密码", icon: Icon(Icons.lock_clock)),
                    validator: (v) {
                      if (v == null) {
                        return null;
                      }
                      if (v.trim().isEmpty) {
                        return "确认密码不得为空";
                      }
                      if (v != _pwdController.text) {
                        return "两次密码不一致";
                      }
                      return null;
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
                            final LoginResult loginResult =
                                await CloudreveRepository.register(
                              email: _emailController.text,
                              password: _pwdController.text,
                            );
                            if (loginResult.code == 0 ||
                                loginResult.code == 203) {
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
                                            Navigator.pushAndRemoveUntil(
                                                context,
                                                MaterialPageRoute(
                                                  builder: (context) =>
                                                      LoginHome(),
                                                ),
                                                (route) => false);
                                          },
                                          child: Text("OK"))
                                    ],
                                    content: SingleChildScrollView(
                                      child: ListBody(
                                        children: <Widget>[
                                          Text(
                                            loginResult.code == 203
                                                ? '请访问邮箱点击激活按钮'
                                                : '注册成功，请登录',
                                            style:
                                                TextStyle(color: Colors.blue),
                                          ),
                                        ],
                                      ),
                                    ),
                                  );
                                },
                              );
                            }
                            if (loginResult.code != 0 &&
                                loginResult.code != 203) {
                              showDialog(
                                context: context,
                                builder: (_) {
                                  return AlertDialog(
                                    title: Text("注册失败"),
                                    content: Text(
                                        loginResult.msg ?? '请稍后重试'),
                                  );
                                },
                              );
                            }
                          }
                        },
                        child: Text("注册"),
                      ),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        "返回登录",
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
