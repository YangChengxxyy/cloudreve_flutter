import 'package:cloudreve_api_client/cloudreve_api_client.dart'
    as cloudreve_api;

class LoginResult {
  LoginResult({
    required this.code,
    this.data,
    this.msg,
    this.error,
    this.correlationId,
  });

  final int code;
  final LoginData? data;
  final String? msg;
  final String? error;
  final String? correlationId;

  bool get isSuccess => code == 0;

  factory LoginResult.fromJson(Map<String, dynamic> json) {
    return LoginResult(
      code: json['code'] ?? -1,
      data: json['data'] != null ? LoginData.fromJson(json['data']) : null,
      msg: json['msg']?.toString(),
      error: json['error']?.toString(),
      correlationId: json['correlation_id']?.toString(),
    );
  }

  factory LoginResult.fromApi(
    cloudreve_api.SessionTokenPost200Response response,
  ) {
    final loginResponse = response.data;
    return LoginResult(
      code: response.code ?? -1,
      data:
          loginResponse != null ? LoginData.fromApi(loginResponse) : null,
      msg: response.msg,
      error: response.error,
      correlationId: response.correlationId,
    );
  }
}

class LoginData {
  LoginData({required this.user, required this.token});

  final UserData user;
  final TokenData token;

  factory LoginData.fromJson(Map<String, dynamic> json) {
    return LoginData(
      user: UserData.fromJson(
        json['user'] as Map<String, dynamic>? ?? const <String, dynamic>{},
      ),
      token: TokenData.fromJson(
        json['token'] as Map<String, dynamic>? ?? const <String, dynamic>{},
      ),
    );
  }

  factory LoginData.fromApi(cloudreve_api.LoginResponse? response) {
    return LoginData(
      user: UserData.fromApi(response?.user),
      token: TokenData.fromApi(response?.token),
    );
  }
}

class TokenData {
  TokenData({
    required this.accessToken,
    required this.accessExpires,
    required this.refreshToken,
    required this.refreshExpires,
  });

  final String accessToken;
  final DateTime accessExpires;
  final String refreshToken;
  final DateTime refreshExpires;

  TokenData.empty()
      : accessToken = '',
        accessExpires = DateTime.fromMillisecondsSinceEpoch(0),
        refreshToken = '',
        refreshExpires = DateTime.fromMillisecondsSinceEpoch(0);

  factory TokenData.fromJson(Map<String, dynamic> json) {
    DateTime _parseDate(dynamic value) {
      if (value is String) {
        return DateTime.tryParse(value) ?? DateTime.now();
      }
      if (value is int) {
        // assume unix timestamp (seconds)
        if (value.toString().length >= 13) {
          return DateTime.fromMillisecondsSinceEpoch(value);
        }
        return DateTime.fromMillisecondsSinceEpoch(value * 1000);
      }
      return DateTime.now();
    }

    return TokenData(
      accessToken: json['access_token'] ?? '',
      accessExpires: _parseDate(json['access_expires']),
      refreshToken: json['refresh_token'] ?? '',
      refreshExpires: _parseDate(json['refresh_expires']),
    );
  }

  factory TokenData.fromApi(cloudreve_api.Token? token) {
    if (token == null) {
      return TokenData.empty();
    }
    return TokenData(
      accessToken: token.accessToken ?? '',
      accessExpires:
          token.accessExpires ?? DateTime.fromMillisecondsSinceEpoch(0),
      refreshToken: token.refreshToken ?? '',
      refreshExpires:
          token.refreshExpires ?? DateTime.fromMillisecondsSinceEpoch(0),
    );
  }
}

class UserData {
  UserData({
    required this.id,
    required this.userName,
    required this.nickname,
    required this.status,
    required this.avatar,
    required this.createdAt,
    required this.preferredTheme,
    required this.anonymous,
    required this.language,
    this.group,
    this.credit,
  });

  final String id;
  final String userName;
  final String nickname;
  final String status;
  final String avatar;
  final String createdAt;
  final String preferredTheme;
  final bool anonymous;
  final String language;
  final int? credit;
  final Group? group;

  UserData.empty()
      : id = '',
        userName = '',
        nickname = '',
        status = '',
        avatar = '',
        createdAt = '',
        preferredTheme = '',
        anonymous = false,
        language = '',
        credit = null,
        group = null;

  factory UserData.fromJson(Map<String, dynamic> json) {
    final groupJson = json['group'];
    return UserData(
      id: (json['id'] ?? '').toString(),
      userName: json['email'] ?? '',
      nickname: json['nickname'] ?? '',
      status: json['status']?.toString() ?? '',
      avatar: json['avatar']?.toString() ?? '',
      createdAt: json['created_at']?.toString() ?? '',
      preferredTheme: json['preferred_theme']?.toString() ?? '',
      anonymous: json['anonymous'] == true,
      language: json['language']?.toString() ?? '',
      credit: json['credit'] is int ? json['credit'] as int : null,
      group:
          groupJson is Map<String, dynamic> ? Group.fromJson(groupJson) : null,
    );
  }

  factory UserData.fromApi(cloudreve_api.User? user) {
    if (user == null) {
      return UserData.empty();
    }
    final group = user.group;
    return UserData(
      id: user.id ?? '',
      userName: user.email ?? '',
      nickname: user.nickname ?? '',
      status: user.status?.name ?? '',
      avatar: user.avatar?.name ?? '',
      createdAt: user.createdAt?.toIso8601String() ?? '',
      preferredTheme: user.preferredTheme ?? '',
      anonymous: user.anonymous ?? false,
      language: user.language ?? '',
      credit: user.credit,
      group: Group.fromApi(group),
    );
  }
}

class Group {
  Group({
    required this.id,
    required this.name,
    required this.permission,
    required this.directLinkBatchSize,
    required this.trashRetention,
  });

  final String id;
  final String name;
  final String permission;
  final int directLinkBatchSize;
  final int trashRetention;

  Group.empty()
      : id = '',
        name = '',
        permission = '',
        directLinkBatchSize = 0,
        trashRetention = 0;

  factory Group.fromJson(Map<String, dynamic> json) {
    return Group(
      id: (json['id'] ?? '').toString(),
      name: json['name']?.toString() ?? '',
      permission: json['permission']?.toString() ?? '',
      directLinkBatchSize: json['direct_link_batch_size'] is int
          ? json['direct_link_batch_size'] as int
          : int.tryParse(json['direct_link_batch_size']?.toString() ?? '') ?? 0,
      trashRetention: json['trash_retention'] is int
          ? json['trash_retention'] as int
          : int.tryParse(json['trash_retention']?.toString() ?? '') ?? 0,
    );
  }

  static Group? fromApi(cloudreve_api.Group? group) {
    if (group == null) {
      return null;
    }
    return Group(
      id: group.id ?? '',
      name: group.name ?? '',
      permission: group.permission ?? '',
      directLinkBatchSize: group.directLinkBatchSize ?? 0,
      trashRetention: group.trashRetention ?? 0,
    );
  }
}
