// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_upload_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FileUploadPutRequestEntityTypeEnum
    _$fileUploadPutRequestEntityTypeEnum_livePhoto =
    const FileUploadPutRequestEntityTypeEnum._('livePhoto');
const FileUploadPutRequestEntityTypeEnum
    _$fileUploadPutRequestEntityTypeEnum_version =
    const FileUploadPutRequestEntityTypeEnum._('version');

FileUploadPutRequestEntityTypeEnum _$fileUploadPutRequestEntityTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'livePhoto':
      return _$fileUploadPutRequestEntityTypeEnum_livePhoto;
    case 'version':
      return _$fileUploadPutRequestEntityTypeEnum_version;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FileUploadPutRequestEntityTypeEnum>
    _$fileUploadPutRequestEntityTypeEnumValues = BuiltSet<
        FileUploadPutRequestEntityTypeEnum>(const <FileUploadPutRequestEntityTypeEnum>[
  _$fileUploadPutRequestEntityTypeEnum_livePhoto,
  _$fileUploadPutRequestEntityTypeEnum_version,
]);

Serializer<FileUploadPutRequestEntityTypeEnum>
    _$fileUploadPutRequestEntityTypeEnumSerializer =
    _$FileUploadPutRequestEntityTypeEnumSerializer();

class _$FileUploadPutRequestEntityTypeEnumSerializer
    implements PrimitiveSerializer<FileUploadPutRequestEntityTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'livePhoto': 'live_photo',
    'version': 'version',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'live_photo': 'livePhoto',
    'version': 'version',
  };

  @override
  final Iterable<Type> types = const <Type>[FileUploadPutRequestEntityTypeEnum];
  @override
  final String wireName = 'FileUploadPutRequestEntityTypeEnum';

  @override
  Object serialize(
          Serializers serializers, FileUploadPutRequestEntityTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FileUploadPutRequestEntityTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FileUploadPutRequestEntityTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FileUploadPutRequest extends FileUploadPutRequest {
  @override
  final String? uri;
  @override
  final int? size;
  @override
  final int? lastModified;
  @override
  final String? mimeType;
  @override
  final String? policyId;
  @override
  final BuiltMap<String, String>? metadata;
  @override
  final FileUploadPutRequestEntityTypeEnum? entityType;

  factory _$FileUploadPutRequest(
          [void Function(FileUploadPutRequestBuilder)? updates]) =>
      (FileUploadPutRequestBuilder()..update(updates))._build();

  _$FileUploadPutRequest._(
      {this.uri,
      this.size,
      this.lastModified,
      this.mimeType,
      this.policyId,
      this.metadata,
      this.entityType})
      : super._();
  @override
  FileUploadPutRequest rebuild(
          void Function(FileUploadPutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileUploadPutRequestBuilder toBuilder() =>
      FileUploadPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileUploadPutRequest &&
        uri == other.uri &&
        size == other.size &&
        lastModified == other.lastModified &&
        mimeType == other.mimeType &&
        policyId == other.policyId &&
        metadata == other.metadata &&
        entityType == other.entityType;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, lastModified.hashCode);
    _$hash = $jc(_$hash, mimeType.hashCode);
    _$hash = $jc(_$hash, policyId.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, entityType.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileUploadPutRequest')
          ..add('uri', uri)
          ..add('size', size)
          ..add('lastModified', lastModified)
          ..add('mimeType', mimeType)
          ..add('policyId', policyId)
          ..add('metadata', metadata)
          ..add('entityType', entityType))
        .toString();
  }
}

class FileUploadPutRequestBuilder
    implements Builder<FileUploadPutRequest, FileUploadPutRequestBuilder> {
  _$FileUploadPutRequest? _$v;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  int? _lastModified;
  int? get lastModified => _$this._lastModified;
  set lastModified(int? lastModified) => _$this._lastModified = lastModified;

  String? _mimeType;
  String? get mimeType => _$this._mimeType;
  set mimeType(String? mimeType) => _$this._mimeType = mimeType;

  String? _policyId;
  String? get policyId => _$this._policyId;
  set policyId(String? policyId) => _$this._policyId = policyId;

  MapBuilder<String, String>? _metadata;
  MapBuilder<String, String> get metadata =>
      _$this._metadata ??= MapBuilder<String, String>();
  set metadata(MapBuilder<String, String>? metadata) =>
      _$this._metadata = metadata;

  FileUploadPutRequestEntityTypeEnum? _entityType;
  FileUploadPutRequestEntityTypeEnum? get entityType => _$this._entityType;
  set entityType(FileUploadPutRequestEntityTypeEnum? entityType) =>
      _$this._entityType = entityType;

  FileUploadPutRequestBuilder() {
    FileUploadPutRequest._defaults(this);
  }

  FileUploadPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uri = $v.uri;
      _size = $v.size;
      _lastModified = $v.lastModified;
      _mimeType = $v.mimeType;
      _policyId = $v.policyId;
      _metadata = $v.metadata?.toBuilder();
      _entityType = $v.entityType;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileUploadPutRequest other) {
    _$v = other as _$FileUploadPutRequest;
  }

  @override
  void update(void Function(FileUploadPutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileUploadPutRequest build() => _build();

  _$FileUploadPutRequest _build() {
    _$FileUploadPutRequest _$result;
    try {
      _$result = _$v ??
          _$FileUploadPutRequest._(
            uri: uri,
            size: size,
            lastModified: lastModified,
            mimeType: mimeType,
            policyId: policyId,
            metadata: _metadata?.build(),
            entityType: entityType,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileUploadPutRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
