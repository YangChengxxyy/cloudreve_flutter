// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_config_group_skus_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SiteConfigGroupSkusInner extends SiteConfigGroupSkusInner {
  @override
  final AnyOf anyOf;

  factory _$SiteConfigGroupSkusInner(
          [void Function(SiteConfigGroupSkusInnerBuilder)? updates]) =>
      (SiteConfigGroupSkusInnerBuilder()..update(updates))._build();

  _$SiteConfigGroupSkusInner._({required this.anyOf}) : super._();
  @override
  SiteConfigGroupSkusInner rebuild(
          void Function(SiteConfigGroupSkusInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SiteConfigGroupSkusInnerBuilder toBuilder() =>
      SiteConfigGroupSkusInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SiteConfigGroupSkusInner && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'SiteConfigGroupSkusInner')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class SiteConfigGroupSkusInnerBuilder
    implements
        Builder<SiteConfigGroupSkusInner, SiteConfigGroupSkusInnerBuilder> {
  _$SiteConfigGroupSkusInner? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  SiteConfigGroupSkusInnerBuilder() {
    SiteConfigGroupSkusInner._defaults(this);
  }

  SiteConfigGroupSkusInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SiteConfigGroupSkusInner other) {
    _$v = other as _$SiteConfigGroupSkusInner;
  }

  @override
  void update(void Function(SiteConfigGroupSkusInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SiteConfigGroupSkusInner build() => _build();

  _$SiteConfigGroupSkusInner _build() {
    final _$result = _$v ??
        _$SiteConfigGroupSkusInner._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf, r'SiteConfigGroupSkusInner', 'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
