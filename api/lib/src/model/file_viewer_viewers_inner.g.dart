// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_viewer_viewers_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FileViewerViewersInnerDisplayNameEnum
    _$fileViewerViewersInnerDisplayNameEnum_builtin =
    const FileViewerViewersInnerDisplayNameEnum._('builtin');
const FileViewerViewersInnerDisplayNameEnum
    _$fileViewerViewersInnerDisplayNameEnum_wopi =
    const FileViewerViewersInnerDisplayNameEnum._('wopi');
const FileViewerViewersInnerDisplayNameEnum
    _$fileViewerViewersInnerDisplayNameEnum_custom =
    const FileViewerViewersInnerDisplayNameEnum._('custom');

FileViewerViewersInnerDisplayNameEnum
    _$fileViewerViewersInnerDisplayNameEnumValueOf(String name) {
  switch (name) {
    case 'builtin':
      return _$fileViewerViewersInnerDisplayNameEnum_builtin;
    case 'wopi':
      return _$fileViewerViewersInnerDisplayNameEnum_wopi;
    case 'custom':
      return _$fileViewerViewersInnerDisplayNameEnum_custom;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FileViewerViewersInnerDisplayNameEnum>
    _$fileViewerViewersInnerDisplayNameEnumValues = BuiltSet<
        FileViewerViewersInnerDisplayNameEnum>(const <FileViewerViewersInnerDisplayNameEnum>[
  _$fileViewerViewersInnerDisplayNameEnum_builtin,
  _$fileViewerViewersInnerDisplayNameEnum_wopi,
  _$fileViewerViewersInnerDisplayNameEnum_custom,
]);

Serializer<FileViewerViewersInnerDisplayNameEnum>
    _$fileViewerViewersInnerDisplayNameEnumSerializer =
    _$FileViewerViewersInnerDisplayNameEnumSerializer();

class _$FileViewerViewersInnerDisplayNameEnumSerializer
    implements PrimitiveSerializer<FileViewerViewersInnerDisplayNameEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'builtin': 'builtin',
    'wopi': 'wopi',
    'custom': 'custom',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'builtin': 'builtin',
    'wopi': 'wopi',
    'custom': 'custom',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FileViewerViewersInnerDisplayNameEnum
  ];
  @override
  final String wireName = 'FileViewerViewersInnerDisplayNameEnum';

  @override
  Object serialize(
          Serializers serializers, FileViewerViewersInnerDisplayNameEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FileViewerViewersInnerDisplayNameEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FileViewerViewersInnerDisplayNameEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FileViewerViewersInner extends FileViewerViewersInner {
  @override
  final String id;
  @override
  final String type;
  @override
  final FileViewerViewersInnerDisplayNameEnum displayName;
  @override
  final BuiltList<String> exts;
  @override
  final String icon;
  @override
  final int maxSize;
  @override
  final String? url;

  factory _$FileViewerViewersInner(
          [void Function(FileViewerViewersInnerBuilder)? updates]) =>
      (FileViewerViewersInnerBuilder()..update(updates))._build();

  _$FileViewerViewersInner._(
      {required this.id,
      required this.type,
      required this.displayName,
      required this.exts,
      required this.icon,
      required this.maxSize,
      this.url})
      : super._();
  @override
  FileViewerViewersInner rebuild(
          void Function(FileViewerViewersInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileViewerViewersInnerBuilder toBuilder() =>
      FileViewerViewersInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileViewerViewersInner &&
        id == other.id &&
        type == other.type &&
        displayName == other.displayName &&
        exts == other.exts &&
        icon == other.icon &&
        maxSize == other.maxSize &&
        url == other.url;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, displayName.hashCode);
    _$hash = $jc(_$hash, exts.hashCode);
    _$hash = $jc(_$hash, icon.hashCode);
    _$hash = $jc(_$hash, maxSize.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileViewerViewersInner')
          ..add('id', id)
          ..add('type', type)
          ..add('displayName', displayName)
          ..add('exts', exts)
          ..add('icon', icon)
          ..add('maxSize', maxSize)
          ..add('url', url))
        .toString();
  }
}

class FileViewerViewersInnerBuilder
    implements Builder<FileViewerViewersInner, FileViewerViewersInnerBuilder> {
  _$FileViewerViewersInner? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _type;
  String? get type => _$this._type;
  set type(String? type) => _$this._type = type;

  FileViewerViewersInnerDisplayNameEnum? _displayName;
  FileViewerViewersInnerDisplayNameEnum? get displayName => _$this._displayName;
  set displayName(FileViewerViewersInnerDisplayNameEnum? displayName) =>
      _$this._displayName = displayName;

  ListBuilder<String>? _exts;
  ListBuilder<String> get exts => _$this._exts ??= ListBuilder<String>();
  set exts(ListBuilder<String>? exts) => _$this._exts = exts;

  String? _icon;
  String? get icon => _$this._icon;
  set icon(String? icon) => _$this._icon = icon;

  int? _maxSize;
  int? get maxSize => _$this._maxSize;
  set maxSize(int? maxSize) => _$this._maxSize = maxSize;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  FileViewerViewersInnerBuilder() {
    FileViewerViewersInner._defaults(this);
  }

  FileViewerViewersInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _displayName = $v.displayName;
      _exts = $v.exts.toBuilder();
      _icon = $v.icon;
      _maxSize = $v.maxSize;
      _url = $v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileViewerViewersInner other) {
    _$v = other as _$FileViewerViewersInner;
  }

  @override
  void update(void Function(FileViewerViewersInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileViewerViewersInner build() => _build();

  _$FileViewerViewersInner _build() {
    _$FileViewerViewersInner _$result;
    try {
      _$result = _$v ??
          _$FileViewerViewersInner._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'FileViewerViewersInner', 'id'),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'FileViewerViewersInner', 'type'),
            displayName: BuiltValueNullFieldError.checkNotNull(
                displayName, r'FileViewerViewersInner', 'displayName'),
            exts: exts.build(),
            icon: BuiltValueNullFieldError.checkNotNull(
                icon, r'FileViewerViewersInner', 'icon'),
            maxSize: BuiltValueNullFieldError.checkNotNull(
                maxSize, r'FileViewerViewersInner', 'maxSize'),
            url: url,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'exts';
        exts.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileViewerViewersInner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
