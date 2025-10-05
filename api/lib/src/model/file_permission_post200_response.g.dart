// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_permission_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilePermissionPost200Response extends FilePermissionPost200Response {
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

  factory _$FilePermissionPost200Response(
          [void Function(FilePermissionPost200ResponseBuilder)? updates]) =>
      (FilePermissionPost200ResponseBuilder()..update(updates))._build();

  _$FilePermissionPost200Response._(
      {this.code,
      this.msg,
      this.error,
      this.aggregatedError,
      this.correlationId})
      : super._();
  @override
  FilePermissionPost200Response rebuild(
          void Function(FilePermissionPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilePermissionPost200ResponseBuilder toBuilder() =>
      FilePermissionPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilePermissionPost200Response &&
        code == other.code &&
        msg == other.msg &&
        error == other.error &&
        aggregatedError == other.aggregatedError &&
        correlationId == other.correlationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    return (newBuiltValueToStringHelper(r'FilePermissionPost200Response')
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('aggregatedError', aggregatedError)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class FilePermissionPost200ResponseBuilder
    implements
        Builder<FilePermissionPost200Response,
            FilePermissionPost200ResponseBuilder> {
  _$FilePermissionPost200Response? _$v;

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

  FilePermissionPost200ResponseBuilder() {
    FilePermissionPost200Response._defaults(this);
  }

  FilePermissionPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(FilePermissionPost200Response other) {
    _$v = other as _$FilePermissionPost200Response;
  }

  @override
  void update(void Function(FilePermissionPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilePermissionPost200Response build() => _build();

  _$FilePermissionPost200Response _build() {
    _$FilePermissionPost200Response _$result;
    try {
      _$result = _$v ??
          _$FilePermissionPost200Response._(
            code: code,
            msg: msg,
            error: error,
            aggregatedError: _aggregatedError?.build(),
            correlationId: correlationId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregatedError';
        _aggregatedError?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FilePermissionPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
