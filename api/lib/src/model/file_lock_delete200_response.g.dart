// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_lock_delete200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileLockDelete200Response extends FileLockDelete200Response {
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

  factory _$FileLockDelete200Response(
          [void Function(FileLockDelete200ResponseBuilder)? updates]) =>
      (FileLockDelete200ResponseBuilder()..update(updates))._build();

  _$FileLockDelete200Response._(
      {this.code,
      this.msg,
      this.error,
      this.aggregatedError,
      this.correlationId})
      : super._();
  @override
  FileLockDelete200Response rebuild(
          void Function(FileLockDelete200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileLockDelete200ResponseBuilder toBuilder() =>
      FileLockDelete200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileLockDelete200Response &&
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
    return (newBuiltValueToStringHelper(r'FileLockDelete200Response')
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('aggregatedError', aggregatedError)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class FileLockDelete200ResponseBuilder
    implements
        Builder<FileLockDelete200Response, FileLockDelete200ResponseBuilder> {
  _$FileLockDelete200Response? _$v;

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

  FileLockDelete200ResponseBuilder() {
    FileLockDelete200Response._defaults(this);
  }

  FileLockDelete200ResponseBuilder get _$this {
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
  void replace(FileLockDelete200Response other) {
    _$v = other as _$FileLockDelete200Response;
  }

  @override
  void update(void Function(FileLockDelete200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileLockDelete200Response build() => _build();

  _$FileLockDelete200Response _build() {
    _$FileLockDelete200Response _$result;
    try {
      _$result = _$v ??
          _$FileLockDelete200Response._(
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
            r'FileLockDelete200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
