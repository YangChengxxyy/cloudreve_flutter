// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_search_get200_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserSearchGet200ResponseDataInnerAvatarEnum
    _$userSearchGet200ResponseDataInnerAvatarEnum_file =
    const UserSearchGet200ResponseDataInnerAvatarEnum._('file');
const UserSearchGet200ResponseDataInnerAvatarEnum
    _$userSearchGet200ResponseDataInnerAvatarEnum_gravatar =
    const UserSearchGet200ResponseDataInnerAvatarEnum._('gravatar');

UserSearchGet200ResponseDataInnerAvatarEnum
    _$userSearchGet200ResponseDataInnerAvatarEnumValueOf(String name) {
  switch (name) {
    case 'file':
      return _$userSearchGet200ResponseDataInnerAvatarEnum_file;
    case 'gravatar':
      return _$userSearchGet200ResponseDataInnerAvatarEnum_gravatar;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UserSearchGet200ResponseDataInnerAvatarEnum>
    _$userSearchGet200ResponseDataInnerAvatarEnumValues = BuiltSet<
        UserSearchGet200ResponseDataInnerAvatarEnum>(const <UserSearchGet200ResponseDataInnerAvatarEnum>[
  _$userSearchGet200ResponseDataInnerAvatarEnum_file,
  _$userSearchGet200ResponseDataInnerAvatarEnum_gravatar,
]);

const UserSearchGet200ResponseDataInnerShareLinksInProfileEnum
    _$userSearchGet200ResponseDataInnerShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket =
    const UserSearchGet200ResponseDataInnerShareLinksInProfileEnum._(
        'leftSquareBracketEmptyStringRightSquareBracket');
const UserSearchGet200ResponseDataInnerShareLinksInProfileEnum
    _$userSearchGet200ResponseDataInnerShareLinksInProfileEnum_allShare =
    const UserSearchGet200ResponseDataInnerShareLinksInProfileEnum._(
        'allShare');
const UserSearchGet200ResponseDataInnerShareLinksInProfileEnum
    _$userSearchGet200ResponseDataInnerShareLinksInProfileEnum_hideShare =
    const UserSearchGet200ResponseDataInnerShareLinksInProfileEnum._(
        'hideShare');

UserSearchGet200ResponseDataInnerShareLinksInProfileEnum
    _$userSearchGet200ResponseDataInnerShareLinksInProfileEnumValueOf(
        String name) {
  switch (name) {
    case 'leftSquareBracketEmptyStringRightSquareBracket':
      return _$userSearchGet200ResponseDataInnerShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket;
    case 'allShare':
      return _$userSearchGet200ResponseDataInnerShareLinksInProfileEnum_allShare;
    case 'hideShare':
      return _$userSearchGet200ResponseDataInnerShareLinksInProfileEnum_hideShare;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UserSearchGet200ResponseDataInnerShareLinksInProfileEnum>
    _$userSearchGet200ResponseDataInnerShareLinksInProfileEnumValues = BuiltSet<
        UserSearchGet200ResponseDataInnerShareLinksInProfileEnum>(const <UserSearchGet200ResponseDataInnerShareLinksInProfileEnum>[
  _$userSearchGet200ResponseDataInnerShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket,
  _$userSearchGet200ResponseDataInnerShareLinksInProfileEnum_allShare,
  _$userSearchGet200ResponseDataInnerShareLinksInProfileEnum_hideShare,
]);

Serializer<UserSearchGet200ResponseDataInnerAvatarEnum>
    _$userSearchGet200ResponseDataInnerAvatarEnumSerializer =
    _$UserSearchGet200ResponseDataInnerAvatarEnumSerializer();
Serializer<UserSearchGet200ResponseDataInnerShareLinksInProfileEnum>
    _$userSearchGet200ResponseDataInnerShareLinksInProfileEnumSerializer =
    _$UserSearchGet200ResponseDataInnerShareLinksInProfileEnumSerializer();

class _$UserSearchGet200ResponseDataInnerAvatarEnumSerializer
    implements
        PrimitiveSerializer<UserSearchGet200ResponseDataInnerAvatarEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'file': 'file',
    'gravatar': 'gravatar',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'file': 'file',
    'gravatar': 'gravatar',
  };

  @override
  final Iterable<Type> types = const <Type>[
    UserSearchGet200ResponseDataInnerAvatarEnum
  ];
  @override
  final String wireName = 'UserSearchGet200ResponseDataInnerAvatarEnum';

  @override
  Object serialize(Serializers serializers,
          UserSearchGet200ResponseDataInnerAvatarEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserSearchGet200ResponseDataInnerAvatarEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserSearchGet200ResponseDataInnerAvatarEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UserSearchGet200ResponseDataInnerShareLinksInProfileEnumSerializer
    implements
        PrimitiveSerializer<
            UserSearchGet200ResponseDataInnerShareLinksInProfileEnum> {
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
  final Iterable<Type> types = const <Type>[
    UserSearchGet200ResponseDataInnerShareLinksInProfileEnum
  ];
  @override
  final String wireName =
      'UserSearchGet200ResponseDataInnerShareLinksInProfileEnum';

  @override
  Object serialize(Serializers serializers,
          UserSearchGet200ResponseDataInnerShareLinksInProfileEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserSearchGet200ResponseDataInnerShareLinksInProfileEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserSearchGet200ResponseDataInnerShareLinksInProfileEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UserSearchGet200ResponseDataInner
    extends UserSearchGet200ResponseDataInner {
  @override
  final String? id;
  @override
  final String? email;
  @override
  final String? nickname;
  @override
  final DateTime? createdAt;
  @override
  final UserSearchGet200ResponseDataInnerGroup? group;
  @override
  final UserSearchGet200ResponseDataInnerAvatarEnum? avatar;
  @override
  final UserSearchGet200ResponseDataInnerShareLinksInProfileEnum?
      shareLinksInProfile;

  factory _$UserSearchGet200ResponseDataInner(
          [void Function(UserSearchGet200ResponseDataInnerBuilder)? updates]) =>
      (UserSearchGet200ResponseDataInnerBuilder()..update(updates))._build();

  _$UserSearchGet200ResponseDataInner._(
      {this.id,
      this.email,
      this.nickname,
      this.createdAt,
      this.group,
      this.avatar,
      this.shareLinksInProfile})
      : super._();
  @override
  UserSearchGet200ResponseDataInner rebuild(
          void Function(UserSearchGet200ResponseDataInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSearchGet200ResponseDataInnerBuilder toBuilder() =>
      UserSearchGet200ResponseDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSearchGet200ResponseDataInner &&
        id == other.id &&
        email == other.email &&
        nickname == other.nickname &&
        createdAt == other.createdAt &&
        group == other.group &&
        avatar == other.avatar &&
        shareLinksInProfile == other.shareLinksInProfile;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, nickname.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, shareLinksInProfile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserSearchGet200ResponseDataInner')
          ..add('id', id)
          ..add('email', email)
          ..add('nickname', nickname)
          ..add('createdAt', createdAt)
          ..add('group', group)
          ..add('avatar', avatar)
          ..add('shareLinksInProfile', shareLinksInProfile))
        .toString();
  }
}

class UserSearchGet200ResponseDataInnerBuilder
    implements
        Builder<UserSearchGet200ResponseDataInner,
            UserSearchGet200ResponseDataInnerBuilder> {
  _$UserSearchGet200ResponseDataInner? _$v;

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

  UserSearchGet200ResponseDataInnerGroupBuilder? _group;
  UserSearchGet200ResponseDataInnerGroupBuilder get group =>
      _$this._group ??= UserSearchGet200ResponseDataInnerGroupBuilder();
  set group(UserSearchGet200ResponseDataInnerGroupBuilder? group) =>
      _$this._group = group;

  UserSearchGet200ResponseDataInnerAvatarEnum? _avatar;
  UserSearchGet200ResponseDataInnerAvatarEnum? get avatar => _$this._avatar;
  set avatar(UserSearchGet200ResponseDataInnerAvatarEnum? avatar) =>
      _$this._avatar = avatar;

  UserSearchGet200ResponseDataInnerShareLinksInProfileEnum?
      _shareLinksInProfile;
  UserSearchGet200ResponseDataInnerShareLinksInProfileEnum?
      get shareLinksInProfile => _$this._shareLinksInProfile;
  set shareLinksInProfile(
          UserSearchGet200ResponseDataInnerShareLinksInProfileEnum?
              shareLinksInProfile) =>
      _$this._shareLinksInProfile = shareLinksInProfile;

  UserSearchGet200ResponseDataInnerBuilder() {
    UserSearchGet200ResponseDataInner._defaults(this);
  }

  UserSearchGet200ResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _nickname = $v.nickname;
      _createdAt = $v.createdAt;
      _group = $v.group?.toBuilder();
      _avatar = $v.avatar;
      _shareLinksInProfile = $v.shareLinksInProfile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSearchGet200ResponseDataInner other) {
    _$v = other as _$UserSearchGet200ResponseDataInner;
  }

  @override
  void update(
      void Function(UserSearchGet200ResponseDataInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSearchGet200ResponseDataInner build() => _build();

  _$UserSearchGet200ResponseDataInner _build() {
    _$UserSearchGet200ResponseDataInner _$result;
    try {
      _$result = _$v ??
          _$UserSearchGet200ResponseDataInner._(
            id: id,
            email: email,
            nickname: nickname,
            createdAt: createdAt,
            group: _group?.build(),
            avatar: avatar,
            shareLinksInProfile: shareLinksInProfile,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'group';
        _group?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserSearchGet200ResponseDataInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
