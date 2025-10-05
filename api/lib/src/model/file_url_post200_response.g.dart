// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_url_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileUrlPost200Response extends FileUrlPost200Response {
  @override
  final FileUrlPost200ResponseData? data;
  @override
  final int? code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final BuiltMap<String, Response>? aggregatedError;
  @override
  final String? correlationId;

  factory _$FileUrlPost200Response(
          [void Function(FileUrlPost200ResponseBuilder)? updates]) =>
      (FileUrlPost200ResponseBuilder()..update(updates))._build();

  _$FileUrlPost200Response._(
      {this.data,
      this.code,
      this.msg,
      this.error,
      this.aggregatedError,
      this.correlationId})
      : super._();
  @override
  FileUrlPost200Response rebuild(
          void Function(FileUrlPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileUrlPost200ResponseBuilder toBuilder() =>
      FileUrlPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileUrlPost200Response &&
        data == other.data &&
        code == other.code &&
        msg == other.msg &&
        error == other.error &&
        aggregatedError == other.aggregatedError &&
        correlationId == other.correlationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, aggregatedError.hashCode);
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileUrlPost200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('aggregatedError', aggregatedError)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class FileUrlPost200ResponseBuilder
    implements Builder<FileUrlPost200Response, FileUrlPost200ResponseBuilder> {
  _$FileUrlPost200Response? _$v;

  FileUrlPost200ResponseDataBuilder? _data;
  FileUrlPost200ResponseDataBuilder get data =>
      _$this._data ??= FileUrlPost200ResponseDataBuilder();
  set data(FileUrlPost200ResponseDataBuilder? data) => _$this._data = data;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  MapBuilder<String, Response>? _aggregatedError;
  MapBuilder<String, Response> get aggregatedError =>
      _$this._aggregatedError ??= MapBuilder<String, Response>();
  set aggregatedError(MapBuilder<String, Response>? aggregatedError) =>
      _$this._aggregatedError = aggregatedError;

  String? _correlationId;
  String? get correlationId => _$this._correlationId;
  set correlationId(String? correlationId) =>
      _$this._correlationId = correlationId;

  FileUrlPost200ResponseBuilder() {
    FileUrlPost200Response._defaults(this);
  }

  FileUrlPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _code = $v.code;
      _msg = $v.msg;
      _error = $v.error;
      _aggregatedError = $v.aggregatedError?.toBuilder();
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileUrlPost200Response other) {
    _$v = other as _$FileUrlPost200Response;
  }

  @override
  void update(void Function(FileUrlPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileUrlPost200Response build() => _build();

  _$FileUrlPost200Response _build() {
    _$FileUrlPost200Response _$result;
    try {
      _$result = _$v ??
          _$FileUrlPost200Response._(
            data: _data?.build(),
            code: code,
            msg: msg,
            error: error,
            aggregatedError: _aggregatedError?.build(),
            correlationId: correlationId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();

        _$failedField = 'aggregatedError';
        _aggregatedError?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileUrlPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
