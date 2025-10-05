// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_config_custom_nav_items_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SiteConfigCustomNavItemsInner extends SiteConfigCustomNavItemsInner {
  @override
  final String? icon;
  @override
  final String? name;
  @override
  final String? url;

  factory _$SiteConfigCustomNavItemsInner(
          [void Function(SiteConfigCustomNavItemsInnerBuilder)? updates]) =>
      (SiteConfigCustomNavItemsInnerBuilder()..update(updates))._build();

  _$SiteConfigCustomNavItemsInner._({this.icon, this.name, this.url})
      : super._();
  @override
  SiteConfigCustomNavItemsInner rebuild(
          void Function(SiteConfigCustomNavItemsInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SiteConfigCustomNavItemsInnerBuilder toBuilder() =>
      SiteConfigCustomNavItemsInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SiteConfigCustomNavItemsInner &&
        icon == other.icon &&
        name == other.name &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SiteConfigCustomNavItemsInner')
          ..add('icon', icon)
          ..add('name', name)
          ..add('url', url))
        .toString();
  }
}

class SiteConfigCustomNavItemsInnerBuilder
    implements
        Builder<SiteConfigCustomNavItemsInner,
            SiteConfigCustomNavItemsInnerBuilder> {
  _$SiteConfigCustomNavItemsInner? _$v;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  SiteConfigCustomNavItemsInnerBuilder() {
    SiteConfigCustomNavItemsInner._defaults(this);
  }

  SiteConfigCustomNavItemsInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _icon = $v.icon;
      _name = $v.name;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SiteConfigCustomNavItemsInner other) {
    _$v = other as _$SiteConfigCustomNavItemsInner;
  }

  @override
  void update(void Function(SiteConfigCustomNavItemsInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SiteConfigCustomNavItemsInner build() => _build();

  _$SiteConfigCustomNavItemsInner _build() {
    final _$result = _$v ??
        _$SiteConfigCustomNavItemsInner._(
          icon: icon,
          name: name,
          url: url,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
