// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_version_current_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileVersionCurrentPostRequest extends FileVersionCurrentPostRequest {
  @override
  final String? uri;
  @override
  final String? version;

  factory _$FileVersionCurrentPostRequest(
          [void Function(FileVersionCurrentPostRequestBuilder)? updates]) =>
      (FileVersionCurrentPostRequestBuilder()..update(updates))._build();

  _$FileVersionCurrentPostRequest._({this.uri, this.version}) : super._();
  @override
  FileVersionCurrentPostRequest rebuild(
          void Function(FileVersionCurrentPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileVersionCurrentPostRequestBuilder toBuilder() =>
      FileVersionCurrentPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileVersionCurrentPostRequest &&
        uri == other.uri &&
        version == other.version;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, version.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileVersionCurrentPostRequest')
          ..add('uri', uri)
          ..add('version', version))
        .toString();
  }
}

class FileVersionCurrentPostRequestBuilder
    implements
        Builder<FileVersionCurrentPostRequest,
            FileVersionCurrentPostRequestBuilder> {
  _$FileVersionCurrentPostRequest? _$v;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  String? _version;
  String? get version => _$this._version;
  set version(String? version) => _$this._version = version;

  FileVersionCurrentPostRequestBuilder() {
    FileVersionCurrentPostRequest._defaults(this);
  }

  FileVersionCurrentPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uri = $v.uri;
      _version = $v.version;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileVersionCurrentPostRequest other) {
    _$v = other as _$FileVersionCurrentPostRequest;
  }

  @override
  void update(void Function(FileVersionCurrentPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileVersionCurrentPostRequest build() => _build();

  _$FileVersionCurrentPostRequest _build() {
    final _$result = _$v ??
        _$FileVersionCurrentPostRequest._(
          uri: uri,
          version: version,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
