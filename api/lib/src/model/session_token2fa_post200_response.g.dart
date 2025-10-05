// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_token2fa_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionToken2faPost200Response extends SessionToken2faPost200Response {
  @override
  final LoginResponse? data;
  @override
  final int? code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$SessionToken2faPost200Response(
          [void Function(SessionToken2faPost200ResponseBuilder)? updates]) =>
      (SessionToken2faPost200ResponseBuilder()..update(updates))._build();

  _$SessionToken2faPost200Response._(
      {this.data, this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  SessionToken2faPost200Response rebuild(
          void Function(SessionToken2faPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionToken2faPost200ResponseBuilder toBuilder() =>
      SessionToken2faPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionToken2faPost200Response &&
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
    return (newBuiltValueToStringHelper(r'SessionToken2faPost200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class SessionToken2faPost200ResponseBuilder
    implements
        Builder<SessionToken2faPost200Response,
            SessionToken2faPost200ResponseBuilder> {
  _$SessionToken2faPost200Response? _$v;

  LoginResponseBuilder? _data;
  LoginResponseBuilder get data => _$this._data ??= LoginResponseBuilder();
  set data(LoginResponseBuilder? data) => _$this._data = data;

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

  SessionToken2faPost200ResponseBuilder() {
    SessionToken2faPost200Response._defaults(this);
  }

  SessionToken2faPost200ResponseBuilder get _$this {
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
  void replace(SessionToken2faPost200Response other) {
    _$v = other as _$SessionToken2faPost200Response;
  }

  @override
  void update(void Function(SessionToken2faPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionToken2faPost200Response build() => _build();

  _$SessionToken2faPost200Response _build() {
    _$SessionToken2faPost200Response _$result;
    try {
      _$result = _$v ??
          _$SessionToken2faPost200Response._(
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
            r'SessionToken2faPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
