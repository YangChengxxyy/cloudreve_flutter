// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_upload_session_id_index_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileUploadSessionIdIndexPost200Response
    extends FileUploadSessionIdIndexPost200Response {
  @override
  final int? code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$FileUploadSessionIdIndexPost200Response(
          [void Function(FileUploadSessionIdIndexPost200ResponseBuilder)?
              updates]) =>
      (FileUploadSessionIdIndexPost200ResponseBuilder()..update(updates))
          ._build();

  _$FileUploadSessionIdIndexPost200Response._(
      {this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  FileUploadSessionIdIndexPost200Response rebuild(
          void Function(FileUploadSessionIdIndexPost200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileUploadSessionIdIndexPost200ResponseBuilder toBuilder() =>
      FileUploadSessionIdIndexPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileUploadSessionIdIndexPost200Response &&
        code == other.code &&
        msg == other.msg &&
        error == other.error &&
        correlationId == other.correlationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'FileUploadSessionIdIndexPost200Response')
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class FileUploadSessionIdIndexPost200ResponseBuilder
    implements
        Builder<FileUploadSessionIdIndexPost200Response,
            FileUploadSessionIdIndexPost200ResponseBuilder> {
  _$FileUploadSessionIdIndexPost200Response? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _correlationId;
  String? get correlationId => _$this._correlationId;
  set correlationId(String? correlationId) =>
      _$this._correlationId = correlationId;

  FileUploadSessionIdIndexPost200ResponseBuilder() {
    FileUploadSessionIdIndexPost200Response._defaults(this);
  }

  FileUploadSessionIdIndexPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _msg = $v.msg;
      _error = $v.error;
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileUploadSessionIdIndexPost200Response other) {
    _$v = other as _$FileUploadSessionIdIndexPost200Response;
  }

  @override
  void update(
      void Function(FileUploadSessionIdIndexPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileUploadSessionIdIndexPost200Response build() => _build();

  _$FileUploadSessionIdIndexPost200Response _build() {
    final _$result = _$v ??
        _$FileUploadSessionIdIndexPost200Response._(
          code: code,
          msg: msg,
          error: error,
          correlationId: correlationId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
