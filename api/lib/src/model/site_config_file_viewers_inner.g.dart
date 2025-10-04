// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_config_file_viewers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SiteConfigFileViewersInner extends SiteConfigFileViewersInner {
  @override
  final AnyOf anyOf;

  factory _$SiteConfigFileViewersInner(
          [void Function(SiteConfigFileViewersInnerBuilder)? updates]) =>
      (SiteConfigFileViewersInnerBuilder()..update(updates))._build();

  _$SiteConfigFileViewersInner._({required this.anyOf}) : super._();
  @override
  SiteConfigFileViewersInner rebuild(
          void Function(SiteConfigFileViewersInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SiteConfigFileViewersInnerBuilder toBuilder() =>
      SiteConfigFileViewersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SiteConfigFileViewersInner && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'SiteConfigFileViewersInner')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class SiteConfigFileViewersInnerBuilder
    implements
        Builder<SiteConfigFileViewersInner, SiteConfigFileViewersInnerBuilder> {
  _$SiteConfigFileViewersInner? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  SiteConfigFileViewersInnerBuilder() {
    SiteConfigFileViewersInner._defaults(this);
  }

  SiteConfigFileViewersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SiteConfigFileViewersInner other) {
    _$v = other as _$SiteConfigFileViewersInner;
  }

  @override
  void update(void Function(SiteConfigFileViewersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SiteConfigFileViewersInner build() => _build();

  _$SiteConfigFileViewersInner _build() {
    final _$result = _$v ??
        _$SiteConfigFileViewersInner._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf, r'SiteConfigFileViewersInner', 'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
