// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_restore_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileRestorePostRequest extends FileRestorePostRequest {
  @override
  final BuiltList<String>? uris;

  factory _$FileRestorePostRequest(
          [void Function(FileRestorePostRequestBuilder)? updates]) =>
      (FileRestorePostRequestBuilder()..update(updates))._build();

  _$FileRestorePostRequest._({this.uris}) : super._();
  @override
  FileRestorePostRequest rebuild(
          void Function(FileRestorePostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileRestorePostRequestBuilder toBuilder() =>
      FileRestorePostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileRestorePostRequest && uris == other.uris;
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
    return (newBuiltValueToStringHelper(r'FileRestorePostRequest')
          ..add('uris', uris))
        .toString();
  }
}

class FileRestorePostRequestBuilder
    implements Builder<FileRestorePostRequest, FileRestorePostRequestBuilder> {
  _$FileRestorePostRequest? _$v;

  ListBuilder<String>? _uris;
  ListBuilder<String> get uris => _$this._uris ??= ListBuilder<String>();
  set uris(ListBuilder<String>? uris) => _$this._uris = uris;

  FileRestorePostRequestBuilder() {
    FileRestorePostRequest._defaults(this);
  }

  FileRestorePostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uris = $v.uris?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileRestorePostRequest other) {
    _$v = other as _$FileRestorePostRequest;
  }

  @override
  void update(void Function(FileRestorePostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileRestorePostRequest build() => _build();

  _$FileRestorePostRequest _build() {
    _$FileRestorePostRequest _$result;
    try {
      _$result = _$v ??
          _$FileRestorePostRequest._(
            uris: _uris?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uris';
        _uris?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileRestorePostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
