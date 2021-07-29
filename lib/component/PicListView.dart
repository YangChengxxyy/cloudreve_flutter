import 'package:cloudreve/entity/File.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';

class PicListView extends StatelessWidget {
  final List<File> list;

  PicListView({Key? key, required this.list}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.builder(
        gridDelegate:
            SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (context, i) {
          return FutureImage(file: list[i]);
        });
  }
}

class FutureImage extends StatelessWidget {
  final File file;

  FutureImage({Key? key, required this.file}) : super(key: key);

  Future<Response> _getImage() async {

    return await HttpUtil.http.get("/api/v3/file/thumb/${file.id}",
        options: Options(responseType: ResponseType.bytes));
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: _getImage(),
        builder: (BuildContext context, AsyncSnapshot<Response> snapshot) {
          if (snapshot.hasData) {
            return Image.memory(snapshot.data!.data);
          } else if (snapshot.hasError) {
            return Text("网络出错");
          } else {
            return Text("加载中");
          }
        });
  }
}
