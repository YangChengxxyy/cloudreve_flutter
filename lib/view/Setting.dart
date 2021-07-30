import 'package:cloudreve/entity/File.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:cloudreve/view/Login.dart';
import 'package:flutter/material.dart';

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
              await HttpUtil.http.delete("/api/v3/user/session");
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
