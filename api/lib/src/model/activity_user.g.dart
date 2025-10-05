// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'activity_user.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ActivityUserAvatarEnum _$activityUserAvatarEnum_file =
    const ActivityUserAvatarEnum._('file');
const ActivityUserAvatarEnum _$activityUserAvatarEnum_gravatar =
    const ActivityUserAvatarEnum._('gravatar');

ActivityUserAvatarEnum _$activityUserAvatarEnumValueOf(String name) {
  switch (name) {
    case 'file':
      return _$activityUserAvatarEnum_file;
    case 'gravatar':
      return _$activityUserAvatarEnum_gravatar;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ActivityUserAvatarEnum> _$activityUserAvatarEnumValues =
    BuiltSet<ActivityUserAvatarEnum>(const <ActivityUserAvatarEnum>[
  _$activityUserAvatarEnum_file,
  _$activityUserAvatarEnum_gravatar,
]);

const ActivityUserShareLinksInProfileEnum
    _$activityUserShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket =
    const ActivityUserShareLinksInProfileEnum._(
        'leftSquareBracketEmptyStringRightSquareBracket');
const ActivityUserShareLinksInProfileEnum
    _$activityUserShareLinksInProfileEnum_allShare =
    const ActivityUserShareLinksInProfileEnum._('allShare');
const ActivityUserShareLinksInProfileEnum
    _$activityUserShareLinksInProfileEnum_hideShare =
    const ActivityUserShareLinksInProfileEnum._('hideShare');

ActivityUserShareLinksInProfileEnum
    _$activityUserShareLinksInProfileEnumValueOf(String name) {
  switch (name) {
    case 'leftSquareBracketEmptyStringRightSquareBracket':
      return _$activityUserShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket;
    case 'allShare':
      return _$activityUserShareLinksInProfileEnum_allShare;
    case 'hideShare':
      return _$activityUserShareLinksInProfileEnum_hideShare;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ActivityUserShareLinksInProfileEnum>
    _$activityUserShareLinksInProfileEnumValues = BuiltSet<
        ActivityUserShareLinksInProfileEnum>(const <ActivityUserShareLinksInProfileEnum>[
  _$activityUserShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket,
  _$activityUserShareLinksInProfileEnum_allShare,
  _$activityUserShareLinksInProfileEnum_hideShare,
]);

Serializer<ActivityUserAvatarEnum> _$activityUserAvatarEnumSerializer =
    _$ActivityUserAvatarEnumSerializer();
Serializer<ActivityUserShareLinksInProfileEnum>
    _$activityUserShareLinksInProfileEnumSerializer =
    _$ActivityUserShareLinksInProfileEnumSerializer();

class _$ActivityUserAvatarEnumSerializer
    implements PrimitiveSerializer<ActivityUserAvatarEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'file': 'file',
    'gravatar': 'gravatar',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'file': 'file',
    'gravatar': 'gravatar',
  };

  @override
  final Iterable<Type> types = const <Type>[ActivityUserAvatarEnum];
  @override
  final String wireName = 'ActivityUserAvatarEnum';

  @override
  Object serialize(Serializers serializers, ActivityUserAvatarEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActivityUserAvatarEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActivityUserAvatarEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ActivityUserShareLinksInProfileEnumSerializer
    implements PrimitiveSerializer<ActivityUserShareLinksInProfileEnum> {
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
    ActivityUserShareLinksInProfileEnum
  ];
  @override
  final String wireName = 'ActivityUserShareLinksInProfileEnum';

  @override
  Object serialize(
          Serializers serializers, ActivityUserShareLinksInProfileEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ActivityUserShareLinksInProfileEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ActivityUserShareLinksInProfileEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ActivityUser extends ActivityUser {
  @override
  final String? id;
  @override
  final String? email;
  @override
  final String? nickname;
  @override
  final DateTime? createdAt;
  @override
  final ActivityUserGroup? group;
  @override
  final ActivityUserAvatarEnum? avatar;
  @override
  final ActivityUserShareLinksInProfileEnum? shareLinksInProfile;

  factory _$ActivityUser([void Function(ActivityUserBuilder)? updates]) =>
      (ActivityUserBuilder()..update(updates))._build();

  _$ActivityUser._(
      {this.id,
      this.email,
      this.nickname,
      this.createdAt,
      this.group,
      this.avatar,
      this.shareLinksInProfile})
      : super._();
  @override
  ActivityUser rebuild(void Function(ActivityUserBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActivityUserBuilder toBuilder() => ActivityUserBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ActivityUser &&
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
    return (newBuiltValueToStringHelper(r'ActivityUser')
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

class ActivityUserBuilder
    implements Builder<ActivityUser, ActivityUserBuilder> {
  _$ActivityUser? _$v;

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

  ActivityUserGroupBuilder? _group;
  ActivityUserGroupBuilder get group =>
      _$this._group ??= ActivityUserGroupBuilder();
  set group(ActivityUserGroupBuilder? group) => _$this._group = group;

  ActivityUserAvatarEnum? _avatar;
  ActivityUserAvatarEnum? get avatar => _$this._avatar;
  set avatar(ActivityUserAvatarEnum? avatar) => _$this._avatar = avatar;

  ActivityUserShareLinksInProfileEnum? _shareLinksInProfile;
  ActivityUserShareLinksInProfileEnum? get shareLinksInProfile =>
      _$this._shareLinksInProfile;
  set shareLinksInProfile(
          ActivityUserShareLinksInProfileEnum? shareLinksInProfile) =>
      _$this._shareLinksInProfile = shareLinksInProfile;

  ActivityUserBuilder() {
    ActivityUser._defaults(this);
  }

  ActivityUserBuilder get _$this {
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
  void replace(ActivityUser other) {
    _$v = other as _$ActivityUser;
  }

  @override
  void update(void Function(ActivityUserBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ActivityUser build() => _build();

  _$ActivityUser _build() {
    _$ActivityUser _$result;
    try {
      _$result = _$v ??
          _$ActivityUser._(
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
            r'ActivityUser', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
