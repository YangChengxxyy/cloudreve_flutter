// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_create_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FileCreatePostRequestTypeEnum _$fileCreatePostRequestTypeEnum_file =
    const FileCreatePostRequestTypeEnum._('file');
const FileCreatePostRequestTypeEnum _$fileCreatePostRequestTypeEnum_folder =
    const FileCreatePostRequestTypeEnum._('folder');

FileCreatePostRequestTypeEnum _$fileCreatePostRequestTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'file':
      return _$fileCreatePostRequestTypeEnum_file;
    case 'folder':
      return _$fileCreatePostRequestTypeEnum_folder;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FileCreatePostRequestTypeEnum>
    _$fileCreatePostRequestTypeEnumValues = BuiltSet<
        FileCreatePostRequestTypeEnum>(const <FileCreatePostRequestTypeEnum>[
  _$fileCreatePostRequestTypeEnum_file,
  _$fileCreatePostRequestTypeEnum_folder,
]);

Serializer<FileCreatePostRequestTypeEnum>
    _$fileCreatePostRequestTypeEnumSerializer =
    _$FileCreatePostRequestTypeEnumSerializer();

class _$FileCreatePostRequestTypeEnumSerializer
    implements PrimitiveSerializer<FileCreatePostRequestTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'file': 'file',
    'folder': 'folder',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'file': 'file',
    'folder': 'folder',
  };

  @override
  final Iterable<Type> types = const <Type>[FileCreatePostRequestTypeEnum];
  @override
  final String wireName = 'FileCreatePostRequestTypeEnum';

  @override
  Object serialize(
          Serializers serializers, FileCreatePostRequestTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FileCreatePostRequestTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FileCreatePostRequestTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FileCreatePostRequest extends FileCreatePostRequest {
  @override
  final String? uri;
  @override
  final FileCreatePostRequestTypeEnum? type;
  @override
  final BuiltMap<String, String>? metadata;
  @override
  final bool? errOnConflict;

  factory _$FileCreatePostRequest(
          [void Function(FileCreatePostRequestBuilder)? updates]) =>
      (FileCreatePostRequestBuilder()..update(updates))._build();

  _$FileCreatePostRequest._(
      {this.uri, this.type, this.metadata, this.errOnConflict})
      : super._();
  @override
  FileCreatePostRequest rebuild(
          void Function(FileCreatePostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileCreatePostRequestBuilder toBuilder() =>
      FileCreatePostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileCreatePostRequest &&
        uri == other.uri &&
        type == other.type &&
        metadata == other.metadata &&
        errOnConflict == other.errOnConflict;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, errOnConflict.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileCreatePostRequest')
          ..add('uri', uri)
          ..add('type', type)
          ..add('metadata', metadata)
          ..add('errOnConflict', errOnConflict))
        .toString();
  }
}

class FileCreatePostRequestBuilder
    implements Builder<FileCreatePostRequest, FileCreatePostRequestBuilder> {
  _$FileCreatePostRequest? _$v;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  FileCreatePostRequestTypeEnum? _type;
  FileCreatePostRequestTypeEnum? get type => _$this._type;
  set type(FileCreatePostRequestTypeEnum? type) => _$this._type = type;

  MapBuilder<String, String>? _metadata;
  MapBuilder<String, String> get metadata =>
      _$this._metadata ??= MapBuilder<String, String>();
  set metadata(MapBuilder<String, String>? metadata) =>
      _$this._metadata = metadata;

  bool? _errOnConflict;
  bool? get errOnConflict => _$this._errOnConflict;
  set errOnConflict(bool? errOnConflict) =>
      _$this._errOnConflict = errOnConflict;

  FileCreatePostRequestBuilder() {
    FileCreatePostRequest._defaults(this);
  }

  FileCreatePostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uri = $v.uri;
      _type = $v.type;
      _metadata = $v.metadata?.toBuilder();
      _errOnConflict = $v.errOnConflict;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileCreatePostRequest other) {
    _$v = other as _$FileCreatePostRequest;
  }

  @override
  void update(void Function(FileCreatePostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileCreatePostRequest build() => _build();

  _$FileCreatePostRequest _build() {
    _$FileCreatePostRequest _$result;
    try {
      _$result = _$v ??
          _$FileCreatePostRequest._(
            uri: uri,
            type: type,
            metadata: _metadata?.build(),
            errOnConflict: errOnConflict,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileCreatePostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
