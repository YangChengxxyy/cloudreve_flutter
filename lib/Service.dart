import 'dart:io';

import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';

class Service {
  static Future<Response<dynamic>> getThumb(String fileId) async {
    return await HttpUtil.dio.get("/api/v3/file/thumb/$fileId",
        options: Options(responseType: ResponseType.bytes));
  }

  static Future<Response<dynamic>> getDownloadUrl(String fileId) async {
    return await HttpUtil.dio.put("/api/v3/file/download/$fileId");
  }

  static Future<Response<dynamic>> deleteItem(
      List<String> dirs, String fileId) async {
    return HttpUtil.dio.delete("/api/v3/object", data: {
      "dirs": dirs,
      "items": [fileId]
    });
  }

  static Future<Response<dynamic>> storage() {
    return HttpUtil.dio.get("/api/v3/user/storage");
  }

  static Future<Response<dynamic>> directory(String path) {
    return HttpUtil.dio.get('/api/v3/directory$path');
  }

  static Future<Response<dynamic>> addDirectory(dynamic data) {
    return HttpUtil.dio.put("/api/v3/directory", data: data);
  }

  static Future<Response<dynamic>> uploadFile(
      PlatformFile file, String path, void Function(int, int) onSendProgress) {
    var option = Options(
        method: "POST",
        contentType: "application/octet-stream",
        headers: {
          "x-filename": Uri.encodeComponent(file.name),
          "x-path": Uri.encodeComponent(path),
          HttpHeaders.contentLengthHeader: file.size
        },
        sendTimeout: 100000);
    return HttpUtil.dio.post("/api/v3/file/upload",
        options: option,
        data: file.readStream, onSendProgress: (process, total) {
      onSendProgress(process, total);
    });
  }

  static Future<Response<dynamic>> session(String userName, String password) {
    return HttpUtil.dio.post("/api/v3/user/session",
        data: {'userName': userName, 'Password': password, 'captchaCode': ''});
  }

  static Future<Response<dynamic>> avatar(String id) {
    return HttpUtil.dio.get("/api/v3/user/avatar/$id/l",
        options: Options(responseType: ResponseType.bytes));
  }

  static register(String userName, String password) {
    return HttpUtil.dio.post("/api/v3/user",
        data: {'userName': userName, 'Password': password, 'captchaCode': ''});
  }
}
