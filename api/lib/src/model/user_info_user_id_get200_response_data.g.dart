// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_info_user_id_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const UserInfoUserIdGet200ResponseDataAvatarEnum
    _$userInfoUserIdGet200ResponseDataAvatarEnum_file =
    const UserInfoUserIdGet200ResponseDataAvatarEnum._('file');
const UserInfoUserIdGet200ResponseDataAvatarEnum
    _$userInfoUserIdGet200ResponseDataAvatarEnum_gravatar =
    const UserInfoUserIdGet200ResponseDataAvatarEnum._('gravatar');

UserInfoUserIdGet200ResponseDataAvatarEnum
    _$userInfoUserIdGet200ResponseDataAvatarEnumValueOf(String name) {
  switch (name) {
    case 'file':
      return _$userInfoUserIdGet200ResponseDataAvatarEnum_file;
    case 'gravatar':
      return _$userInfoUserIdGet200ResponseDataAvatarEnum_gravatar;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UserInfoUserIdGet200ResponseDataAvatarEnum>
    _$userInfoUserIdGet200ResponseDataAvatarEnumValues = BuiltSet<
        UserInfoUserIdGet200ResponseDataAvatarEnum>(const <UserInfoUserIdGet200ResponseDataAvatarEnum>[
  _$userInfoUserIdGet200ResponseDataAvatarEnum_file,
  _$userInfoUserIdGet200ResponseDataAvatarEnum_gravatar,
]);

const UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum
    _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket =
    const UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum._(
        'leftSquareBracketEmptyStringRightSquareBracket');
const UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum
    _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnum_allShare =
    const UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum._('allShare');
const UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum
    _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnum_hideShare =
    const UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum._(
        'hideShare');

UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum
    _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnumValueOf(
        String name) {
  switch (name) {
    case 'leftSquareBracketEmptyStringRightSquareBracket':
      return _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket;
    case 'allShare':
      return _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnum_allShare;
    case 'hideShare':
      return _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnum_hideShare;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum>
    _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnumValues = BuiltSet<
        UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum>(const <UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum>[
  _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket,
  _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnum_allShare,
  _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnum_hideShare,
]);

Serializer<UserInfoUserIdGet200ResponseDataAvatarEnum>
    _$userInfoUserIdGet200ResponseDataAvatarEnumSerializer =
    _$UserInfoUserIdGet200ResponseDataAvatarEnumSerializer();
Serializer<UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum>
    _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnumSerializer =
    _$UserInfoUserIdGet200ResponseDataShareLinksInProfileEnumSerializer();

class _$UserInfoUserIdGet200ResponseDataAvatarEnumSerializer
    implements PrimitiveSerializer<UserInfoUserIdGet200ResponseDataAvatarEnum> {
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
    UserInfoUserIdGet200ResponseDataAvatarEnum
  ];
  @override
  final String wireName = 'UserInfoUserIdGet200ResponseDataAvatarEnum';

  @override
  Object serialize(Serializers serializers,
          UserInfoUserIdGet200ResponseDataAvatarEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserInfoUserIdGet200ResponseDataAvatarEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserInfoUserIdGet200ResponseDataAvatarEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UserInfoUserIdGet200ResponseDataShareLinksInProfileEnumSerializer
    implements
        PrimitiveSerializer<
            UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum> {
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
    UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum
  ];
  @override
  final String wireName =
      'UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum';

  @override
  Object serialize(Serializers serializers,
          UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$UserInfoUserIdGet200ResponseData
    extends UserInfoUserIdGet200ResponseData {
  @override
  final String id;
  @override
  final String? email;
  @override
  final String? nickname;
  @override
  final DateTime createdAt;
  @override
  final UserInfoUserIdGet200ResponseDataGroup group;
  @override
  final UserInfoUserIdGet200ResponseDataAvatarEnum? avatar;
  @override
  final UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum?
      shareLinksInProfile;

  factory _$UserInfoUserIdGet200ResponseData(
          [void Function(UserInfoUserIdGet200ResponseDataBuilder)? updates]) =>
      (UserInfoUserIdGet200ResponseDataBuilder()..update(updates))._build();

  _$UserInfoUserIdGet200ResponseData._(
      {required this.id,
      this.email,
      this.nickname,
      required this.createdAt,
      required this.group,
      this.avatar,
      this.shareLinksInProfile})
      : super._();
  @override
  UserInfoUserIdGet200ResponseData rebuild(
          void Function(UserInfoUserIdGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserInfoUserIdGet200ResponseDataBuilder toBuilder() =>
      UserInfoUserIdGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserInfoUserIdGet200ResponseData &&
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
    return (newBuiltValueToStringHelper(r'UserInfoUserIdGet200ResponseData')
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

class UserInfoUserIdGet200ResponseDataBuilder
    implements
        Builder<UserInfoUserIdGet200ResponseData,
            UserInfoUserIdGet200ResponseDataBuilder> {
  _$UserInfoUserIdGet200ResponseData? _$v;

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

  UserInfoUserIdGet200ResponseDataGroupBuilder? _group;
  UserInfoUserIdGet200ResponseDataGroupBuilder get group =>
      _$this._group ??= UserInfoUserIdGet200ResponseDataGroupBuilder();
  set group(UserInfoUserIdGet200ResponseDataGroupBuilder? group) =>
      _$this._group = group;

  UserInfoUserIdGet200ResponseDataAvatarEnum? _avatar;
  UserInfoUserIdGet200ResponseDataAvatarEnum? get avatar => _$this._avatar;
  set avatar(UserInfoUserIdGet200ResponseDataAvatarEnum? avatar) =>
      _$this._avatar = avatar;

  UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum? _shareLinksInProfile;
  UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum?
      get shareLinksInProfile => _$this._shareLinksInProfile;
  set shareLinksInProfile(
          UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum?
              shareLinksInProfile) =>
      _$this._shareLinksInProfile = shareLinksInProfile;

  UserInfoUserIdGet200ResponseDataBuilder() {
    UserInfoUserIdGet200ResponseData._defaults(this);
  }

  UserInfoUserIdGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _nickname = $v.nickname;
      _createdAt = $v.createdAt;
      _group = $v.group.toBuilder();
      _avatar = $v.avatar;
      _shareLinksInProfile = $v.shareLinksInProfile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserInfoUserIdGet200ResponseData other) {
    _$v = other as _$UserInfoUserIdGet200ResponseData;
  }

  @override
  void update(void Function(UserInfoUserIdGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserInfoUserIdGet200ResponseData build() => _build();

  _$UserInfoUserIdGet200ResponseData _build() {
    _$UserInfoUserIdGet200ResponseData _$result;
    try {
      _$result = _$v ??
          _$UserInfoUserIdGet200ResponseData._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'UserInfoUserIdGet200ResponseData', 'id'),
            email: email,
            nickname: nickname,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'UserInfoUserIdGet200ResponseData', 'createdAt'),
            group: group.build(),
            avatar: avatar,
            shareLinksInProfile: shareLinksInProfile,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'group';
        group.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'UserInfoUserIdGet200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
