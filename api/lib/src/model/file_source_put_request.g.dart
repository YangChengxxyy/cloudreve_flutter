// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_source_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileSourcePutRequest extends FileSourcePutRequest {
  @override
  final BuiltList<String>? uris;

  factory _$FileSourcePutRequest(
          [void Function(FileSourcePutRequestBuilder)? updates]) =>
      (FileSourcePutRequestBuilder()..update(updates))._build();

  _$FileSourcePutRequest._({this.uris}) : super._();
  @override
  FileSourcePutRequest rebuild(
          void Function(FileSourcePutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileSourcePutRequestBuilder toBuilder() =>
      FileSourcePutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileSourcePutRequest && uris == other.uris;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uris.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileSourcePutRequest')
          ..add('uris', uris))
        .toString();
  }
}

class FileSourcePutRequestBuilder
    implements Builder<FileSourcePutRequest, FileSourcePutRequestBuilder> {
  _$FileSourcePutRequest? _$v;

  ListBuilder<String>? _uris;
  ListBuilder<String> get uris => _$this._uris ??= ListBuilder<String>();
  set uris(ListBuilder<String>? uris) => _$this._uris = uris;

  FileSourcePutRequestBuilder() {
    FileSourcePutRequest._defaults(this);
  }

  FileSourcePutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uris = $v.uris?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileSourcePutRequest other) {
    _$v = other as _$FileSourcePutRequest;
  }

  @override
  void update(void Function(FileSourcePutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileSourcePutRequest build() => _build();

  _$FileSourcePutRequest _build() {
    _$FileSourcePutRequest _$result;
    try {
      _$result = _$v ??
          _$FileSourcePutRequest._(
            uris: _uris?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uris';
        _uris?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileSourcePutRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
