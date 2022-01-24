import 'package:cloudreve/app/LoginApp.dart';
import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/Storage.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'app/MainApp.dart';

void main() {
  runApp(MyApp());
}

class LoadingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 206),
          alignment: Alignment.topCenter,
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
      ),
    );
  }
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Cloudreve',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
      ),
      home: FutureBuilder(
        future: _future(),
        builder: (BuildContext context, AsyncSnapshot<Widget> snapshot) {
          if (snapshot.hasData) {
            return snapshot.data!;
          } else {
            return LoadingApp();
          }
        },
      ),
    );
  }

  Future<Widget> _future() async {
    bool status = await Permission.storage.isGranted;
    HttpUtil.dio.interceptors.add(CookieManager(HttpUtil.cookieJar));

    if (!status) {
      await Permission.storage.request().isGranted;
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getBool("isLogin") != null) {
      String username = prefs.getString("username")!;
      String password = prefs.getString("password")!;

      //重新登录刷新登录信息
      Response loginResp = await session(username, password);
      Response storageResp = await getStorage();

      LoginResult loginResult = LoginResult.fromJson(loginResp.data);
      Storage storage = Storage.fromJson(storageResp.data['data']);
      if (loginResult.code == 0) {
        return MainApp(
          userData: loginResult.data!,
          storage: storage,
        );
      } else {
        prefs.clear();
        return LoginApp();
      }
    } else {
      return LoginApp();
    }
  }
}
