import 'dart:io';

import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart'
    as cloudreve_api;
import 'package:dio/dio.dart';
import 'package:file_picker/file_picker.dart';

String _buildUri(String path) {
  final trimmed = path.isEmpty ? '/' : path;
  if (trimmed == '/' || trimmed == '') {
    return 'cloudreve://my';
  }
  final segments = trimmed
      .split('/')
      .where((segment) => segment.isNotEmpty)
      .map(Uri.encodeComponent)
      .join('/');
  return 'cloudreve://my/$segments';
}

/// 新建目录
Future<cloudreve_api.FileCreatePost200Response?> addDirectory(
    dynamic data) async {
  String? rawPath;
  if (data is Map<String, dynamic>) {
    rawPath = data['path']?.toString();
  } else if (data is Map) {
    final value = data['path'];
    rawPath = value?.toString();
  }
  if (rawPath == null || rawPath.isEmpty) {
    throw ArgumentError('path is required to create directory');
  }
  final uri = _buildUri(rawPath);
  final request = cloudreve_api.FileCreatePostRequest((b) => b
    ..uri = uri
    ..type = cloudreve_api.FileCreatePostRequestTypeEnum.folder
    ..errOnConflict = 'true');
  final response = await HttpUtil.apiClient
      .getFileApi()
      .fileCreatePost(fileCreatePostRequest: request);
  return response.data;
}

/// 通过用户[id]获取头像缩略图
Future<Response> avatar(String id, String size) {
  return HttpUtil.dio.get(
    "/api/v3/user/avatar/$id/$size",
    options: Options(responseType: ResponseType.bytes),
  );
}

/// 通过[fileId]或者[dirs]删除文件或目录
Future<Response> deleteItem(List<String> dirs, List<String> fileId) async {
  return HttpUtil.dio.delete(
    "/api/v3/object",
    data: {"dirs": dirs, "items": fileId},
  );
}

/// 退出登录
Future<cloudreve_api.SessionTokenDelete200Response?> deleteSession() async {
  final refreshToken = HttpUtil.refreshToken;
  final request = refreshToken == null || refreshToken.isEmpty
      ? null
      : cloudreve_api.SessionTokenDeleteRequest(
          (b) => b..refreshToken = refreshToken,
        );
  final response = await HttpUtil.apiClient
      .getSessionTokenApi()
      .sessionTokenDelete(sessionTokenDeleteRequest: request);
  HttpUtil.clearAuthToken();
  return response.data;
}

/// 通过当前路径[path]获取文件列表
Future<cloudreve_api.FileGet200Response?> directory(String path) async {
  final uri = _buildUri(path);
  final response = await HttpUtil.apiClient.getFileApi().fileGet(
        uri: uri,
        page: 0,
        pageSize: 100,
      );
  return response.data;
}

/// 通过[fileId]获取下载路径
Future<Response> getDownloadUrl(String fileId) async {
  return HttpUtil.dio.put("/api/v3/file/download/$fileId");
}

/// 通过[downloadUrl]获取图片
Future<Response> getImage(String downloadUrl) async {
  return HttpUtil.dio.get(
    downloadUrl,
    options: Options(responseType: ResponseType.bytes),
  );
}

/// 通过[fileId]获取缩略图
Future<Response> getThumb(String fileId) async {
  return await HttpUtil.dio.get(
    "/api/v3/file/thumb/$fileId",
    options: Options(responseType: ResponseType.bytes),
  );
}

/// 注册
/// [userName]用户名
/// [password]密码
Future<Response> register(String userName, String password) {
  return HttpUtil.dio.post(
    "/api/v3/user",
    data: {'userName': userName, 'Password': password, 'captchaCode': ''},
  );
}

/// 登录
/// [userName]用户名
/// [password]密码
Future<LoginResult> session(String userName, String password) async {
  final api = HttpUtil.apiClient.getSessionTokenApi();
  final request = cloudreve_api.SessionTokenPostRequest((b) => b
    ..email = userName
    ..password = password);
  try {
    final response = await api.sessionTokenPost(
      sessionTokenPostRequest: request,
    );

    final responseData = response.data;
    if (responseData == null) {
      HttpUtil.clearAuthToken();
      return LoginResult(code: -1, data: null, msg: '登录失败', error: null);
    }

    final result = LoginResult.fromApi(responseData);
    if (result.isSuccess && result.data != null) {
      final token = result.data!.token;
      HttpUtil.updateAuthToken(
        accessToken: token.accessToken,
        accessExpires: token.accessExpires,
        refreshToken: token.refreshToken,
        refreshExpires: token.refreshExpires,
      );
    } else {
      HttpUtil.clearAuthToken();
    }
    return result;
  } on DioException catch (error) {
    HttpUtil.clearAuthToken();
    final message = error.response?.data is Map
        ? (error.response?.data['msg']?.toString() ?? '登录失败')
        : '登录失败';
    return LoginResult(
        code: -1, data: null, msg: message, error: error.message);
  }
}

/// 获取用户容量
Future<cloudreve_api.UserCapacityGet200Response?> getStorage() async {
  final response = await HttpUtil.apiClient.getUserApi().userCapacityGet();
  return response.data;
}

/// 上传文件
/// [file]具体文件
/// [path]路径
/// [onSendProgress]上传回调函数
Future<Response> uploadFile(PlatformFile file, String path,
    [CancelToken? cancelToken, void Function(int, int)? onSendProgress]) {
  var option = Options(
      method: "POST",
      contentType: "application/octet-stream",
      headers: {
        "x-cr-filename": Uri.encodeComponent(file.name),
        "x-cr-path": Uri.encodeComponent(path),
        HttpHeaders.contentLengthHeader: file.size
      },
      sendTimeout: const Duration(seconds: 100));
  return HttpUtil.dio.post(
    "/api/v3/file/upload",
    options: option,
    data: file.readStream,
    cancelToken: cancelToken,
    onSendProgress: (process, total) {
      if (onSendProgress != null) {
        onSendProgress(process, total);
      }
    },
  );
}

/// 获取webdav数据
Future<Response> webdav() {
  return HttpUtil.dio.get("/api/v3/webdav/accounts");
}

/// 获取设置
Future<Response> setting() {
  return HttpUtil.dio.get("/api/v3/user/setting");
}

/// 新增分享
/// [fileId]文件id
/// [isDir]是否为目录
/// [password]密码
/// [preview]是否支持预览
/// [downloads]下载次数
/// [expive]过期秒数
Future<Response> newShare(
    {required String fileId,
    required bool isDir,
    required String password,
    required bool preview,
    required int downloads,
    required int expive}) {
  return HttpUtil.dio.post(
    "/api/v3/share",
    data: {
      "id": fileId,
      "is_dir": isDir,
      "password": password,
      "preview": preview,
      "downloads": downloads,
      "expive": expive
    },
  );
}

/// 获取分享
Future<Response> getShare(
    {int page = 1, required String order, required String orderBy}) {
  return HttpUtil.dio.get(
    "/api/v3/share",
    queryParameters: {"page": page, "order": order, "order_by": orderBy},
  );
}

/// 编辑分享
/// [key]分享key
/// [prop]属性名
/// [value]属性值
Future<Response> editShare(String key,
    {required String prop, required dynamic value}) {
  return HttpUtil.dio.patch(
    "/api/v3/share/$key",
    data: {"prop": prop, "value": value.toString()},
  );
}

/// 删除分享
/// [key]分享key
Future<Response> deleteShare(String key) {
  return HttpUtil.dio.delete("/api/v3/share/$key");
}

/// 重命名文件
/// [dirs]目录
/// [items]文件
Future<Response> renameObjects(
    String newName, List<String> dirs, List<String> items) {
  return HttpUtil.dio.post(
    "/api/v3/object/rename",
    data: {
      "action": "rename",
      "new_name": newName,
      "src": {
        "dirs": dirs,
        "items": items,
      },
    },
  );
}

/// 搜索
Future<cloudreve_api.FileGet200Response?> search(String keyword) async {
  final encodedKeyword = Uri.encodeComponent(keyword.trim());
  final uri = 'cloudreve://my?name=$encodedKeyword';
  final response = await HttpUtil.apiClient.getFileApi().fileGet(
        uri: uri,
        page: 0,
        pageSize: 100,
      );
  return response.data;
}

/// 文件属性
Future<Response> property(MFile file) {
  return HttpUtil.dio.get(
    "/api/v3/object/property/${file.id}",
    queryParameters: {
      "trace_root": true,
      "is_folder": file.type == "dir",
    },
  );
}

/// 重命名
Future<Response> renameNick(String newNick) {
  return HttpUtil.dio.patch(
    "/api/v3/user/setting/nick",
    data: {
      "nick": newNick,
    },
  );
}

/// 设置头像
Future<Response> setAvatar() {
  return HttpUtil.dio.put("/api/v3/user/setting/avatar");
}

/// 设置头像
Future<Response> setFileAsAvatar(FormData formData) {
  return HttpUtil.dio.post(
    "/api/v3/user/setting/avatar",
    data: formData,
  );
}
