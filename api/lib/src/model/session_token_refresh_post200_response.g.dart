// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_token_refresh_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionTokenRefreshPost200Response
    extends SessionTokenRefreshPost200Response {
  @override
  final TaskResponse? data;
  @override
  final int? code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$SessionTokenRefreshPost200Response(
          [void Function(SessionTokenRefreshPost200ResponseBuilder)?
              updates]) =>
      (SessionTokenRefreshPost200ResponseBuilder()..update(updates))._build();

  _$SessionTokenRefreshPost200Response._(
      {this.data, this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  SessionTokenRefreshPost200Response rebuild(
          void Function(SessionTokenRefreshPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionTokenRefreshPost200ResponseBuilder toBuilder() =>
      SessionTokenRefreshPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionTokenRefreshPost200Response &&
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
    return (newBuiltValueToStringHelper(r'SessionTokenRefreshPost200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class SessionTokenRefreshPost200ResponseBuilder
    implements
        Builder<SessionTokenRefreshPost200Response,
            SessionTokenRefreshPost200ResponseBuilder> {
  _$SessionTokenRefreshPost200Response? _$v;

  TaskResponseBuilder? _data;
  TaskResponseBuilder get data => _$this._data ??= TaskResponseBuilder();
  set data(TaskResponseBuilder? data) => _$this._data = data;

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

  SessionTokenRefreshPost200ResponseBuilder() {
    SessionTokenRefreshPost200Response._defaults(this);
  }

  SessionTokenRefreshPost200ResponseBuilder get _$this {
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
  void replace(SessionTokenRefreshPost200Response other) {
    _$v = other as _$SessionTokenRefreshPost200Response;
  }

  @override
  void update(
      void Function(SessionTokenRefreshPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionTokenRefreshPost200Response build() => _build();

  _$SessionTokenRefreshPost200Response _build() {
    _$SessionTokenRefreshPost200Response _$result;
    try {
      _$result = _$v ??
          _$SessionTokenRefreshPost200Response._(
            data: _data?.build(),
            code: code,
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
            r'SessionTokenRefreshPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
