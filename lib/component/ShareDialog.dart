import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ShareDialog extends StatefulWidget {
  late final BuildContext _fatherContext;
  late final BuildContext _parentFatherContext;
  late final MFile _file;

  ShareDialog(
      {Key? key,
      required BuildContext fatherContext,
      required BuildContext parentFatherContext,
      required MFile file})
      : super(key: key) {
    _fatherContext = fatherContext;
    _parentFatherContext = parentFatherContext;
    _file = file;
  }

  @override
  _ShareDialogState createState() => _ShareDialogState();
}

class _ShareDialogState extends State<ShareDialog> {
  final _passwordController = TextEditingController();

  bool _isPassword = false;

  bool _isExpive = false;

  bool _isPreview = false;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static var _countList = <int>[1, 2, 3, 4, 5, 20, 50, 100];

  static var _timeList = <TimeString>[
    TimeString(5 * 60, "5分钟"),
    TimeString(1 * 60 * 60, "1小时"),
    TimeString(1 * 24 * 60 * 60, "1天"),
    TimeString(7 * 24 * 60 * 60, "7天"),
    TimeString(30 * 24 * 60 * 60, "30天"),
  ];

  int _downloads = _countList[0];

  TimeString _expive = _timeList[2];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: SimpleDialog(
        title: Text("创建分享链接"),
        contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        children: [
          CheckboxListTile(
            value: _isPassword,
            title: Row(
              children: [
                Icon(Icons.lock_outline),
                Text("使用密码保护"),
              ],
            ),
            onChanged: (value) {
              setState(() {
                _isPassword = value!;
              });
            },
          ),
          Offstage(
            offstage: !_isPassword,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: TextFormField(
                controller: _passwordController,
                keyboardType: TextInputType.visiblePassword,
                obscureText: true,
                autofocus: false,
                decoration: InputDecoration(
                  labelText: "分享密码",
                  border: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.grey,
                      width: 1,
                    ),
                  ),
                  isDense: true,
                ),
                validator: (v) {
                  if (v == null) {
                    return null;
                  }
                  return v.trim().length > 0 ? null : "分享密码不能为空";
                },
              ),
            ),
          ),
          CheckboxListTile(
            value: _isExpive,
            title: Row(
              children: [
                Icon(Icons.timer),
                Text("自动过期"),
              ],
            ),
            onChanged: (value) {
              setState(() {
                _isExpive = value!;
              });
            },
          ),
          Offstage(
            offstage: !_isExpive,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: PopupMenuButton<int>(
                      initialValue: _downloads,
                      child: Row(
                        children: [
                          Text('$_downloads次'),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      ),
                      itemBuilder: (context) {
                        return _countList.map((count) {
                          return PopupMenuItem<int>(
                            value: count,
                            child: Text("$count次"),
                          );
                        }).toList();
                      },
                      onSelected: (c) async {
                        this.setState(() {
                          _downloads = c;
                        });
                      },
                    ),
                  ),
                  Text("或者"),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: PopupMenuButton<TimeString>(
                      initialValue: _expive,
                      child: Row(
                        children: [
                          Text(_expive.name),
                          Icon(Icons.arrow_drop_down_rounded),
                        ],
                      ),
                      itemBuilder: (context) {
                        return _timeList.map((time) {
                          return PopupMenuItem<TimeString>(
                            value: time,
                            child: Text(time.name),
                          );
                        }).toList();
                      },
                      onSelected: (t) async {
                        this.setState(() {
                          _expive = t;
                        });
                      },
                    ),
                  ),
                  Text("后过期")
                ],
              ),
            ),
          ),
          CheckboxListTile(
            value: _isPreview,
            title: Row(
              children: [
                Icon(Icons.remove_red_eye_outlined),
                Text("允许预览"),
              ],
            ),
            onChanged: (value) {
              setState(() {
                _isPreview = value!;
              });
            },
          ),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () async {
                  if (_isPassword) {
                    if (_formKey.currentState!.validate()) {
                      Response response = await newShare(
                          fileId: widget._file.id,
                          isDir: widget._file.type == "dir",
                          password: _isPassword ? _passwordController.text : "",
                          preview: _isPreview,
                          downloads: _isExpive ? _downloads : -1,
                          expive: _expive.seconds);
                      if (response.data["code"] == 0) {
                        Navigator.pop(widget._fatherContext);
                        Navigator.pop(widget._parentFatherContext);
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text("分享成功"),
                            duration: Duration(seconds: 1),
                          ),
                        );
                        showDialog(
                          context: context,
                          builder: (BuildContext lastContext) {
                            return AlertDialog(
                              title: Text("分享成功"),
                              content: SelectableText(
                                response.data["data"].toString(),
                                autofocus: true,
                              ),
                              actions: [
                                TextButton(
                                  onPressed: () {
                                    Clipboard.setData(
                                      ClipboardData(
                                        text: response.data["data"].toString(),
                                      ),
                                    );
                                    Navigator.pop(lastContext);
                                    ScaffoldMessenger.of(lastContext)
                                        .showSnackBar(
                                      SnackBar(
                                        content: Text("复制成功"),
                                        duration: Duration(seconds: 1),
                                      ),
                                    );
                                  },
                                  child: Text("复制"),
                                ),
                              ],
                            );
                          },
                        );
                      }
                    }
                  } else {
                    Response response = await newShare(
                        fileId: widget._file.id,
                        isDir: widget._file.type == "dir",
                        password: _isPassword ? _passwordController.text : "",
                        preview: _isPreview,
                        downloads: _isExpive ? _downloads : -1,
                        expive: _expive.seconds);
                    if (response.data["code"] == 0) {
                      Navigator.pop(widget._fatherContext);
                      Navigator.pop(widget._parentFatherContext);
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(
                          content: Text("分享成功"),
                        ),
                      );
                      showDialog(
                        context: context,
                        builder: (BuildContext lastContext) {
                          return AlertDialog(
                            title: Text("分享成功"),
                            content: SelectableText(
                              response.data["data"].toString(),
                              autofocus: true,
                            ),
                            actions: [
                              TextButton(
                                onPressed: () {
                                  Clipboard.setData(
                                    ClipboardData(
                                      text: response.data["data"].toString(),
                                    ),
                                  );
                                  Navigator.pop(lastContext);
                                  ScaffoldMessenger.of(lastContext)
                                      .showSnackBar(
                                    SnackBar(
                                      content: Text("复制成功"),
                                    ),
                                  );
                                },
                                child: Text("复制"),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  }
              },
              child: Text("确定"),
            ),
          )
        ],
      ),
    );
  }
}

class TimeString {
  int seconds;
  String name;
  TimeString(this.seconds, this.name);
}
