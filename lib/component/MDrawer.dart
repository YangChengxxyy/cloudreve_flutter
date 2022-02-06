import 'package:cloudreve/app/LoginApp.dart';
import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/entity/Storage.dart';
import 'package:cloudreve/utils/CacheUtil.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:cloudreve/view/Share.dart';
import 'package:cloudreve/view/WebDav.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MDrawer extends StatelessWidget {
  final UserData userData;
  final Storage storage;

  MDrawer({Key? key,required this.userData,required this.storage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        children: <Widget>[
          DrawerHeader(
            decoration: BoxDecoration(
              color: Colors.blue,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                FutureBuilder(
                  future: avatar(userData.id),
                  builder: (BuildContext context, AsyncSnapshot snapshot) {
                    if (snapshot.hasData) {
                      return Container(
                        alignment: Alignment.topCenter,
                        padding: EdgeInsets.only(bottom: 15),
                        child: ClipOval(
                          child: Image.memory(
                            snapshot.data!.data,
                            fit: BoxFit.cover,
                            width: 75,
                            height: 75,
                          ),
                        ),
                      );
                    } else {
                      return Container(
                        child: SizedBox(
                          child: CircularProgressIndicator(),
                          height: 50.0,
                          width: 50.0,
                        ),
                        alignment: Alignment.center,
                        height: 75,
                        width: 75,
                      );
                    }
                  },
                ),
                Text(
                  userData.nickname,
                  style: TextStyle(fontSize: 20, color: Colors.black45),
                )
              ],
            ),
          ),
          ListTile(
            leading: Icon(Icons.storage),
            textColor: Colors.grey,
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "存储空间",
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 5),
                  child: LinearProgressIndicator(
                    value: (storage.used.toDouble() / storage.total.toDouble()),
                    backgroundColor: Colors.grey,
                    valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                  ),
                ),
                Text(
                  "${MFile.getFileSize(storage.used.toDouble())}/${MFile.getFileSize(storage.total.toDouble())}",
                )
              ],
            ),
          ),
          Divider(),
          ListTile(
            leading: Icon(Icons.share),
            textColor: Colors.grey,
            title: Text("我的分享"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return Share();
              }));
            },
          ),
          ListTile(
            leading: Icon(Icons.phonelink),
            textColor: Colors.grey,
            title: Text("WebDav"),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return WebDav();
              }));
            },
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            leading: Icon(Icons.clear_all),
            textColor: Colors.grey,
            title: Text("清除缓存"),
            onTap: () async {
              await CacheUtil.clear();
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text("清除缓存完成"),
                ),
              );
            },
          ),
          Divider(
            height: 0,
          ),
          ListTile(
            leading: Icon(Icons.logout),
            textColor: Colors.grey,
            title: Text('退出登录'),
            onTap: () async {
              await deleteSession();

              SharedPreferences prefs = await SharedPreferences.getInstance();
              await prefs.clear();
              Navigator.of(context).pushAndRemoveUntil(
                  new MaterialPageRoute(builder: (context) => new LoginApp()),
                  (route) => route == null);
            },
          ),
        ],
      ),
    );
  }
}
