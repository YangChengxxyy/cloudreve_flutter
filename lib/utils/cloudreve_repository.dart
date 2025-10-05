import 'dart:typed_data';

import 'package:cloudreve/entity/LoginResult.dart';
import 'package:cloudreve/entity/MFile.dart';
import 'package:cloudreve/entity/Storage.dart';
import 'package:cloudreve/utils/HttpUtil.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart'
    as cloudreve_api;
import 'package:dio/dio.dart';

class CloudreveRepository {
  CloudreveRepository._();

  static cloudreve_api.FileApi get _fileApi => HttpUtil.apiClient.getFileApi();

  static cloudreve_api.SessionTokenApi get _sessionTokenApi =>
      HttpUtil.apiClient.getSessionTokenApi();

  static cloudreve_api.UserApi get _userApi => HttpUtil.apiClient.getUserApi();

  static cloudreve_api.AuthNoneApi get _authNoneApi =>
      HttpUtil.apiClient.getAuthNoneApi();

  static cloudreve_api.ShareApi get _shareApi =>
      HttpUtil.apiClient.getShareApi();

  static cloudreve_api.UserSettingApi get _userSettingApi =>
      HttpUtil.apiClient.getUserSettingApi();

  static cloudreve_api.WebDAVApi get _webDavApi =>
      HttpUtil.apiClient.getWebDAVApi();

  static Future<LoginResult> signIn(
      {required String email, required String password}) async {
    final request = cloudreve_api.SessionTokenPostRequest((b) => b
      ..email = email
      ..password = password);
    final response = await _sessionTokenApi.sessionTokenPost(
      sessionTokenPostRequest: request,
    );

    final data = response.data;
    if (data == null) {
      HttpUtil.clearAuthToken();
      return LoginResult(code: -1, data: null, msg: '登录失败', error: null);
    }

    final result = LoginResult.fromApi(data);
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
  }

  static Future<void> signOut() async {
    final refreshToken = HttpUtil.refreshToken;
    final request = refreshToken == null || refreshToken.isEmpty
        ? null
        : cloudreve_api.SessionTokenDeleteRequest(
            (b) => b..refreshToken = refreshToken,
          );
    await _sessionTokenApi.sessionTokenDelete(
      sessionTokenDeleteRequest: request,
    );
    HttpUtil.clearAuthToken();
  }

  static Future<Storage?> fetchStorage() async {
    final response = await _userApi.userCapacityGet();
    final data = response.data?.data;
    if (data == null) {
      return null;
    }
    return Storage.fromApi(data);
  }

  static Future<FileListing> listFiles(
    String path, {
    int page = 0,
    int pageSize = 100,
  }) async {
    final uri =
        path == '/' || path.isEmpty ? 'cloudreve://my' : _buildUri(path);
    final response = await _fileApi.fileGet(
      uri: uri,
      page: page,
      pageSize: pageSize,
    );

    final data = response.data;
    if (data == null || (data.code ?? -1) != 0) {
      return FileListing.empty(path);
    }

    final list = data.data;
    if (list == null) {
      return FileListing.empty(path);
    }

    final fileResponses =
        list.files?.toList() ?? const <cloudreve_api.FileResponse>[];
    final files = fileResponses.map(MFile.fromFileResponse).toList();
    final map = <String, cloudreve_api.FileResponse>{};
    for (final file in fileResponses) {
      final id = file.id;
      if (id != null && id.isNotEmpty) {
        map[id] = file;
      }
    }
    return FileListing(
      path: path,
      files: files,
      contextHint: list.contextHint ?? '',
      fileMap: map,
      raw: data,
    );
  }

  static Future<FileListing> search(String keyword) async {
    final uri = 'cloudreve://my?name=${Uri.encodeComponent(keyword.trim())}';
    final response = await _fileApi.fileGet(
      uri: uri,
      page: 0,
      pageSize: 100,
    );
    final data = response.data;
    if (data == null || (data.code ?? -1) != 0) {
      return FileListing.empty('/');
    }
    final list = data.data;
    if (list == null) {
      return FileListing.empty('/');
    }
    final fileResponses =
        list.files?.toList() ?? const <cloudreve_api.FileResponse>[];
    final files = fileResponses.map(MFile.fromFileResponse).toList();
    final map = <String, cloudreve_api.FileResponse>{};
    for (final file in fileResponses) {
      final id = file.id;
      if (id != null && id.isNotEmpty) {
        map[id] = file;
      }
    }
    return FileListing(
      path: '/',
      files: files,
      contextHint: list.contextHint ?? '',
      fileMap: map,
      raw: data,
    );
  }

  static Future<cloudreve_api.FileCreatePost200Response?> createDirectory(
      String currentPath, String folderName) async {
    final fullPath = currentPath.endsWith('/')
        ? '$currentPath$folderName'
        : '$currentPath/$folderName';
    final request = cloudreve_api.FileCreatePostRequest((b) => b
      ..uri = _buildUri(fullPath)
      ..type = cloudreve_api.FileCreatePostRequestTypeEnum.folder
      ..errOnConflict = true);
    final response = await _fileApi.fileCreatePost(
      fileCreatePostRequest: request,
    );
    return response.data;
  }

  static Future<bool> deleteFiles({
    List<String> fileUris = const [],
  }) async {
    if (fileUris.isEmpty) {
      return false;
    }
    final request =
        cloudreve_api.FileDeleteRequest((b) => b..uris.replace(fileUris));
    final response = await _fileApi.fileDelete(
      fileDeleteRequest: request,
    );
    return response.data?.code == 0;
  }

  static Future<String?> createDownloadUrl(
    String fileUri, {
    String? contextHint,
  }) async {
    final request =
        cloudreve_api.FileUrlPostRequest((b) => b..uris.replace([fileUri]));
    final response = await _fileApi.fileUrlPost(
      fileUrlPostRequest: request,
      xCrContextHint: contextHint,
    );

    final data = response.data;
    if (data == null || (data.code ?? -1) != 0) {
      return null;
    }
    final payload = data.data;
    final urls = payload?.urls;
    if (urls == null || urls.isEmpty) {
      return null;
    }
    final firstUrl = urls.first;
    return firstUrl.url;
  }

  static Future<Uint8List?> fetchThumbnailBytes(String fileUri) async {
    final response = await _fileApi.fileThumbGet(
      uri: fileUri,
    );
    final data = response.data;
    if (data == null || (data.code ?? -1) != 0) {
      return null;
    }
    final thumb = data.data;
    if (thumb == null || thumb.obfuscated == true) {
      return null;
    }
    final url = thumb.url;
    if (url == null || url.isEmpty) {
      return null;
    }
    return fetchRaw(url);
  }

  static Future<cloudreve_api.FileThumbGet200Response?> fetchThumbnail(
      String fileUri) async {
    final response = await _fileApi.fileThumbGet(
      uri: fileUri,
    );
    return response.data;
  }

  static Future<cloudreve_api.FileInfoGet200Response?> fetchFileInfo(
      String fileUri,
      {bool extended = false,
      bool folderSummary = false}) async {
    final response = await _fileApi.fileInfoGet(
      uri: fileUri,
      extended: extended,
      folderSummary: folderSummary,
    );
    return response.data;
  }

  static Future<bool> renameEntry(
      {required String fileUri, required String newName}) async {
    final request = cloudreve_api.FileMetadataPatchRequest((b) => b
      ..uris.replace([fileUri])
      ..patches.replace([
        cloudreve_api.FileMetadataPatchRequestPatchesInner((p) => p
          ..key = 'sys:name'
          ..value = newName)
      ]));

    final response = await _fileApi.fileMetadataPatch(
      fileMetadataPatchRequest: request,
    );
    return response.data?.code == 0;
  }

  static Future<cloudreve_api.FileRenamePost200Response?> renameFile({
    required cloudreve_api.FileRenamePostRequest request,
  }) async {
    final response = await _fileApi.fileRenamePost(
      fileRenamePostRequest: request,
    );
    return response.data;
  }

  static Future<cloudreve_api.FileMovePost200Response?> moveFiles({
    required cloudreve_api.FileMovePostRequest request,
  }) async {
    final response = await _fileApi.fileMovePost(
      fileMovePostRequest: request,
    );
    return response.data;
  }

  static Future<LoginResult> register(
      {required String email, required String password}) async {
    final request = cloudreve_api.UserPostRequest((b) => b
      ..email = email
      ..password = password);
    final response = await _authNoneApi.userPost(
      userPostRequest: request,
    );
    final data = response.data;
    if (data == null) {
      return LoginResult(code: -1, data: null, msg: null, error: null);
    }
    return LoginResult(
      code: data.code ?? -1,
      data: null,
      msg: data.msg,
      error: data.error,
      correlationId: data.correlationId,
    );
  }

  static Future<Uint8List?> fetchRaw(String url) async {
    final response = await HttpUtil.dio.get<Uint8List>(
      url,
      options: Options(responseType: ResponseType.bytes),
    );
    return response.data;
  }

  static Future<Response<Uint8List>> fetchAvatar({
    required String userId,
    bool nocache = false,
  }) {
    return HttpUtil.dio.get(
      '/user/avatar/$userId',
      queryParameters: nocache ? <String, dynamic>{'nocache': true} : null,
      options: Options(responseType: ResponseType.bytes),
    );
  }

  static Future<ShareListResult> fetchMyShares({
    int pageSize = 50,
    String? orderBy,
    String? orderDirection,
    String? nextPageToken,
  }) async {
    final response = await _shareApi.shareGet(
      pageSize: pageSize,
      orderBy: orderBy,
      orderDirection: orderDirection,
      nextPageToken: nextPageToken,
    );
    final data = response.data;
    if (data == null || (data.code ?? -1) != 0) {
      return ShareListResult.empty();
    }
    final list = data.data;
    if (list == null) {
      return ShareListResult.empty();
    }
    return ShareListResult(
      shares: list.shares?.toList() ?? const [],
      pagination: list.pagination,
    );
  }

  static cloudreve_api.PermissionSetting _defaultSharePermissions() {
    return cloudreve_api.PermissionSetting((b) {
      b
        ..anonymous = 'BQ=='
        ..everyone = 'AQ==';
    });
  }

  static Future<cloudreve_api.SharePut200Response?> createShare({
    required String uri,
    cloudreve_api.PermissionSetting? permissions,
    bool? isPrivate,
    bool? shareView,
    int? expire,
    int? price,
    String? password,
    bool? showReadme,
  }) async {
    final request = cloudreve_api.ShareCreateService((b) {
      b
        ..permissions.replace(permissions ?? _defaultSharePermissions())
        ..uri = uri
        ..shareView = shareView
        ..expire = expire
        ..price = price
        ..showReadme = showReadme
        ..isPrivate = isPrivate
        ..password = password;
    });
    final response = await _shareApi.sharePut(
      shareCreateService: request,
    );
    return response.data;
  }

  static Future<cloudreve_api.ShareIdPost200Response?> updateShare({
    required String shareId,
    cloudreve_api.PermissionSetting? permissions,
    required String uri,
    bool? shareView,
    int? expire,
    int? price,
    bool? showReadme,
  }) async {
    final request = cloudreve_api.ShareIdPostRequest((b) {
      b
        ..permissions.replace(permissions ?? _defaultSharePermissions())
        ..uri = uri
        ..shareView = shareView
        ..expire = expire
        ..price = price
        ..showReadme = showReadme;
    });
    final response = await _shareApi.shareIdPost(
      id: shareId,
      shareIdPostRequest: request,
    );
    return response.data;
  }

  static Future<bool> deleteShare(String shareId) async {
    final response = await _shareApi.shareIdDelete(id: shareId);
    final data = response.data;
    return data != null && data.code == 0;
  }

  static Future<cloudreve_api.UserSettingPatch200Response?> updateNickname(
      String nick) async {
    final request =
        cloudreve_api.UserSettingPatchRequest((b) => b..nick = nick.trim());
    final response = await _userSettingApi.userSettingPatch(
      userSettingPatchRequest: request,
    );
    return response.data;
  }

  static Future<cloudreve_api.UserSettingAvatarPut200Response?>
      setAvatarFromGravatar() async {
    final response = await _userSettingApi.userSettingAvatarPut();
    return response.data;
  }

  static Future<cloudreve_api.UserSettingAvatarPut200Response?>
      uploadAvatarBytes(List<int> bytes) async {
    final file = MultipartFile.fromBytes(bytes);
    final response = await _userSettingApi.userSettingAvatarPut(body: file);
    return response.data;
  }

  static Future<List<cloudreve_api.DavAccount>> fetchWebDavAccounts({
    int pageSize = 100,
    String? nextPageToken,
  }) async {
    final response = await _webDavApi.devicesDavGet(
      pageSize: pageSize,
      nextPageToken: nextPageToken,
    );
    final data = response.data;
    if (data == null || (data.code ?? -1) != 0) {
      return const [];
    }
    final list = data.data;
    if (list == null || list.isEmpty) {
      return const [];
    }
    final accounts = <cloudreve_api.DavAccount>[];
    for (final section in list) {
      final sectionAccounts =
          section.accounts?.toList() ?? const <cloudreve_api.DavAccount>[];
      accounts.addAll(sectionAccounts);
    }
    return accounts;
  }

  static String _buildUri(String path) {
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
}

class FileListing {
  FileListing({
    required this.path,
    required this.files,
    required this.contextHint,
    required this.fileMap,
    this.raw,
  });

  FileListing.empty(this.path)
      : files = const [],
        contextHint = '',
        fileMap = const <String, cloudreve_api.FileResponse>{},
        raw = null;

  final String path;
  final List<MFile> files;
  final String contextHint;
  final Map<String, cloudreve_api.FileResponse> fileMap;
  final cloudreve_api.FileGet200Response? raw;

  cloudreve_api.FileResponse? findResponseById(String id) => fileMap[id];
}

class ShareListResult {
  ShareListResult({
    required this.shares,
    required this.pagination,
  });

  ShareListResult.empty()
      : shares = const [],
        pagination = null;

  final List<cloudreve_api.Share> shares;
  final cloudreve_api.ListShareResponsePagination? pagination;

  String? get nextToken {
    final token = pagination?.nextToken;
    if (token == null || token.isEmpty) {
      return null;
    }
    return token;
  }
}
