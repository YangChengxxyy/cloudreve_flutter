class LoginResult {
  LoginResult(this.code, this.data, this.msg);

  late int code;
  late UserData? data;
  late String msg;

  LoginResult.fromJson(Map<String, dynamic> map) {
    code = map['code'];
    data = map['data'] != null ? UserData.fromJson(map['data']) : null;
    msg = map['msg'];
  }
}

class UserData {
  late String id;
  late String userName;
  late String nickname;
  late int status;
  late String avatar;
  late String createdAt;
  late String preferredTheme;
  late bool anonymous;
  late Policy? policy;
  late Group? group;

  UserData(
    this.id,
    this.userName,
    this.nickname,
    this.status,
    this.avatar,
    this.createdAt,
    this.preferredTheme,
    this.anonymous,
    this.policy,
    this.group,
  );

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    userName = json['user_name'];
    nickname = json['nickname'];
    status = json['status'];
    avatar = json['avatar'];
    createdAt = json['created_at'];
    preferredTheme = json['preferred_theme'];
    anonymous = json['anonymous'];
    policy =
        json['policy'] != null ? Policy.fromJson(json['policy']) : null;
    group = json['group'] != null ? Group.fromJson(json['group']) : null;
  }
}

class Policy {
  late String saveType;
  late String maxSize;
  late String upUrl;
  late bool allowSource;

  Policy(this.saveType, this.maxSize, this.upUrl, this.allowSource);

  Policy.fromJson(Map<String, dynamic> json) {
    saveType = json['saveType'];
    maxSize = json['maxSize'];
    upUrl = json['upUrl'];
    allowSource = json['allowSource'];
  }
}

class Group {
  late int id;
  late String name;
  late bool allowShare;
  late bool allowRemoteDownload;
  late bool allowArchiveDownload;
  late bool shareDownload;
  late bool compress;
  late bool webdav;

  Group(
      this.id,
      this.name,
      this.allowShare,
      this.allowRemoteDownload,
      this.allowArchiveDownload,
      this.shareDownload,
      this.compress,
      this.webdav);

  Group.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    allowShare = json['allowShare'];
    allowRemoteDownload = json['allowRemoteDownload'];
    allowArchiveDownload = json['allowArchiveDownload'];
    shareDownload = json['shareDownload'];
    compress = json['compress'];
    webdav = json['webdav'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['allowShare'] = this.allowShare;
    data['allowRemoteDownload'] = this.allowRemoteDownload;
    data['allowArchiveDownload'] = this.allowArchiveDownload;
    data['shareDownload'] = this.shareDownload;
    data['compress'] = this.compress;
    data['webdav'] = this.webdav;
    return data;
  }
}
