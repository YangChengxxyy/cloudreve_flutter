// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_nav_item.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomNavItem extends CustomNavItem {
  @override
  final String? icon;
  @override
  final String? name;
  @override
  final String? url;

  factory _$CustomNavItem([void Function(CustomNavItemBuilder)? updates]) =>
      (CustomNavItemBuilder()..update(updates))._build();

  _$CustomNavItem._({this.icon, this.name, this.url}) : super._();
  @override
  CustomNavItem rebuild(void Function(CustomNavItemBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomNavItemBuilder toBuilder() => CustomNavItemBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomNavItem &&
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
    return (newBuiltValueToStringHelper(r'CustomNavItem')
          ..add('icon', icon)
          ..add('name', name)
          ..add('url', url))
        .toString();
  }
}

class CustomNavItemBuilder
    implements Builder<CustomNavItem, CustomNavItemBuilder> {
  _$CustomNavItem? _$v;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  CustomNavItemBuilder() {
    CustomNavItem._defaults(this);
  }

  CustomNavItemBuilder get _$this {
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
  void replace(CustomNavItem other) {
    _$v = other as _$CustomNavItem;
  }

  @override
  void update(void Function(CustomNavItemBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomNavItem build() => _build();

  _$CustomNavItem _build() {
    final _$result = _$v ??
        _$CustomNavItem._(
          icon: icon,
          name: name,
          url: url,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
