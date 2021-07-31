import 'package:cloudreve/app/LoginApp.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Card(
          child: ListTile(
            leading: Icon(Icons.logout),
            title: Text('退出登录'),
            onTap: () async {
              await HttpUtil.dio.delete("/api/v3/user/session");

              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.clear();
              Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(builder: (context) => new LoginApp()),
                  (route) => route == null);
            },
          ),
        ),
      ],
    );
  }
}
