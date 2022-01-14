import 'package:cloudreve/app/LoginApp.dart';
import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:cloudreve/view/SettingData.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Setting extends StatelessWidget {
  late UserData _userData;
  Setting({Key? key, required UserData userData}) {
    _userData = userData;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Text(
              "个人资料",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
            ),
            constraints:
                BoxConstraints(minWidth: double.infinity, minHeight: 30),
          ),
          Card(
            child: Column(
              children: [
                ListTile(
                  leading: Icon(Icons.contacts_rounded),
                  title: Text("UID"),
                  trailing: FutureBuilder(
                    future: setting(),
                    builder: (BuildContext context,
                        AsyncSnapshot<Response> snapshot) {
                      if (snapshot.hasData) {
                        SettingData settingData =
                            SettingData.fromJson(snapshot.data!.data["data"]);
                        return Text(settingData.uid.toString());
                      } else {
                        return Text("Loading");
                      }
                    },
                  ),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text('昵称'),
                  trailing: Text(_userData.nickname),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                  trailing: Text(_userData.userName),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.group),
                  title: Text('用户组'),
                  trailing: Text(_userData.group!.name),
                  onTap: () {},
                ),
                Divider(),
                ListTile(
                  leading: Icon(Icons.calendar_today),
                  title: Text("注册时间"),
                  trailing: Text(getFormatDate(_userData.createdAt)),
                  onTap: () {},
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
