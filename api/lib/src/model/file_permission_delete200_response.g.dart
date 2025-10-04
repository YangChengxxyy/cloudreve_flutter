// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_permission_delete200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilePermissionDelete200Response
    extends FilePermissionDelete200Response {
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final BuiltMap<String, Response>? aggregatedError;
  @override
  final String? correlationId;

  factory _$FilePermissionDelete200Response(
          [void Function(FilePermissionDelete200ResponseBuilder)? updates]) =>
      (FilePermissionDelete200ResponseBuilder()..update(updates))._build();

  _$FilePermissionDelete200Response._(
      {required this.code,
      this.msg,
      this.error,
      this.aggregatedError,
      this.correlationId})
      : super._();
  @override
  FilePermissionDelete200Response rebuild(
          void Function(FilePermissionDelete200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilePermissionDelete200ResponseBuilder toBuilder() =>
      FilePermissionDelete200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilePermissionDelete200Response &&
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
    return (newBuiltValueToStringHelper(r'FilePermissionDelete200Response')
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('aggregatedError', aggregatedError)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class FilePermissionDelete200ResponseBuilder
    implements
        Builder<FilePermissionDelete200Response,
            FilePermissionDelete200ResponseBuilder> {
  _$FilePermissionDelete200Response? _$v;

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

  FilePermissionDelete200ResponseBuilder() {
    FilePermissionDelete200Response._defaults(this);
  }

  FilePermissionDelete200ResponseBuilder get _$this {
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
  void replace(FilePermissionDelete200Response other) {
    _$v = other as _$FilePermissionDelete200Response;
  }

  @override
  void update(void Function(FilePermissionDelete200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilePermissionDelete200Response build() => _build();

  _$FilePermissionDelete200Response _build() {
    _$FilePermissionDelete200Response _$result;
    try {
      _$result = _$v ??
          _$FilePermissionDelete200Response._(
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'FilePermissionDelete200Response', 'code'),
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
            r'FilePermissionDelete200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
