import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/utils/Service.dart';
import 'package:cloudreve/view/Home.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class CustomSearchDelegate extends SearchDelegate<String> {
  void Function(MFile) resultCallback;

  CustomSearchDelegate({required this.resultCallback});

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
    return FutureBuilder(
      future: search(query),
      builder: (BuildContext _, AsyncSnapshot<Response> snapshot) {
        if (snapshot.hasData) {
          Response response = snapshot.data!;
          var fileList = MFile.getFileList(response.data['data']["objects"]);
          if (fileList.length == 0) {
            return Center(
              child: Text("没有结果"),
            );
          } else {
            return Padding(
              padding: EdgeInsets.symmetric(horizontal: 10),
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
        } else {
          return Center(
            child: Text("loading……"),
          );
        }
      },
    );
  }

  @override
  Widget buildSuggestions(BuildContext context) {
    return Center();
  }

  Widget _buildItem(BuildContext context, MFile file) {
    Icon icon = Icon(Icons.file_present);

    if (file.type == "dir") {
      icon = Icon(Icons.folder);
    } else {
      if (imageRex.hasMatch(file.name)) {
        icon = Icon(Icons.image);
      } else if (pdfRex.hasMatch(file.name)) {
        icon = Icon(
          Icons.picture_as_pdf,
          color: Colors.red,
        );
      } else if (zipRegex.hasMatch(file.name)) {
        icon = Icon(Icons.archive);
      } else if (wordRegex.hasMatch(file.name)) {
        icon = Icon(Icons.book);
      } else if (apkRegex.hasMatch(file.name)) {
        icon = Icon(
          Icons.android,
          color: Colors.green,
        );
      }
    }

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
    );
  }
}
