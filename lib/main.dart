import 'dart:io';

import 'package:cloudreve/app/LoadingHome.dart';
import 'package:cloudreve/app/LoginHome.dart';
import 'package:cloudreve/app/MainHome.dart';
import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/Storage.dart';
import 'package:cloudreve/utils/DarkModeProvider.dart';
import 'package:cloudreve/utils/GlobalSetting.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:cloudreve/utils/cloudreve_repository.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
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
    HttpUtil.dio.interceptors.add(CookieManager(HttpUtil.cookieJar));
    bool nonfictionStatus = await Permission.notification.isGranted;
    if (!nonfictionStatus) {
      await Permission.notification.request().isGranted;
    }
    bool storageStatus = await Permission.storage.isGranted;
    if (!storageStatus) {
      await Permission.storage.request().isGranted;
    }
    SharedPreferences pres = await SharedPreferences.getInstance();

    Directory temp = await getTemporaryDirectory();
    Directory imageTemp = Directory(temp.path + cacheImagePath);
    Directory thumbTemp = Directory(temp.path + cacheThumbPath);
    Directory avatarTemp = Directory(temp.path + cacheAvatarPath);
    if (!imageTemp.existsSync()) {
      imageTemp.createSync();
    }

    if (!thumbTemp.existsSync()) {
      thumbTemp.createSync();
    }

    if (!avatarTemp.existsSync()) {
      avatarTemp.createSync();
    }

    if (pres.getBool(isLoginKey) != null &&
        pres.getBool(isLoginKey)! &&
        pres.getBool(isRememberKey) != null &&
        (pres.getBool(isRememberKey)!)) {
      String username = pres.getString(usernameKey)!;
      String password = pres.getString(passwordKey)!;

      SharedPreferences prefs = await SharedPreferences.getInstance();
      List<String>? urls = prefs.getStringList(urlsKey);
      int? index = prefs.getInt(selectedIndexKey);

      if (urls != null && index != null && index != 0) {
        HttpUtil.dio.options.baseUrl = urls[index - 1];
      }

      //重新登录刷新登录信息
      LoginResult loginResult = await CloudreveRepository.signIn(
        email: username,
        password: password,
      );
      Storage storage =
          await CloudreveRepository.fetchStorage() ?? Storage(0, 0, 0);
      if (loginResult.isSuccess && loginResult.data != null) {
        return MainHome(
          userData: loginResult.data!.user,
          storage: storage,
        );
      } else {
        pres.clear();
        return LoginHome();
      }
    } else {
      return LoginHome();
    }
  }
}
