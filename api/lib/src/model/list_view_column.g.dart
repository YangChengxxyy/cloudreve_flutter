// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_view_column.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ListViewColumn extends ListViewColumn {
  @override
  final int? type;
  @override
  final int? width;
  @override
  final ListViewColumnProps? props;

  factory _$ListViewColumn([void Function(ListViewColumnBuilder)? updates]) =>
      (ListViewColumnBuilder()..update(updates))._build();

  _$ListViewColumn._({this.type, this.width, this.props}) : super._();
  @override
  ListViewColumn rebuild(void Function(ListViewColumnBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ListViewColumnBuilder toBuilder() => ListViewColumnBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ListViewColumn &&
        type == other.type &&
        width == other.width &&
        props == other.props;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, width.hashCode);
    _$hash = $jc(_$hash, props.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ListViewColumn')
          ..add('type', type)
          ..add('width', width)
          ..add('props', props))
        .toString();
  }
}

class ListViewColumnBuilder
    implements Builder<ListViewColumn, ListViewColumnBuilder> {
  _$ListViewColumn? _$v;

  int? _type;
  int? get type => _$this._type;
  set type(int? type) => _$this._type = type;

  int? _width;
  int? get width => _$this._width;
  set width(int? width) => _$this._width = width;

  ListViewColumnPropsBuilder? _props;
  ListViewColumnPropsBuilder get props =>
      _$this._props ??= ListViewColumnPropsBuilder();
  set props(ListViewColumnPropsBuilder? props) => _$this._props = props;

  ListViewColumnBuilder() {
    ListViewColumn._defaults(this);
  }

  ListViewColumnBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _width = $v.width;
      _props = $v.props?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ListViewColumn other) {
    _$v = other as _$ListViewColumn;
  }

  @override
  void update(void Function(ListViewColumnBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ListViewColumn build() => _build();

  _$ListViewColumn _build() {
    _$ListViewColumn _$result;
    try {
      _$result = _$v ??
          _$ListViewColumn._(
            type: type,
            width: width,
            props: _props?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'props';
        _props?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ListViewColumn', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
