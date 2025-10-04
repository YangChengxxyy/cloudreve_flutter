// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'custom_html.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CustomHTML extends CustomHTML {
  @override
  final String? headlessFooter;
  @override
  final String? headlessBottom;
  @override
  final String? sidebarBottom;

  factory _$CustomHTML([void Function(CustomHTMLBuilder)? updates]) =>
      (CustomHTMLBuilder()..update(updates))._build();

  _$CustomHTML._({this.headlessFooter, this.headlessBottom, this.sidebarBottom})
      : super._();
  @override
  CustomHTML rebuild(void Function(CustomHTMLBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CustomHTMLBuilder toBuilder() => CustomHTMLBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CustomHTML &&
        headlessFooter == other.headlessFooter &&
        headlessBottom == other.headlessBottom &&
        sidebarBottom == other.sidebarBottom;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, headlessFooter.hashCode);
    _$hash = $jc(_$hash, headlessBottom.hashCode);
    _$hash = $jc(_$hash, sidebarBottom.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'CustomHTML')
          ..add('headlessFooter', headlessFooter)
          ..add('headlessBottom', headlessBottom)
          ..add('sidebarBottom', sidebarBottom))
        .toString();
  }
}

class CustomHTMLBuilder implements Builder<CustomHTML, CustomHTMLBuilder> {
  _$CustomHTML? _$v;

  String? _headlessFooter;
  String? get headlessFooter => _$this._headlessFooter;
  set headlessFooter(String? headlessFooter) =>
      _$this._headlessFooter = headlessFooter;

  String? _headlessBottom;
  String? get headlessBottom => _$this._headlessBottom;
  set headlessBottom(String? headlessBottom) =>
      _$this._headlessBottom = headlessBottom;

  String? _sidebarBottom;
  String? get sidebarBottom => _$this._sidebarBottom;
  set sidebarBottom(String? sidebarBottom) =>
      _$this._sidebarBottom = sidebarBottom;

  CustomHTMLBuilder() {
    CustomHTML._defaults(this);
  }

  CustomHTMLBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _headlessFooter = $v.headlessFooter;
      _headlessBottom = $v.headlessBottom;
      _sidebarBottom = $v.sidebarBottom;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CustomHTML other) {
    _$v = other as _$CustomHTML;
  }

  @override
  void update(void Function(CustomHTMLBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CustomHTML build() => _build();

  _$CustomHTML _build() {
    final _$result = _$v ??
        _$CustomHTML._(
          headlessFooter: headlessFooter,
          headlessBottom: headlessBottom,
          sidebarBottom: sidebarBottom,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
