// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_owner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ShareOwnerShareLinksInProfileEnum
    _$shareOwnerShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket =
    const ShareOwnerShareLinksInProfileEnum._(
        'leftSquareBracketEmptyStringRightSquareBracket');
const ShareOwnerShareLinksInProfileEnum
    _$shareOwnerShareLinksInProfileEnum_allShare =
    const ShareOwnerShareLinksInProfileEnum._('allShare');
const ShareOwnerShareLinksInProfileEnum
    _$shareOwnerShareLinksInProfileEnum_hideShare =
    const ShareOwnerShareLinksInProfileEnum._('hideShare');

ShareOwnerShareLinksInProfileEnum _$shareOwnerShareLinksInProfileEnumValueOf(
    String name) {
  switch (name) {
    case 'leftSquareBracketEmptyStringRightSquareBracket':
      return _$shareOwnerShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket;
    case 'allShare':
      return _$shareOwnerShareLinksInProfileEnum_allShare;
    case 'hideShare':
      return _$shareOwnerShareLinksInProfileEnum_hideShare;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ShareOwnerShareLinksInProfileEnum>
    _$shareOwnerShareLinksInProfileEnumValues = BuiltSet<
        ShareOwnerShareLinksInProfileEnum>(const <ShareOwnerShareLinksInProfileEnum>[
  _$shareOwnerShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket,
  _$shareOwnerShareLinksInProfileEnum_allShare,
  _$shareOwnerShareLinksInProfileEnum_hideShare,
]);

Serializer<ShareOwnerShareLinksInProfileEnum>
    _$shareOwnerShareLinksInProfileEnumSerializer =
    _$ShareOwnerShareLinksInProfileEnumSerializer();

class _$ShareOwnerShareLinksInProfileEnumSerializer
    implements PrimitiveSerializer<ShareOwnerShareLinksInProfileEnum> {
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
  final Iterable<Type> types = const <Type>[ShareOwnerShareLinksInProfileEnum];
  @override
  final String wireName = 'ShareOwnerShareLinksInProfileEnum';

  @override
  Object serialize(
          Serializers serializers, ShareOwnerShareLinksInProfileEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ShareOwnerShareLinksInProfileEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ShareOwnerShareLinksInProfileEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ShareOwner extends ShareOwner {
  @override
  final String? id;
  @override
  final String? email;
  @override
  final String? nickname;
  @override
  final DateTime? createdAt;
  @override
  final Group? group;
  @override
  final String? disableViewSync;
  @override
  final ShareOwnerShareLinksInProfileEnum? shareLinksInProfile;

  factory _$ShareOwner([void Function(ShareOwnerBuilder)? updates]) =>
      (ShareOwnerBuilder()..update(updates))._build();

  _$ShareOwner._(
      {this.id,
      this.email,
      this.nickname,
      this.createdAt,
      this.group,
      this.disableViewSync,
      this.shareLinksInProfile})
      : super._();
  @override
  ShareOwner rebuild(void Function(ShareOwnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareOwnerBuilder toBuilder() => ShareOwnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareOwner &&
        id == other.id &&
        email == other.email &&
        nickname == other.nickname &&
        createdAt == other.createdAt &&
        group == other.group &&
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
    _$hash = $jc(_$hash, disableViewSync.hashCode);
    _$hash = $jc(_$hash, shareLinksInProfile.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ShareOwner')
          ..add('id', id)
          ..add('email', email)
          ..add('nickname', nickname)
          ..add('createdAt', createdAt)
          ..add('group', group)
          ..add('disableViewSync', disableViewSync)
          ..add('shareLinksInProfile', shareLinksInProfile))
        .toString();
  }
}

class ShareOwnerBuilder implements Builder<ShareOwner, ShareOwnerBuilder> {
  _$ShareOwner? _$v;

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

  GroupBuilder? _group;
  GroupBuilder get group => _$this._group ??= GroupBuilder();
  set group(GroupBuilder? group) => _$this._group = group;

  String? _disableViewSync;
  String? get disableViewSync => _$this._disableViewSync;
  set disableViewSync(String? disableViewSync) =>
      _$this._disableViewSync = disableViewSync;

  ShareOwnerShareLinksInProfileEnum? _shareLinksInProfile;
  ShareOwnerShareLinksInProfileEnum? get shareLinksInProfile =>
      _$this._shareLinksInProfile;
  set shareLinksInProfile(
          ShareOwnerShareLinksInProfileEnum? shareLinksInProfile) =>
      _$this._shareLinksInProfile = shareLinksInProfile;

  ShareOwnerBuilder() {
    ShareOwner._defaults(this);
  }

  ShareOwnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _email = $v.email;
      _nickname = $v.nickname;
      _createdAt = $v.createdAt;
      _group = $v.group?.toBuilder();
      _disableViewSync = $v.disableViewSync;
      _shareLinksInProfile = $v.shareLinksInProfile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ShareOwner other) {
    _$v = other as _$ShareOwner;
  }

  @override
  void update(void Function(ShareOwnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareOwner build() => _build();

  _$ShareOwner _build() {
    _$ShareOwner _$result;
    try {
      _$result = _$v ??
          _$ShareOwner._(
            id: id,
            email: email,
            nickname: nickname,
            createdAt: createdAt,
            group: _group?.build(),
            disableViewSync: disableViewSync,
            shareLinksInProfile: shareLinksInProfile,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'group';
        _group?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ShareOwner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
