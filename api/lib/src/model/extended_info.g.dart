// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_info.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ExtendedInfo extends ExtendedInfo {
  @override
  final ExtendedInfoStoragePolicy? storagePolicy;
  @override
  final bool? storagePolicyInherited;
  @override
  final int? storageUsed;
  @override
  final BuiltList<Share>? shares;
  @override
  final BuiltList<Entity>? entities;
  @override
  final PermissionSetting? permissions;
  @override
  final BuiltList<ExtendedInfoDirectLinksInner>? directLinks;

  factory _$ExtendedInfo([void Function(ExtendedInfoBuilder)? updates]) =>
      (ExtendedInfoBuilder()..update(updates))._build();

  _$ExtendedInfo._(
      {this.storagePolicy,
      this.storagePolicyInherited,
      this.storageUsed,
      this.shares,
      this.entities,
      this.permissions,
      this.directLinks})
      : super._();
  @override
  ExtendedInfo rebuild(void Function(ExtendedInfoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExtendedInfoBuilder toBuilder() => ExtendedInfoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExtendedInfo &&
        storagePolicy == other.storagePolicy &&
        storagePolicyInherited == other.storagePolicyInherited &&
        storageUsed == other.storageUsed &&
        shares == other.shares &&
        entities == other.entities &&
        permissions == other.permissions &&
        directLinks == other.directLinks;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, storagePolicy.hashCode);
    _$hash = $jc(_$hash, storagePolicyInherited.hashCode);
    _$hash = $jc(_$hash, storageUsed.hashCode);
    _$hash = $jc(_$hash, shares.hashCode);
    _$hash = $jc(_$hash, entities.hashCode);
    _$hash = $jc(_$hash, permissions.hashCode);
    _$hash = $jc(_$hash, directLinks.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExtendedInfo')
          ..add('storagePolicy', storagePolicy)
          ..add('storagePolicyInherited', storagePolicyInherited)
          ..add('storageUsed', storageUsed)
          ..add('shares', shares)
          ..add('entities', entities)
          ..add('permissions', permissions)
          ..add('directLinks', directLinks))
        .toString();
  }
}

class ExtendedInfoBuilder
    implements Builder<ExtendedInfo, ExtendedInfoBuilder> {
  _$ExtendedInfo? _$v;

  ExtendedInfoStoragePolicyBuilder? _storagePolicy;
  ExtendedInfoStoragePolicyBuilder get storagePolicy =>
      _$this._storagePolicy ??= ExtendedInfoStoragePolicyBuilder();
  set storagePolicy(ExtendedInfoStoragePolicyBuilder? storagePolicy) =>
      _$this._storagePolicy = storagePolicy;

  bool? _storagePolicyInherited;
  bool? get storagePolicyInherited => _$this._storagePolicyInherited;
  set storagePolicyInherited(bool? storagePolicyInherited) =>
      _$this._storagePolicyInherited = storagePolicyInherited;

  int? _storageUsed;
  int? get storageUsed => _$this._storageUsed;
  set storageUsed(int? storageUsed) => _$this._storageUsed = storageUsed;

  ListBuilder<Share>? _shares;
  ListBuilder<Share> get shares => _$this._shares ??= ListBuilder<Share>();
  set shares(ListBuilder<Share>? shares) => _$this._shares = shares;

  ListBuilder<Entity>? _entities;
  ListBuilder<Entity> get entities =>
      _$this._entities ??= ListBuilder<Entity>();
  set entities(ListBuilder<Entity>? entities) => _$this._entities = entities;

  PermissionSettingBuilder? _permissions;
  PermissionSettingBuilder get permissions =>
      _$this._permissions ??= PermissionSettingBuilder();
  set permissions(PermissionSettingBuilder? permissions) =>
      _$this._permissions = permissions;

  ListBuilder<ExtendedInfoDirectLinksInner>? _directLinks;
  ListBuilder<ExtendedInfoDirectLinksInner> get directLinks =>
      _$this._directLinks ??= ListBuilder<ExtendedInfoDirectLinksInner>();
  set directLinks(ListBuilder<ExtendedInfoDirectLinksInner>? directLinks) =>
      _$this._directLinks = directLinks;

  ExtendedInfoBuilder() {
    ExtendedInfo._defaults(this);
  }

  ExtendedInfoBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _storagePolicy = $v.storagePolicy?.toBuilder();
      _storagePolicyInherited = $v.storagePolicyInherited;
      _storageUsed = $v.storageUsed;
      _shares = $v.shares?.toBuilder();
      _entities = $v.entities?.toBuilder();
      _permissions = $v.permissions?.toBuilder();
      _directLinks = $v.directLinks?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExtendedInfo other) {
    _$v = other as _$ExtendedInfo;
  }

  @override
  void update(void Function(ExtendedInfoBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExtendedInfo build() => _build();

  _$ExtendedInfo _build() {
    _$ExtendedInfo _$result;
    try {
      _$result = _$v ??
          _$ExtendedInfo._(
            storagePolicy: _storagePolicy?.build(),
            storagePolicyInherited: storagePolicyInherited,
            storageUsed: storageUsed,
            shares: _shares?.build(),
            entities: _entities?.build(),
            permissions: _permissions?.build(),
            directLinks: _directLinks?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'storagePolicy';
        _storagePolicy?.build();

        _$failedField = 'shares';
        _shares?.build();
        _$failedField = 'entities';
        _entities?.build();
        _$failedField = 'permissions';
        _permissions?.build();
        _$failedField = 'directLinks';
        _directLinks?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ExtendedInfo', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
