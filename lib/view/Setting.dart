import 'dart:io';
import 'dart:typed_data';

import 'package:cloudreve/component/RenameNickDialog.dart';
import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/utils/CacheUtil.dart';
import 'package:cloudreve/utils/GlobalSetting.dart';
import 'package:cloudreve/utils/cloudreve_repository.dart';
import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';

class Setting extends StatelessWidget {
  final UserData userData;
  final void Function(bool) refresh;
  Setting({Key? key, required this.userData, required this.refresh});

  Future<Uint8List> _avatar() async {
    String cachePath = (await getTemporaryDirectory()).path + "/";
    String avatarPath = cachePath + cacheAvatarPath + "s-${userData.id}";
    File file = File(avatarPath);
    if (file.existsSync()) {
      DateTime time = file.lastModifiedSync();
      DateTime now = DateTime.now();
      time = time.add(Duration(days: 3));
      if (time.isBefore(now)) {
        try {
          final response = await CloudreveRepository.fetchAvatar(
            userId: userData.id,
          );
          final data = response.data ?? Uint8List.fromList(const [1]);
          final file = await File(avatarPath).create();
          file.writeAsBytesSync(data);
          return data;
        } catch (e) {
          return Uint8List.fromList([1]);
        }
      }
      return file.readAsBytesSync();
    } else {
      try {
        final response = await CloudreveRepository.fetchAvatar(
          userId: userData.id,
        );
        final data = response.data ?? Uint8List.fromList([1]);
        final file = await File(avatarPath).create();
        file.writeAsBytesSync(data);
        return data;
      } catch (e) {
        return Uint8List.fromList([1]);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: paddingNum),
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
                  leading: FutureBuilder(
                    future: _avatar(),
                    builder: (BuildContext context,
                        AsyncSnapshot<Uint8List> snapshot) {
                      if (snapshot.hasData) {
                        return ClipOval(
                          child: Image.memory(
                            snapshot.data!,
                            fit: BoxFit.cover,
                            width: 24,
                            height: 24,
                            errorBuilder: (BuildContext context, Object o,
                                StackTrace? stackTrace) {
                              return Icon(
                                Icons.person,
                              );
                            },
                          ),
                        );
                      } else {
                        return SizedBox(
                          child: CircularProgressIndicator(),
                          height: 24.0,
                          width: 24.0,
                        );
                      }
                    },
                  ),
                  title: Text("头像"),
                  onTap: () async {
                    showDialog(
                      context: context,
                      builder: (buildContext) {
                        return AlertDialog(
                          title: Text("修改头像"),
                          contentPadding:
                              const EdgeInsets.fromLTRB(0, 20.0, 0, 24.0),
                          content: Column(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              ListTile(
                                leading: Icon(
                                  Icons.crop_original,
                                  color: Colors.blue,
                                ),
                                title: Text("从文件上传"),
                                onTap: () async {
                                  final result =
                                      await FilePicker.platform.pickFiles();
                                  if (result != null &&
                                      result.files.isNotEmpty &&
                                      result.files.first.path != null) {
                                    final filePath = result.files.first.path!;
                                    final fileBytes =
                                        await File(filePath).readAsBytes();
                                    final response = await CloudreveRepository
                                        .uploadAvatarBytes(fileBytes);
                                    Navigator.pop(buildContext);
                                    if (response != null &&
                                        (response.msg?.isEmpty ?? true)) {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        const SnackBar(
                                          content: Text("上传成功"),
                                        ),
                                      );
                                      CacheUtil.clear(cacheAvatarPath);
                                      refresh(true);
                                    } else {
                                      ScaffoldMessenger.of(context)
                                          .showSnackBar(
                                        SnackBar(
                                          content:
                                              Text(response?.msg ?? "上传失败"),
                                        ),
                                      );
                                    }
                                  }
                                },
                              ),
                              ListTile(
                                leading: Icon(
                                  Icons.fingerprint,
                                  color: Colors.yellow,
                                ),
                                title: Text("使用 Gravatar 头像 "),
                                onTap: () async {
                                  final response = await CloudreveRepository
                                      .setAvatarFromGravatar();
                                  Navigator.pop(buildContext);
                                  if (response != null &&
                                      (response.msg?.isEmpty ?? true)) {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      const SnackBar(
                                        content: Text("设置成功"),
                                      ),
                                    );
                                    CacheUtil.clear(cacheAvatarPath);
                                    refresh(true);
                                  } else {
                                    ScaffoldMessenger.of(context).showSnackBar(
                                      SnackBar(
                                        content: Text(response?.msg ?? "设置失败"),
                                      ),
                                    );
                                  }
                                },
                              ),
                            ],
                          ),
                        );
                      },
                    );
                  },
                ),
                Divider(
                  height: 0,
                ),
                ListTile(
                  leading: Icon(Icons.contacts_rounded),
                  title: Text("UID"),
                  trailing: Text(userData.id),
                ),
                Divider(
                  height: 0,
                ),
                ListTile(
                  leading: Icon(Icons.account_box),
                  title: Text('昵称'),
                  trailing: Text(userData.nickname),
                  onTap: () {
                    showDialog(
                      context: context,
                      builder: (_) {
                        return RenameNickDialog(
                            nick: userData.nickname, refresh: refresh);
                      },
                    );
                  },
                ),
                Divider(
                  height: 0,
                ),
                ListTile(
                  leading: Icon(Icons.email),
                  title: Text("Email"),
                  trailing: Text(userData.userName),
                ),
                Divider(
                  height: 0,
                ),
                ListTile(
                  leading: Icon(Icons.group),
                  title: Text('用户组'),
                  trailing: Text(userData.group!.name),
                ),
                Divider(
                  height: 0,
                ),
                ListTile(
                  leading: Icon(Icons.calendar_today),
                  title: Text("注册时间"),
                  trailing: Text(getFormatDate(userData.createdAt)),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
