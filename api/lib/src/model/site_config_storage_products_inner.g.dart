// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_config_storage_products_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SiteConfigStorageProductsInner extends SiteConfigStorageProductsInner {
  @override
  final AnyOf anyOf;

  factory _$SiteConfigStorageProductsInner(
          [void Function(SiteConfigStorageProductsInnerBuilder)? updates]) =>
      (SiteConfigStorageProductsInnerBuilder()..update(updates))._build();

  _$SiteConfigStorageProductsInner._({required this.anyOf}) : super._();
  @override
  SiteConfigStorageProductsInner rebuild(
          void Function(SiteConfigStorageProductsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SiteConfigStorageProductsInnerBuilder toBuilder() =>
      SiteConfigStorageProductsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SiteConfigStorageProductsInner && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SiteConfigStorageProductsInner')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class SiteConfigStorageProductsInnerBuilder
    implements
        Builder<SiteConfigStorageProductsInner,
            SiteConfigStorageProductsInnerBuilder> {
  _$SiteConfigStorageProductsInner? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  SiteConfigStorageProductsInnerBuilder() {
    SiteConfigStorageProductsInner._defaults(this);
  }

  SiteConfigStorageProductsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SiteConfigStorageProductsInner other) {
    _$v = other as _$SiteConfigStorageProductsInner;
  }

  @override
  void update(void Function(SiteConfigStorageProductsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SiteConfigStorageProductsInner build() => _build();

  _$SiteConfigStorageProductsInner _build() {
    final _$result = _$v ??
        _$SiteConfigStorageProductsInner._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf, r'SiteConfigStorageProductsInner', 'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
