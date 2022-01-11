import 'dart:io';

import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';

class Service {
  /// 新建目录
  static Future<Response> addDirectory(dynamic data) {
    return HttpUtil.dio.put("/api/v3/directory", data: data);
  }

  /// 通过用户[id]获取头像缩略图
  static Future<Response> avatar(String id) {
    return HttpUtil.dio.get("/api/v3/user/avatar/$id/l",
        options: Options(responseType: ResponseType.bytes));
  }

  /// 通过[fileId][dirs]删除文件或目录
  static Future<Response> deleteItem(List<String> dirs, List<String> fileId) async {
    return HttpUtil.dio.delete("/api/v3/object", data: {
      "dirs": dirs,
      "items": fileId
    });
  }

  /// 退出登录
  static Future<Response> deleteSession() {
    return HttpUtil.dio.delete("/api/v3/user/session");
  }

  /// 通过当前路径[path]获取文件列表
  static Future<Response> directory(String path) {
    return HttpUtil.dio.get('/api/v3/directory$path');
  }

  /// 通过[fileId]获取下载路径
  static Future<Response> getDownloadUrl(String fileId) async {
    return await HttpUtil.dio.put("/api/v3/file/download/$fileId");
  }

  /// 通过[fileId]获取缩略图
  static Future<Response> getThumb(String fileId) async {
    return await HttpUtil.dio.get("/api/v3/file/thumb/$fileId",
        options: Options(responseType: ResponseType.bytes));
  }

  /// 注册
  /// [userName]用户名
  /// [password]密码
  static Future<Response> register(String userName, String password) {
    return HttpUtil.dio.post("/api/v3/user",
        data: {'userName': userName, 'Password': password, 'captchaCode': ''});
  }

  /// 登录
  /// [userName]用户名
  /// [password]密码
  static Future<Response> session(String userName, String password) {
    return HttpUtil.dio.post("/api/v3/user/session",
        data: {'userName': userName, 'Password': password, 'captchaCode': ''});
  }

  /// 获取用户容量
  static Future<Response> storage() {
    return HttpUtil.dio.get("/api/v3/user/storage");
  }

  /// 上传文件
  /// [file]具体文件
  /// [path]路径
  /// [onSendProgress]上传回调函数
  static Future<Response> uploadFile(
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

  /// 获取webdav数据
  static Future<Response> webdav() {
    return HttpUtil.dio.get("/api/v3/webdav/accounts");
  }
}
