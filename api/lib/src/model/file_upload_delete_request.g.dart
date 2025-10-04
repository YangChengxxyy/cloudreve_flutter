// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_upload_delete_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileUploadDeleteRequest extends FileUploadDeleteRequest {
  @override
  final String id;
  @override
  final String uri;

  factory _$FileUploadDeleteRequest(
          [void Function(FileUploadDeleteRequestBuilder)? updates]) =>
      (FileUploadDeleteRequestBuilder()..update(updates))._build();

  _$FileUploadDeleteRequest._({required this.id, required this.uri})
      : super._();
  @override
  FileUploadDeleteRequest rebuild(
          void Function(FileUploadDeleteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileUploadDeleteRequestBuilder toBuilder() =>
      FileUploadDeleteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileUploadDeleteRequest &&
        id == other.id &&
        uri == other.uri;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileUploadDeleteRequest')
          ..add('id', id)
          ..add('uri', uri))
        .toString();
  }
}

class FileUploadDeleteRequestBuilder
    implements
        Builder<FileUploadDeleteRequest, FileUploadDeleteRequestBuilder> {
  _$FileUploadDeleteRequest? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  FileUploadDeleteRequestBuilder() {
    FileUploadDeleteRequest._defaults(this);
  }

  FileUploadDeleteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _uri = $v.uri;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileUploadDeleteRequest other) {
    _$v = other as _$FileUploadDeleteRequest;
  }

  @override
  void update(void Function(FileUploadDeleteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileUploadDeleteRequest build() => _build();

  _$FileUploadDeleteRequest _build() {
    final _$result = _$v ??
        _$FileUploadDeleteRequest._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'FileUploadDeleteRequest', 'id'),
          uri: BuiltValueNullFieldError.checkNotNull(
              uri, r'FileUploadDeleteRequest', 'uri'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
