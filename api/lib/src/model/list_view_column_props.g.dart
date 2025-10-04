// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_view_column_props.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListViewColumnProps extends ListViewColumnProps {
  @override
  final String? metadataKey;

  factory _$ListViewColumnProps(
          [void Function(ListViewColumnPropsBuilder)? updates]) =>
      (ListViewColumnPropsBuilder()..update(updates))._build();

  _$ListViewColumnProps._({this.metadataKey}) : super._();
  @override
  ListViewColumnProps rebuild(
          void Function(ListViewColumnPropsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListViewColumnPropsBuilder toBuilder() =>
      ListViewColumnPropsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListViewColumnProps && metadataKey == other.metadataKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, metadataKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListViewColumnProps')
          ..add('metadataKey', metadataKey))
        .toString();
  }
}

class ListViewColumnPropsBuilder
    implements Builder<ListViewColumnProps, ListViewColumnPropsBuilder> {
  _$ListViewColumnProps? _$v;

  String? _metadataKey;
  String? get metadataKey => _$this._metadataKey;
  set metadataKey(String? metadataKey) => _$this._metadataKey = metadataKey;

  ListViewColumnPropsBuilder() {
    ListViewColumnProps._defaults(this);
  }

  ListViewColumnPropsBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _metadataKey = $v.metadataKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListViewColumnProps other) {
    _$v = other as _$ListViewColumnProps;
  }

  @override
  void update(void Function(ListViewColumnPropsBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListViewColumnProps build() => _build();

  _$ListViewColumnProps _build() {
    final _$result = _$v ??
        _$ListViewColumnProps._(
          metadataKey: metadataKey,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
