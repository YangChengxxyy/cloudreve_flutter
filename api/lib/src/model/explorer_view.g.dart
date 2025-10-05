// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'explorer_view.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExplorerViewOrderDirectionEnum _$explorerViewOrderDirectionEnum_asc =
    const ExplorerViewOrderDirectionEnum._('asc');
const ExplorerViewOrderDirectionEnum _$explorerViewOrderDirectionEnum_desc =
    const ExplorerViewOrderDirectionEnum._('desc');

ExplorerViewOrderDirectionEnum _$explorerViewOrderDirectionEnumValueOf(
    String name) {
  switch (name) {
    case 'asc':
      return _$explorerViewOrderDirectionEnum_asc;
    case 'desc':
      return _$explorerViewOrderDirectionEnum_desc;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExplorerViewOrderDirectionEnum>
    _$explorerViewOrderDirectionEnumValues = BuiltSet<
        ExplorerViewOrderDirectionEnum>(const <ExplorerViewOrderDirectionEnum>[
  _$explorerViewOrderDirectionEnum_asc,
  _$explorerViewOrderDirectionEnum_desc,
]);

const ExplorerViewViewEnum _$explorerViewViewEnum_list =
    const ExplorerViewViewEnum._('list');
const ExplorerViewViewEnum _$explorerViewViewEnum_grid =
    const ExplorerViewViewEnum._('grid');
const ExplorerViewViewEnum _$explorerViewViewEnum_gallery =
    const ExplorerViewViewEnum._('gallery');

ExplorerViewViewEnum _$explorerViewViewEnumValueOf(String name) {
  switch (name) {
    case 'list':
      return _$explorerViewViewEnum_list;
    case 'grid':
      return _$explorerViewViewEnum_grid;
    case 'gallery':
      return _$explorerViewViewEnum_gallery;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExplorerViewViewEnum> _$explorerViewViewEnumValues =
    BuiltSet<ExplorerViewViewEnum>(const <ExplorerViewViewEnum>[
  _$explorerViewViewEnum_list,
  _$explorerViewViewEnum_grid,
  _$explorerViewViewEnum_gallery,
]);

Serializer<ExplorerViewOrderDirectionEnum>
    _$explorerViewOrderDirectionEnumSerializer =
    _$ExplorerViewOrderDirectionEnumSerializer();
Serializer<ExplorerViewViewEnum> _$explorerViewViewEnumSerializer =
    _$ExplorerViewViewEnumSerializer();

class _$ExplorerViewOrderDirectionEnumSerializer
    implements PrimitiveSerializer<ExplorerViewOrderDirectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'asc': 'asc',
    'desc': 'desc',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'asc': 'asc',
    'desc': 'desc',
  };

  @override
  final Iterable<Type> types = const <Type>[ExplorerViewOrderDirectionEnum];
  @override
  final String wireName = 'ExplorerViewOrderDirectionEnum';

  @override
  Object serialize(
          Serializers serializers, ExplorerViewOrderDirectionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExplorerViewOrderDirectionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExplorerViewOrderDirectionEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExplorerViewViewEnumSerializer
    implements PrimitiveSerializer<ExplorerViewViewEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'list': 'list',
    'grid': 'grid',
    'gallery': 'gallery',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'list': 'list',
    'grid': 'grid',
    'gallery': 'gallery',
  };

  @override
  final Iterable<Type> types = const <Type>[ExplorerViewViewEnum];
  @override
  final String wireName = 'ExplorerViewViewEnum';

  @override
  Object serialize(Serializers serializers, ExplorerViewViewEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExplorerViewViewEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExplorerViewViewEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExplorerView extends ExplorerView {
  @override
  final int? pageSize;
  @override
  final String? order;
  @override
  final ExplorerViewOrderDirectionEnum? orderDirection;
  @override
  final ExplorerViewViewEnum? view;
  @override
  final bool? thumbnail;
  @override
  final int? galleryWidth;
  @override
  final BuiltList<ListViewColumn>? columns;

  factory _$ExplorerView([void Function(ExplorerViewBuilder)? updates]) =>
      (ExplorerViewBuilder()..update(updates))._build();

  _$ExplorerView._(
      {this.pageSize,
      this.order,
      this.orderDirection,
      this.view,
      this.thumbnail,
      this.galleryWidth,
      this.columns})
      : super._();
  @override
  ExplorerView rebuild(void Function(ExplorerViewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExplorerViewBuilder toBuilder() => ExplorerViewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExplorerView &&
        pageSize == other.pageSize &&
        order == other.order &&
        orderDirection == other.orderDirection &&
        view == other.view &&
        thumbnail == other.thumbnail &&
        galleryWidth == other.galleryWidth &&
        columns == other.columns;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, pageSize.hashCode);
    _$hash = $jc(_$hash, order.hashCode);
    _$hash = $jc(_$hash, orderDirection.hashCode);
    _$hash = $jc(_$hash, view.hashCode);
    _$hash = $jc(_$hash, thumbnail.hashCode);
    _$hash = $jc(_$hash, galleryWidth.hashCode);
    _$hash = $jc(_$hash, columns.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ExplorerView')
          ..add('pageSize', pageSize)
          ..add('order', order)
          ..add('orderDirection', orderDirection)
          ..add('view', view)
          ..add('thumbnail', thumbnail)
          ..add('galleryWidth', galleryWidth)
          ..add('columns', columns))
        .toString();
  }
}

class ExplorerViewBuilder
    implements Builder<ExplorerView, ExplorerViewBuilder> {
  _$ExplorerView? _$v;

  int? _pageSize;
  int? get pageSize => _$this._pageSize;
  set pageSize(int? pageSize) => _$this._pageSize = pageSize;

  String? _order;
  String? get order => _$this._order;
  set order(String? order) => _$this._order = order;

  ExplorerViewOrderDirectionEnum? _orderDirection;
  ExplorerViewOrderDirectionEnum? get orderDirection => _$this._orderDirection;
  set orderDirection(ExplorerViewOrderDirectionEnum? orderDirection) =>
      _$this._orderDirection = orderDirection;

  ExplorerViewViewEnum? _view;
  ExplorerViewViewEnum? get view => _$this._view;
  set view(ExplorerViewViewEnum? view) => _$this._view = view;

  bool? _thumbnail;
  bool? get thumbnail => _$this._thumbnail;
  set thumbnail(bool? thumbnail) => _$this._thumbnail = thumbnail;

  int? _galleryWidth;
  int? get galleryWidth => _$this._galleryWidth;
  set galleryWidth(int? galleryWidth) => _$this._galleryWidth = galleryWidth;

  ListBuilder<ListViewColumn>? _columns;
  ListBuilder<ListViewColumn> get columns =>
      _$this._columns ??= ListBuilder<ListViewColumn>();
  set columns(ListBuilder<ListViewColumn>? columns) =>
      _$this._columns = columns;

  ExplorerViewBuilder() {
    ExplorerView._defaults(this);
  }

  ExplorerViewBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _pageSize = $v.pageSize;
      _order = $v.order;
      _orderDirection = $v.orderDirection;
      _view = $v.view;
      _thumbnail = $v.thumbnail;
      _galleryWidth = $v.galleryWidth;
      _columns = $v.columns?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExplorerView other) {
    _$v = other as _$ExplorerView;
  }

  @override
  void update(void Function(ExplorerViewBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExplorerView build() => _build();

  _$ExplorerView _build() {
    _$ExplorerView _$result;
    try {
      _$result = _$v ??
          _$ExplorerView._(
            pageSize: pageSize,
            order: order,
            orderDirection: orderDirection,
            view: view,
            thumbnail: thumbnail,
            galleryWidth: galleryWidth,
            columns: _columns?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'columns';
        _columns?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'ExplorerView', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
