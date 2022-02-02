import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/entity/Result.dart';
import 'package:cloudreve/entity/ShareData.dart';
import 'package:cloudreve/utils/GeneratePassword.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:cloudreve/view/Home.dart';
import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:url_launcher/url_launcher.dart';

class Share extends StatefulWidget {
  const Share({Key? key}) : super(key: key);

  @override
  _ShareState createState() => _ShareState();
}

class _ShareState extends State<Share> {
  ShareOrderBy _orderBy = shareOrderByList[0];

  int _page = 1;

  ShareData? _shareData;

  static final List<ShareOrderBy> shareOrderByList = <ShareOrderBy>[
    new ShareOrderBy("DESC", "created_at", "创建日期由晚到早"),
    new ShareOrderBy("ASC", "created_at", "创建日期由早到晚"),
    new ShareOrderBy("DESC", "downloads", "下载次数由大到小"),
    new ShareOrderBy("ASC", "downloads", "下载次数由小到大"),
    new ShareOrderBy("DESC", "views", "浏览次数由大到小"),
    new ShareOrderBy("ASC", "views", "浏览次数由小到大"),
  ];

  @override
  Widget build(BuildContext context) {
    _getShare();
    return Scaffold(
      appBar: AppBar(
        title: Text("我的分享"),
        actions: [
          PopupMenuButton<ShareOrderBy>(
            initialValue: _orderBy,
            child: Row(
              children: [
                Text(_orderBy.name),
                Icon(Icons.arrow_drop_down_rounded),
              ],
            ),
            itemBuilder: (context) {
              return shareOrderByList.map((e) {
                return PopupMenuItem<ShareOrderBy>(
                  value: e,
                  child: Text(e.name),
                );
              }).toList();
            },
            onSelected: (e) {
              setState(() {
                _orderBy = e;
              });
            },
          ),
        ],
      ),
      body: FutureBuilder(
        future: _getShare(),
        builder: (BuildContext context, AsyncSnapshot<ShareData> snapshot) {
          if (snapshot.hasData) {
            ShareData shareData = snapshot.data!;
            _shareData = shareData;
            return shareData.items.length == 0
                ? Center(
                    child: Text("暂无数据"),
                  )
                : Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10),
                    child: ListView(
                      children: shareData.items
                          .map(
                            (e) => Card(
                              child: Column(
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(14),
                                        child: _getIcon(e),
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Padding(
                                            padding: EdgeInsets.symmetric(
                                                vertical: 4),
                                            child: Text(
                                              e.source.name,
                                              textAlign: TextAlign.start,
                                              style: TextStyle(
                                                fontSize: 18,
                                              ),
                                            ),
                                          ),
                                          Row(
                                            children: [
                                              Text(
                                                getFormatDate(e.createDate),
                                                textAlign: TextAlign.start,
                                                style: TextStyle(
                                                  color: Colors.grey[700],
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsets.symmetric(
                                                    horizontal: 10),
                                                child: e.remainDownloads == 1 ||
                                                        e.expire < -1
                                                    ? const Text("已失效")
                                                    : const Text(""),
                                              ),
                                            ],
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                  Divider(
                                    height: 0,
                                  ),
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: _getButtomIcons(e),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                  );
          } else {
            return Center(
              child: Text("Loading……"),
            );
          }
        },
      ),
    );
  }

  Future<ShareData> _getShare() async {
    Result result = Result.fromJson((await getShare(
            page: _page, order: _orderBy.order, orderBy: _orderBy.orderBy))
        .data);
    ShareData shareData = ShareData.fromJson(result.data);
    return shareData;
  }

  List<Widget> _getButtomIcons(Items items) {
    var buttomList = <Widget>[
      IconButton(
        onPressed: () async {
          await launch(HttpUtil.baseUrl + "/s/${items.key}");
        },
        icon: Icon(Icons.open_in_new),
        color: Colors.grey[700],
        tooltip: "打开",
      ),
    ];
    if (items.password == "") {
      buttomList.add(IconButton(
        onPressed: () async {
          await editShare(items.key,
              prop: "password", value: generatePassword(6, isSpecial: false));
          setState(() {
            _orderBy = _orderBy;
          });
        },
        icon: Icon(Icons.lock_open),
        color: Colors.grey[700],
        tooltip: "变更为私密分享",
      ));
    } else {
      buttomList.add(IconButton(
        onPressed: () async {
          await editShare(items.key, prop: "password", value: "");
          setState(() {
            _orderBy = _orderBy;
          });
        },
        icon: Icon(Icons.lock),
        color: Colors.grey[700],
        tooltip: "变更为公开分享",
      ));
      buttomList.add(IconButton(
        onPressed: () {
          showDialog(
              context: context,
              builder: (BuildContext dialogContext) {
                return AlertDialog(
                  title: Text("分享密码"),
                  content: Text(items.password),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Clipboard.setData(
                          ClipboardData(
                            text: items.password,
                          ),
                        );
                        Navigator.pop(dialogContext);
                      },
                      child: Text("复制"),
                    ),
                  ],
                );
              });
        },
        icon: Icon(Icons.vpn_key),
        color: Colors.grey[700],
        tooltip: "查看密码",
      ));
    }
    if (items.preview) {
      buttomList.add(IconButton(
        onPressed: () async {
          await editShare(items.key, prop: "preview_enabled", value: false);
          setState(() {
            _orderBy = _orderBy;
          });
        },
        icon: Icon(Icons.visibility),
        color: Colors.grey[700],
        tooltip: "禁止预览",
      ));
    } else {
      buttomList.add(IconButton(
        onPressed: () async {
          await editShare(items.key, prop: "preview_enabled", value: true);
          setState(() {
            _orderBy = _orderBy;
          });
        },
        icon: Icon(Icons.visibility_off),
        color: Colors.grey[700],
        tooltip: "允许预览",
      ));
    }
    buttomList.add(IconButton(
      onPressed: () async {
        await deleteShare(items.key);
        setState(() {
          _orderBy = _orderBy;
        });
      },
      icon: Icon(Icons.delete),
      color: Colors.grey[700],
      tooltip: "取消分享",
    ));
    return buttomList;
  }

  static Icon _getIcon(Items items) {
    double size = 44;
    Icon icon = Icon(
      Icons.file_present,
      color: Colors.grey,
      size: size,
    );
    if (items.isDir) {
      icon = Icon(
        Icons.folder,
        color: Colors.pink,
        size: size,
      );
    } else {
      if (imageRex.hasMatch(items.source.name)) {
        icon = Icon(
          Icons.image,
          color: Colors.red,
          size: size,
        );
      } else if (pdfRex.hasMatch(items.source.name)) {
        icon = Icon(
          Icons.picture_as_pdf,
          color: Colors.red,
          size: size,
        );
      } else if (zipRegex.hasMatch(items.source.name)) {
        icon = Icon(
          Icons.archive,
          color: Colors.grey,
          size: size,
        );
      } else if (wordRegex.hasMatch(items.source.name)) {
        icon = Icon(
          Icons.book,
          color: Colors.grey,
          size: size,
        );
      } else if (apkRegex.hasMatch(items.source.name)) {
        icon = Icon(
          Icons.android,
          color: Colors.green,
          size: size,
        );
      }
    }
    return icon;
  }
}

class ShareOrderBy {
  String order;
  String orderBy;
  String name;
  ShareOrderBy(this.order, this.orderBy, this.name);
}
