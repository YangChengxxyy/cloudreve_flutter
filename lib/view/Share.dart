import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/entity/ShareData.dart';
import 'package:cloudreve/utils/GlobalSetting.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:cloudreve/utils/cloudreve_repository.dart';
import 'package:cloudreve/view/Home.dart';
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

  ShareData? _shareData;

  static final List<ShareOrderBy> shareOrderByList = <ShareOrderBy>[
    ShareOrderBy("desc", "id", "创建日期由晚到早"),
    ShareOrderBy("asc", "id", "创建日期由早到晚"),
    ShareOrderBy("desc", "downloads", "下载次数由大到小"),
    ShareOrderBy("asc", "downloads", "下载次数由小到大"),
    ShareOrderBy("desc", "views", "浏览次数由大到小"),
    ShareOrderBy("asc", "views", "浏览次数由小到大"),
  ];

  @override
  Widget build(BuildContext context) {
    _getShare();
    double maxWidth = MediaQuery.of(context).size.width;
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
            return _shareData!.items.length == 0
                ? Center(
                    child: Text("暂无数据"),
                  )
                : NotificationListener(
                    child: ListView(
                      padding: EdgeInsets.symmetric(horizontal: paddingNum),
                      children: _shareData!.items
                          .map(
                            (e) => Card(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Row(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    mainAxisSize: MainAxisSize.min,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.all(14),
                                        child: _getIcon(e),
                                      ),
                                      Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Row(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.fromLTRB(
                                                    0, 4, 4, 4),
                                                child: ConstrainedBox(
                                                  constraints: BoxConstraints(
                                                      maxWidth: maxWidth -
                                                          leftIconSize -
                                                          14 * 2 -
                                                          paddingNum * 2 -
                                                          8 -
                                                          4),
                                                  child: Text(
                                                    e.source.name,
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.start,
                                                    maxLines: 1,
                                                    style: TextStyle(
                                                      fontSize: 18,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
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
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 10),
                                                child: e.expired
                                                    ? const Text("已失效")
                                                    : const SizedBox.shrink(),
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
                                    children: _getButtonIcons(e),
                                  ),
                                ],
                              ),
                            ),
                          )
                          .toList(),
                    ),
                    onNotification: (notification) {
                      switch (notification.runtimeType) {
                        case OverscrollNotification:
                          var noti = notification as OverscrollNotification;
                          if (noti.metrics.pixels ==
                              noti.metrics.maxScrollExtent) {}
                          break;
                      }
                      return true;
                    },
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
    final result = await CloudreveRepository.fetchMyShares(
      pageSize: 50,
      orderBy: _orderBy.orderBy,
      orderDirection: _orderBy.order,
    );
    final shareData = ShareData.fromApi(
      result.shares,
      pagination: result.pagination,
    );
    return shareData;
  }

  List<Widget> _getButtonIcons(ShareItems items) {
    final baseUrl = HttpUtil.dio.options.baseUrl;
    final trimmedBase = baseUrl.endsWith('/')
        ? baseUrl.substring(0, baseUrl.length - 1)
        : baseUrl;
    final shareUrl = items.url ?? '$trimmedBase/s/${items.key}';
    final buttons = <Widget>[
      IconButton(
        onPressed: () async {
          final launched = await launchUrl(
            Uri.parse(shareUrl),
            mode: LaunchMode.externalApplication,
          );
          if (!launched && mounted) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('无法打开分享链接')),
            );
          }
        },
        icon: const Icon(Icons.open_in_new),
        color: Colors.grey[700],
        tooltip: "打开",
      ),
      IconButton(
        onPressed: () {
          Clipboard.setData(ClipboardData(text: shareUrl));
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('链接已复制')),
          );
        },
        icon: const Icon(Icons.link),
        color: Colors.grey[700],
        tooltip: "复制链接",
      ),
    ];

    if (items.password.isNotEmpty) {
      buttons.add(
        IconButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext dialogContext) {
                return AlertDialog(
                  title: const Text("分享密码"),
                  content: Text(items.password),
                  actions: [
                    TextButton(
                      onPressed: () {
                        Clipboard.setData(
                          ClipboardData(text: items.password),
                        );
                        Navigator.pop(dialogContext);
                      },
                      child: const Text("复制"),
                    ),
                  ],
                );
              },
            );
          },
          icon: const Icon(Icons.vpn_key),
          color: Colors.grey[700],
          tooltip: "查看密码",
        ),
      );
    }

    buttons.add(
      IconButton(
        onPressed: () async {
          final success = await CloudreveRepository.deleteShare(items.key);
          if (success) {
            setState(() {});
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('分享已删除')),
            );
          } else {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(content: Text('删除失败')),
            );
          }
        },
        icon: const Icon(Icons.delete),
        color: Colors.grey[700],
        tooltip: "取消分享",
      ),
    );

    return buttons;
  }

  static double leftIconSize = 44;

  static Icon _getIcon(ShareItems items) {
    Icon icon = Icon(
      Icons.file_present,
      color: Colors.grey,
      size: leftIconSize,
    );
    if (items.isDir) {
      icon = Icon(
        Icons.folder,
        color: Colors.pink,
        size: leftIconSize,
      );
    } else {
      if (imageRex.hasMatch(items.source.name)) {
        icon = Icon(
          Icons.image,
          color: Colors.red,
          size: leftIconSize,
        );
      } else if (pdfRex.hasMatch(items.source.name)) {
        icon = Icon(
          Icons.picture_as_pdf,
          color: Colors.red,
          size: leftIconSize,
        );
      } else if (zipRegex.hasMatch(items.source.name)) {
        icon = Icon(
          Icons.archive,
          color: Colors.grey,
          size: leftIconSize,
        );
      } else if (wordRegex.hasMatch(items.source.name)) {
        icon = Icon(
          Icons.book,
          color: Colors.grey,
          size: leftIconSize,
        );
      } else if (apkRegex.hasMatch(items.source.name)) {
        icon = Icon(
          Icons.android,
          color: Colors.green,
          size: leftIconSize,
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
