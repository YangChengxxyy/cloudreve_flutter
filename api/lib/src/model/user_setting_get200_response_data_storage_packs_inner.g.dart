// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_setting_get200_response_data_storage_packs_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserSettingGet200ResponseDataStoragePacksInner
    extends UserSettingGet200ResponseDataStoragePacksInner {
  @override
  final String? name;
  @override
  final DateTime? activeSince;
  @override
  final DateTime? expireAt;
  @override
  final int? size;

  factory _$UserSettingGet200ResponseDataStoragePacksInner(
          [void Function(UserSettingGet200ResponseDataStoragePacksInnerBuilder)?
              updates]) =>
      (UserSettingGet200ResponseDataStoragePacksInnerBuilder()..update(updates))
          ._build();

  _$UserSettingGet200ResponseDataStoragePacksInner._(
      {this.name, this.activeSince, this.expireAt, this.size})
      : super._();
  @override
  UserSettingGet200ResponseDataStoragePacksInner rebuild(
          void Function(UserSettingGet200ResponseDataStoragePacksInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserSettingGet200ResponseDataStoragePacksInnerBuilder toBuilder() =>
      UserSettingGet200ResponseDataStoragePacksInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserSettingGet200ResponseDataStoragePacksInner &&
        name == other.name &&
        activeSince == other.activeSince &&
        expireAt == other.expireAt &&
        size == other.size;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, activeSince.hashCode);
    _$hash = $jc(_$hash, expireAt.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'UserSettingGet200ResponseDataStoragePacksInner')
          ..add('name', name)
          ..add('activeSince', activeSince)
          ..add('expireAt', expireAt)
          ..add('size', size))
        .toString();
  }
}

class UserSettingGet200ResponseDataStoragePacksInnerBuilder
    implements
        Builder<UserSettingGet200ResponseDataStoragePacksInner,
            UserSettingGet200ResponseDataStoragePacksInnerBuilder> {
  _$UserSettingGet200ResponseDataStoragePacksInner? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  DateTime? _activeSince;
  DateTime? get activeSince => _$this._activeSince;
  set activeSince(DateTime? activeSince) => _$this._activeSince = activeSince;

  DateTime? _expireAt;
  DateTime? get expireAt => _$this._expireAt;
  set expireAt(DateTime? expireAt) => _$this._expireAt = expireAt;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  UserSettingGet200ResponseDataStoragePacksInnerBuilder() {
    UserSettingGet200ResponseDataStoragePacksInner._defaults(this);
  }

  UserSettingGet200ResponseDataStoragePacksInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _activeSince = $v.activeSince;
      _expireAt = $v.expireAt;
      _size = $v.size;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserSettingGet200ResponseDataStoragePacksInner other) {
    _$v = other as _$UserSettingGet200ResponseDataStoragePacksInner;
  }

  @override
  void update(
      void Function(UserSettingGet200ResponseDataStoragePacksInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  UserSettingGet200ResponseDataStoragePacksInner build() => _build();

  _$UserSettingGet200ResponseDataStoragePacksInner _build() {
    final _$result = _$v ??
        _$UserSettingGet200ResponseDataStoragePacksInner._(
          name: name,
          activeSince: activeSince,
          expireAt: expireAt,
          size: size,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
