// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserStatusEnum _$userStatusEnum_active = const UserStatusEnum._('active');
const UserStatusEnum _$userStatusEnum_inactive =
    const UserStatusEnum._('inactive');
const UserStatusEnum _$userStatusEnum_manualBanned =
    const UserStatusEnum._('manualBanned');
const UserStatusEnum _$userStatusEnum_sysBanned =
    const UserStatusEnum._('sysBanned');

UserStatusEnum _$userStatusEnumValueOf(String name) {
  switch (name) {
    case 'active':
      return _$userStatusEnum_active;
    case 'inactive':
      return _$userStatusEnum_inactive;
    case 'manualBanned':
      return _$userStatusEnum_manualBanned;
    case 'sysBanned':
      return _$userStatusEnum_sysBanned;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UserStatusEnum> _$userStatusEnumValues =
    BuiltSet<UserStatusEnum>(const <UserStatusEnum>[
  _$userStatusEnum_active,
  _$userStatusEnum_inactive,
  _$userStatusEnum_manualBanned,
  _$userStatusEnum_sysBanned,
]);

const UserAvatarEnum _$userAvatarEnum_file = const UserAvatarEnum._('file');
const UserAvatarEnum _$userAvatarEnum_gravatar =
    const UserAvatarEnum._('gravatar');

UserAvatarEnum _$userAvatarEnumValueOf(String name) {
  switch (name) {
    case 'file':
      return _$userAvatarEnum_file;
    case 'gravatar':
      return _$userAvatarEnum_gravatar;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UserAvatarEnum> _$userAvatarEnumValues =
    BuiltSet<UserAvatarEnum>(const <UserAvatarEnum>[
  _$userAvatarEnum_file,
  _$userAvatarEnum_gravatar,
]);

const UserShareLinksInProfileEnum
    _$userShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket =
    const UserShareLinksInProfileEnum._(
        'leftSquareBracketEmptyStringRightSquareBracket');
const UserShareLinksInProfileEnum _$userShareLinksInProfileEnum_allShare =
    const UserShareLinksInProfileEnum._('allShare');
const UserShareLinksInProfileEnum _$userShareLinksInProfileEnum_hideShare =
    const UserShareLinksInProfileEnum._('hideShare');

UserShareLinksInProfileEnum _$userShareLinksInProfileEnumValueOf(String name) {
  switch (name) {
    case 'leftSquareBracketEmptyStringRightSquareBracket':
      return _$userShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket;
    case 'allShare':
      return _$userShareLinksInProfileEnum_allShare;
    case 'hideShare':
      return _$userShareLinksInProfileEnum_hideShare;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UserShareLinksInProfileEnum>
    _$userShareLinksInProfileEnumValues =
    BuiltSet<UserShareLinksInProfileEnum>(const <UserShareLinksInProfileEnum>[
  _$userShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket,
  _$userShareLinksInProfileEnum_allShare,
  _$userShareLinksInProfileEnum_hideShare,
]);

Serializer<UserStatusEnum> _$userStatusEnumSerializer =
    _$UserStatusEnumSerializer();
Serializer<UserAvatarEnum> _$userAvatarEnumSerializer =
    _$UserAvatarEnumSerializer();
Serializer<UserShareLinksInProfileEnum>
    _$userShareLinksInProfileEnumSerializer =
    _$UserShareLinksInProfileEnumSerializer();

class _$UserStatusEnumSerializer
    implements PrimitiveSerializer<UserStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'active': 'active',
    'inactive': 'inactive',
    'manualBanned': 'manual_banned',
    'sysBanned': 'sys_banned',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'active': 'active',
    'inactive': 'inactive',
    'manual_banned': 'manualBanned',
    'sys_banned': 'sysBanned',
  };

  @override
  final Iterable<Type> types = const <Type>[UserStatusEnum];
  @override
  final String wireName = 'UserStatusEnum';

  @override
  Object serialize(Serializers serializers, UserStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UserAvatarEnumSerializer
    implements PrimitiveSerializer<UserAvatarEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'file': 'file',
    'gravatar': 'gravatar',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'file': 'file',
    'gravatar': 'gravatar',
  };

  @override
  final Iterable<Type> types = const <Type>[UserAvatarEnum];
  @override
  final String wireName = 'UserAvatarEnum';

  @override
  Object serialize(Serializers serializers, UserAvatarEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserAvatarEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserAvatarEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UserShareLinksInProfileEnumSerializer
    implements PrimitiveSerializer<UserShareLinksInProfileEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'leftSquareBracketEmptyStringRightSquareBracket': '[Empty string]',
    'allShare': 'all_share',
    'hideShare': 'hide_share',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '[Empty string]': 'leftSquareBracketEmptyStringRightSquareBracket',
    'all_share': 'allShare',
    'hide_share': 'hideShare',
  };

  @override
  final Iterable<Type> types = const <Type>[UserShareLinksInProfileEnum];
  @override
  final String wireName = 'UserShareLinksInProfileEnum';

  @override
  Object serialize(Serializers serializers, UserShareLinksInProfileEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserShareLinksInProfileEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserShareLinksInProfileEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$User extends User {
  @override
  final String? id;
  @override
  final String? email;
  @override
  final String? nickname;
  @override
  final DateTime? createdAt;
  @override
  final bool? anonymous;
  @override
  final Group? group;
  @override
  final UserStatusEnum? status;
  @override
  final UserAvatarEnum? avatar;
  @override
  final String? preferredTheme;
  @override
  final int? credit;
  @override
  final String? language;
  @override
  final String? disableViewSync;
  @override
  final UserShareLinksInProfileEnum? shareLinksInProfile;

  factory _$User([void Function(UserBuilder)? updates]) =>
      (UserBuilder()..update(updates))._build();

  _$User._(
      {this.id,
      this.email,
      this.nickname,
      this.createdAt,
      this.anonymous,
      this.group,
      this.status,
      this.avatar,
      this.preferredTheme,
      this.credit,
      this.language,
      this.disableViewSync,
      this.shareLinksInProfile})
      : super._();
  @override
  User rebuild(void Function(UserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserBuilder toBuilder() => UserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is User &&
        id == other.id &&
        email == other.email &&
        nickname == other.nickname &&
        createdAt == other.createdAt &&
        anonymous == other.anonymous &&
        group == other.group &&
        status == other.status &&
        avatar == other.avatar &&
        preferredTheme == other.preferredTheme &&
        credit == other.credit &&
        language == other.language &&
        disableViewSync == other.disableViewSync &&
        shareLinksInProfile == other.shareLinksInProfile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, nickname.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, anonymous.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, preferredTheme.hashCode);
    _$hash = $jc(_$hash, credit.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, disableViewSync.hashCode);
    _$hash = $jc(_$hash, shareLinksInProfile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'User')
          ..add('id', id)
          ..add('email', email)
          ..add('nickname', nickname)
          ..add('createdAt', createdAt)
          ..add('anonymous', anonymous)
          ..add('group', group)
          ..add('status', status)
          ..add('avatar', avatar)
          ..add('preferredTheme', preferredTheme)
          ..add('credit', credit)
          ..add('language', language)
          ..add('disableViewSync', disableViewSync)
          ..add('shareLinksInProfile', shareLinksInProfile))
        .toString();
  }
}

class UserBuilder implements Builder<User, UserBuilder> {
  _$User? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _nickname;
  String? get nickname => _$this._nickname;
  set nickname(String? nickname) => _$this._nickname = nickname;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  bool? _anonymous;
  bool? get anonymous => _$this._anonymous;
  set anonymous(bool? anonymous) => _$this._anonymous = anonymous;

  GroupBuilder? _group;
  GroupBuilder get group => _$this._group ??= GroupBuilder();
  set group(GroupBuilder? group) => _$this._group = group;

  UserStatusEnum? _status;
  UserStatusEnum? get status => _$this._status;
  set status(UserStatusEnum? status) => _$this._status = status;

  UserAvatarEnum? _avatar;
  UserAvatarEnum? get avatar => _$this._avatar;
  set avatar(UserAvatarEnum? avatar) => _$this._avatar = avatar;

  String? _preferredTheme;
  String? get preferredTheme => _$this._preferredTheme;
  set preferredTheme(String? preferredTheme) =>
      _$this._preferredTheme = preferredTheme;

  int? _credit;
  int? get credit => _$this._credit;
  set credit(int? credit) => _$this._credit = credit;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _disableViewSync;
  String? get disableViewSync => _$this._disableViewSync;
  set disableViewSync(String? disableViewSync) =>
      _$this._disableViewSync = disableViewSync;

  UserShareLinksInProfileEnum? _shareLinksInProfile;
  UserShareLinksInProfileEnum? get shareLinksInProfile =>
      _$this._shareLinksInProfile;
  set shareLinksInProfile(UserShareLinksInProfileEnum? shareLinksInProfile) =>
      _$this._shareLinksInProfile = shareLinksInProfile;

  UserBuilder() {
    User._defaults(this);
  }

  UserBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _nickname = $v.nickname;
      _createdAt = $v.createdAt;
      _anonymous = $v.anonymous;
      _group = $v.group?.toBuilder();
      _status = $v.status;
      _avatar = $v.avatar;
      _preferredTheme = $v.preferredTheme;
      _credit = $v.credit;
      _language = $v.language;
      _disableViewSync = $v.disableViewSync;
      _shareLinksInProfile = $v.shareLinksInProfile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(User other) {
    _$v = other as _$User;
  }

  @override
  void update(void Function(UserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  User build() => _build();

  _$User _build() {
    _$User _$result;
    try {
      _$result = _$v ??
          _$User._(
            id: id,
            email: email,
            nickname: nickname,
            createdAt: createdAt,
            anonymous: anonymous,
            group: _group?.build(),
            status: status,
            avatar: avatar,
            preferredTheme: preferredTheme,
            credit: credit,
            language: language,
            disableViewSync: disableViewSync,
            shareLinksInProfile: shareLinksInProfile,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'group';
        _group?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(r'User', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
