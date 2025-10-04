// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_upload_put200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileUploadPut200Response extends FileUploadPut200Response {
  @override
  final FileUploadPut200ResponseData? data;
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$FileUploadPut200Response(
          [void Function(FileUploadPut200ResponseBuilder)? updates]) =>
      (FileUploadPut200ResponseBuilder()..update(updates))._build();

  _$FileUploadPut200Response._(
      {this.data, required this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  FileUploadPut200Response rebuild(
          void Function(FileUploadPut200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileUploadPut200ResponseBuilder toBuilder() =>
      FileUploadPut200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileUploadPut200Response &&
        data == other.data &&
        code == other.code &&
        msg == other.msg &&
        error == other.error &&
        correlationId == other.correlationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileUploadPut200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class FileUploadPut200ResponseBuilder
    implements
        Builder<FileUploadPut200Response, FileUploadPut200ResponseBuilder> {
  _$FileUploadPut200Response? _$v;

  FileUploadPut200ResponseDataBuilder? _data;
  FileUploadPut200ResponseDataBuilder get data =>
      _$this._data ??= FileUploadPut200ResponseDataBuilder();
  set data(FileUploadPut200ResponseDataBuilder? data) => _$this._data = data;

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

  FileUploadPut200ResponseBuilder() {
    FileUploadPut200Response._defaults(this);
  }

  FileUploadPut200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _code = $v.code;
      _msg = $v.msg;
      _error = $v.error;
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileUploadPut200Response other) {
    _$v = other as _$FileUploadPut200Response;
  }

  @override
  void update(void Function(FileUploadPut200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileUploadPut200Response build() => _build();

  _$FileUploadPut200Response _build() {
    _$FileUploadPut200Response _$result;
    try {
      _$result = _$v ??
          _$FileUploadPut200Response._(
            data: _data?.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'FileUploadPut200Response', 'code'),
            msg: msg,
            error: error,
            correlationId: correlationId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileUploadPut200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
