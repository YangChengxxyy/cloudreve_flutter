// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_created_by.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EntityCreatedByAvatarEnum _$entityCreatedByAvatarEnum_file =
    const EntityCreatedByAvatarEnum._('file');
const EntityCreatedByAvatarEnum _$entityCreatedByAvatarEnum_gravatar =
    const EntityCreatedByAvatarEnum._('gravatar');

EntityCreatedByAvatarEnum _$entityCreatedByAvatarEnumValueOf(String name) {
  switch (name) {
    case 'file':
      return _$entityCreatedByAvatarEnum_file;
    case 'gravatar':
      return _$entityCreatedByAvatarEnum_gravatar;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EntityCreatedByAvatarEnum> _$entityCreatedByAvatarEnumValues =
    BuiltSet<EntityCreatedByAvatarEnum>(const <EntityCreatedByAvatarEnum>[
  _$entityCreatedByAvatarEnum_file,
  _$entityCreatedByAvatarEnum_gravatar,
]);

const EntityCreatedByShareLinksInProfileEnum
    _$entityCreatedByShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket =
    const EntityCreatedByShareLinksInProfileEnum._(
        'leftSquareBracketEmptyStringRightSquareBracket');
const EntityCreatedByShareLinksInProfileEnum
    _$entityCreatedByShareLinksInProfileEnum_allShare =
    const EntityCreatedByShareLinksInProfileEnum._('allShare');
const EntityCreatedByShareLinksInProfileEnum
    _$entityCreatedByShareLinksInProfileEnum_hideShare =
    const EntityCreatedByShareLinksInProfileEnum._('hideShare');

EntityCreatedByShareLinksInProfileEnum
    _$entityCreatedByShareLinksInProfileEnumValueOf(String name) {
  switch (name) {
    case 'leftSquareBracketEmptyStringRightSquareBracket':
      return _$entityCreatedByShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket;
    case 'allShare':
      return _$entityCreatedByShareLinksInProfileEnum_allShare;
    case 'hideShare':
      return _$entityCreatedByShareLinksInProfileEnum_hideShare;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EntityCreatedByShareLinksInProfileEnum>
    _$entityCreatedByShareLinksInProfileEnumValues = BuiltSet<
        EntityCreatedByShareLinksInProfileEnum>(const <EntityCreatedByShareLinksInProfileEnum>[
  _$entityCreatedByShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket,
  _$entityCreatedByShareLinksInProfileEnum_allShare,
  _$entityCreatedByShareLinksInProfileEnum_hideShare,
]);

Serializer<EntityCreatedByAvatarEnum> _$entityCreatedByAvatarEnumSerializer =
    _$EntityCreatedByAvatarEnumSerializer();
Serializer<EntityCreatedByShareLinksInProfileEnum>
    _$entityCreatedByShareLinksInProfileEnumSerializer =
    _$EntityCreatedByShareLinksInProfileEnumSerializer();

class _$EntityCreatedByAvatarEnumSerializer
    implements PrimitiveSerializer<EntityCreatedByAvatarEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'file': 'file',
    'gravatar': 'gravatar',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'file': 'file',
    'gravatar': 'gravatar',
  };

  @override
  final Iterable<Type> types = const <Type>[EntityCreatedByAvatarEnum];
  @override
  final String wireName = 'EntityCreatedByAvatarEnum';

  @override
  Object serialize(Serializers serializers, EntityCreatedByAvatarEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EntityCreatedByAvatarEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EntityCreatedByAvatarEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EntityCreatedByShareLinksInProfileEnumSerializer
    implements PrimitiveSerializer<EntityCreatedByShareLinksInProfileEnum> {
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
    EntityCreatedByShareLinksInProfileEnum
  ];
  @override
  final String wireName = 'EntityCreatedByShareLinksInProfileEnum';

  @override
  Object serialize(Serializers serializers,
          EntityCreatedByShareLinksInProfileEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EntityCreatedByShareLinksInProfileEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EntityCreatedByShareLinksInProfileEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EntityCreatedBy extends EntityCreatedBy {
  @override
  final String id;
  @override
  final String? email;
  @override
  final String? nickname;
  @override
  final DateTime createdAt;
  @override
  final EntityCreatedByGroup group;
  @override
  final EntityCreatedByAvatarEnum? avatar;
  @override
  final String? disableViewSync;
  @override
  final EntityCreatedByShareLinksInProfileEnum? shareLinksInProfile;

  factory _$EntityCreatedBy([void Function(EntityCreatedByBuilder)? updates]) =>
      (EntityCreatedByBuilder()..update(updates))._build();

  _$EntityCreatedBy._(
      {required this.id,
      this.email,
      this.nickname,
      required this.createdAt,
      required this.group,
      this.avatar,
      this.disableViewSync,
      this.shareLinksInProfile})
      : super._();
  @override
  EntityCreatedBy rebuild(void Function(EntityCreatedByBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityCreatedByBuilder toBuilder() => EntityCreatedByBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityCreatedBy &&
        id == other.id &&
        email == other.email &&
        nickname == other.nickname &&
        createdAt == other.createdAt &&
        group == other.group &&
        avatar == other.avatar &&
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
    _$hash = $jc(_$hash, group.hashCode);
    _$hash = $jc(_$hash, avatar.hashCode);
    _$hash = $jc(_$hash, disableViewSync.hashCode);
    _$hash = $jc(_$hash, shareLinksInProfile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityCreatedBy')
          ..add('id', id)
          ..add('email', email)
          ..add('nickname', nickname)
          ..add('createdAt', createdAt)
          ..add('group', group)
          ..add('avatar', avatar)
          ..add('disableViewSync', disableViewSync)
          ..add('shareLinksInProfile', shareLinksInProfile))
        .toString();
  }
}

class EntityCreatedByBuilder
    implements Builder<EntityCreatedBy, EntityCreatedByBuilder> {
  _$EntityCreatedBy? _$v;

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

  EntityCreatedByGroupBuilder? _group;
  EntityCreatedByGroupBuilder get group =>
      _$this._group ??= EntityCreatedByGroupBuilder();
  set group(EntityCreatedByGroupBuilder? group) => _$this._group = group;

  EntityCreatedByAvatarEnum? _avatar;
  EntityCreatedByAvatarEnum? get avatar => _$this._avatar;
  set avatar(EntityCreatedByAvatarEnum? avatar) => _$this._avatar = avatar;

  String? _disableViewSync;
  String? get disableViewSync => _$this._disableViewSync;
  set disableViewSync(String? disableViewSync) =>
      _$this._disableViewSync = disableViewSync;

  EntityCreatedByShareLinksInProfileEnum? _shareLinksInProfile;
  EntityCreatedByShareLinksInProfileEnum? get shareLinksInProfile =>
      _$this._shareLinksInProfile;
  set shareLinksInProfile(
          EntityCreatedByShareLinksInProfileEnum? shareLinksInProfile) =>
      _$this._shareLinksInProfile = shareLinksInProfile;

  EntityCreatedByBuilder() {
    EntityCreatedBy._defaults(this);
  }

  EntityCreatedByBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _nickname = $v.nickname;
      _createdAt = $v.createdAt;
      _group = $v.group.toBuilder();
      _avatar = $v.avatar;
      _disableViewSync = $v.disableViewSync;
      _shareLinksInProfile = $v.shareLinksInProfile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityCreatedBy other) {
    _$v = other as _$EntityCreatedBy;
  }

  @override
  void update(void Function(EntityCreatedByBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityCreatedBy build() => _build();

  _$EntityCreatedBy _build() {
    _$EntityCreatedBy _$result;
    try {
      _$result = _$v ??
          _$EntityCreatedBy._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'EntityCreatedBy', 'id'),
            email: email,
            nickname: nickname,
            createdAt: BuiltValueNullFieldError.checkNotNull(
                createdAt, r'EntityCreatedBy', 'createdAt'),
            group: group.build(),
            avatar: avatar,
            disableViewSync: disableViewSync,
            shareLinksInProfile: shareLinksInProfile,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'group';
        group.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'EntityCreatedBy', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
