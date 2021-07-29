import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class LoginAlertDemoApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        theme: new ThemeData(
          primarySwatch: Colors.green,
        ),
        home: Scaffold(
          body: new LoginHomePage(),
        ));
  }
}

class LoginHomePage extends StatefulWidget {
  @override
  _LoginHomePageState createState() {
    return new _LoginHomePageState();
  }
}

class _LoginHomePageState extends State<LoginHomePage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 120.0,
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(left: 30.0),
              color: Colors.white,
              child: Icon(Icons.access_alarm),
            ),
            Container(
              color: Colors.white,
              alignment: Alignment.center,
              padding: EdgeInsets.only(left: 30.0, right: 30.0),
              child: new Container(
                child: buildForm(),
              ),
            ),
          ],
        ),
      ],
    );
  }

  TextEditingController unameController = new TextEditingController();
  TextEditingController pwdController = new TextEditingController();
  GlobalKey formKey = new GlobalKey<FormState>();

  Widget buildForm() {
    return Form(
      //设置globalKey，用于后面获取FormState
      key: formKey,
      child: Column(
        children: <Widget>[
          TextFormField(
            autofocus: false,
            keyboardType: TextInputType.number,
            //键盘回车键的样式
            textInputAction: TextInputAction.next,
            controller: unameController,
            decoration: InputDecoration(
                labelText: "用户名或邮箱",
                hintText: "用户名或邮箱",
                icon: Icon(Icons.person)),
          ),
          TextFormField(
              autofocus: false,
              controller: pwdController,
              decoration: InputDecoration(
                  labelText: "密码", hintText: "您的登录密码", icon: Icon(Icons.lock)),
              obscureText: true,
              ),
          // 登录按钮
          Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: RaisedButton(
                    padding: EdgeInsets.all(15.0),
                    child: Text("登录"),
                    color: Theme.of(context).primaryColor,
                    textColor: Colors.white,
                    onPressed: () {
                      if ((formKey.currentState as FormState).validate()) {

                      }
                    },
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
