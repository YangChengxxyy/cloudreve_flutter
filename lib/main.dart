import 'package:cloudreve/app/LoadingHome.dart';
import 'package:cloudreve/app/LoginHome.dart';
import 'package:cloudreve/app/MainHome.dart';
import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/Storage.dart';
import 'package:cloudreve/utils/DarkModeProvider.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider.value(
          value: DarkModeProvider(),
        ),
      ],
      child: Consumer<DarkModeProvider>(
        builder: (context, darkModeProvider, _) {
          debugPrint(darkModeProvider.darkMode.toString());
          return darkModeProvider.darkMode == DarkMode.auto
              ? MaterialApp(
                  title: 'Cloudreve',
                  theme: ThemeData(
                    primarySwatch: Colors.blue,
                  ),
                  darkTheme: ThemeData.dark(),
                  home: FutureBuilder(
                    future: _future(),
                    builder:
                        (BuildContext context, AsyncSnapshot<Widget> snapshot) {
                      if (snapshot.hasData) {
                        return snapshot.data!;
                      } else {
                        return LoadingHome();
                      }
                    },
                  ),
                )
              : MaterialApp(
                  title: 'Cloudreve',
                  theme: darkModeProvider.darkMode == DarkMode.open
                      ? ThemeData.dark()
                      : ThemeData(
                          primarySwatch: Colors.blue,
                        ),
                  home: FutureBuilder(
                    future: _future(),
                    builder:
                        (BuildContext context, AsyncSnapshot<Widget> snapshot) {
                      if (snapshot.hasData) {
                        return snapshot.data!;
                      } else {
                        return LoadingHome();
                      }
                    },
                  ),
                );
        },
      ),
    );
  }

  Future<Widget> _future() async {
    bool storageStatus = await Permission.storage.isGranted;
    bool notificationStatus = await Permission.notification.isDenied;
    HttpUtil.dio.interceptors.add(CookieManager(HttpUtil.cookieJar));

    if (!storageStatus) {
      await Permission.storage.request().isGranted;
    }
    if (!notificationStatus) {
      await Permission.notification.request().isGranted;
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getBool("isLogin") != null &&
        prefs.getBool("isRemember") != null &&
        (prefs.getBool("isRemember")!)) {
      String username = prefs.getString("username")!;
      String password = prefs.getString("password")!;

      //重新登录刷新登录信息
      Response loginResp = await session(username, password);
      Response storageResp = await getStorage();

      LoginResult loginResult = LoginResult.fromJson(loginResp.data);
      Storage storage = Storage.fromJson(storageResp.data['data']);
      if (loginResult.code == 0) {
        return MainHome(
          userData: loginResult.data!,
          storage: storage,
        );
      } else {
        prefs.clear();
        return LoginHome();
      }
    } else {
      return LoginHome();
    }
  }
}
