import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:cloudreve/view/Home.dart';
import 'package:cloudreve/view/Login.dart';
import 'package:cloudreve/view/Setting.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:flutter/material.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:shared_preferences/shared_preferences.dart';

void main() async {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.

  MyApp({Key? key}) : super(key: key);

  Future<Widget> _feture() async {
    bool status = await Permission.storage.isGranted;
    HttpUtil.http.interceptors.add(CookieManager(HttpUtil.cookieJar));
    if (!status) {
      await Permission.storage.request().isGranted;
    }
    SharedPreferences prefs = await SharedPreferences.getInstance();

    if (prefs.getBool("isLogin") != null) {
      String username = prefs.getString("username")!;
      String password = prefs.getString("password")!;

      Response logResp = await HttpUtil.http.post("/api/v3/user/session",
          data: {
            'userName': username,
            'Password': password,
            'captchaCode': ''
          });
      if (logResp.data['code'] == 0) {
        return Future.value((MainApp()));
      } else {
        prefs.clear();
        return Future.value((LoginApp()));
      }
    } else {
      return Future.value((LoginApp()));
    }
  }

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
        future: _feture(),
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
}

class LoadingApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          margin: EdgeInsets.only(top: 150 * 1.5),
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

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  int _selectedIndex = 0;
  String _path = "/";

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cloudreve'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        tooltip: 'Increment Counter',
        child: const Icon(Icons.add),
      ),
      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: const <Widget>[
      //       DrawerHeader(
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //         child: Text(
      //           'Drawer Header',
      //           style: TextStyle(
      //             color: Colors.white,
      //             fontSize: 24,
      //           ),
      //         ),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.message),
      //         title: Text('Messages'),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.account_circle),
      //         title: Text('Profile'),
      //       ),
      //       ListTile(
      //         leading: Icon(Icons.settings),
      //         title: Text('Settings'),
      //       ),
      //     ],
      //   ),
      // ),
      body: Center(
          child: <Widget>[
        Home(
          changePath: (String newPath) {
            setState(() {
              _path = newPath;
            });
          },
        ),
        Setting()
      ][_selectedIndex]),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '首页',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: '设置',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}
