import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/utils/GlobalSetting.dart';
import 'package:cloudreve/utils/cloudreve_repository.dart';
import 'package:cloudreve/view/Home.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  void Function(MFile) resultCallback;
  void Function(String path) gotoPath;

  CustomSearchDelegate({required this.resultCallback, required this.gotoPath}) {
    query = "";
  }

  @override
  List<Widget> buildActions(BuildContext context) {
    return [
      IconButton(
        icon: Icon(
          Icons.clear,
        ),
        onPressed: () {
          query = '';
        },
      )
    ];
  }

  @override
  Widget buildLeading(BuildContext context) {
    return IconButton(
      icon: Icon(
        Icons.arrow_back,
        color: Colors.blue,
      ),
      onPressed: () {
        close(context, '');
      },
    );
  }

  @override
  Widget buildResults(BuildContext context) {
    return FutureBuilder<FileListing>(
      future: CloudreveRepository.search(query),
      builder:
          (BuildContext _, AsyncSnapshot<FileListing> snapshot) {
        if (snapshot.hasError) {
          return Center(
            child: Text("搜索失败"),
          );
        }
        if (snapshot.hasData) {
          final listing = snapshot.data!;
          final fileList = List<MFile>.from(listing.files);
          if (fileList.isEmpty) {
            return Center(
              child: Text("没有结果"),
            );
          } else {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: paddingNum),
              child: Scrollbar(
                child: ListView.builder(
                  itemBuilder: (context, index) {
                    return _buildItem(context, fileList[index]);
                  },
                  itemCount: fileList.length,
                ),
              ),
            );
          }
        }
        return Center(
          child: Text("loading……"),
        );
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return buildResults(context);
  }

  Widget _buildItem(BuildContext context, MFile file) {
    Icon icon = getIcon(file);

    return InkWell(
      child: Card(
        child: ListTile(
          leading: icon,
          title: Text(file.name),
        ),
      ),
      onTap: () {
        Navigator.pop(context);
        resultCallback(file);
      },
      onLongPress: () {
        _fileLongPress(context, file);
      },
    );
  }

  /// 长按事件
  void _fileLongPress(
    BuildContext context,
    MFile file, {
    bool del = false,
    bool rename = false,
    bool share = false,
    bool open = true,
    bool download = false,
  }) {
    showDialog(
      context: context,
      builder: (dialogContext) {
        return AlertDialog(
          actions: [
            Offstage(
              offstage: !del,
              child: IconButton(
                icon: Icon(Icons.delete),
                color: Colors.grey,
                tooltip: "删除",
                onPressed: () async {
                  final uri = file.path;
                  final success = uri.isNotEmpty &&
                      await CloudreveRepository.deleteFiles(
                        fileUris: [uri],
                      );
                  if (success) {
                    ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(
                        content: Text("删除成功"),
                      ),
                    );
                    Navigator.pop(dialogContext);
                  }
                },
              ),
            ),
            Offstage(
              offstage: !rename,
              child: IconButton(
                icon: Icon(
                  Icons.border_color,
                ),
                color: Colors.grey,
                tooltip: "重命名",
                onPressed: () {},
              ),
            ),
            Offstage(
              offstage: !share,
              child: IconButton(
                icon: Icon(Icons.share),
                tooltip: "分享",
                color: Colors.grey,
                onPressed: () {},
              ),
            ),
            Offstage(
              offstage: !open,
              child: IconButton(
                icon: Icon(Icons.open_in_new),
                tooltip: "打开",
                color: Colors.grey,
                onPressed: () {
                  Navigator.pop(dialogContext);
                  Navigator.pop(context);
                  resultCallback(file);
                },
              ),
            ),
            Offstage(
              offstage: !download,
              child: IconButton(
                icon: Icon(Icons.download),
                tooltip: "下载",
                color: Colors.grey,
                onPressed: () async {},
              ),
            ),
          ],
         content: Column(
           crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisSize: MainAxisSize.min,
           children: <Widget>[
             Text("文件名:\t\t${file.name}"),
             Text("文件大小:\t\t${MFile.getFileSize(file.size.toDouble())}"),
              Text("上传时间:\t\t${file.getFormatDate()}"),
              Text(
                "路径:\t\t${file.path}",
                style: TextStyle(color: Colors.grey[700]),
              )
            ],
          ),
        );
      },
    );
  }
}
