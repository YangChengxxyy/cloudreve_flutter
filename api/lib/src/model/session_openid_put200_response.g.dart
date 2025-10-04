// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_openid_put200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionOpenidPut200Response extends SessionOpenidPut200Response {
  @override
  final String data;
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$SessionOpenidPut200Response(
          [void Function(SessionOpenidPut200ResponseBuilder)? updates]) =>
      (SessionOpenidPut200ResponseBuilder()..update(updates))._build();

  _$SessionOpenidPut200Response._(
      {required this.data,
      required this.code,
      this.msg,
      this.error,
      this.correlationId})
      : super._();
  @override
  SessionOpenidPut200Response rebuild(
          void Function(SessionOpenidPut200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionOpenidPut200ResponseBuilder toBuilder() =>
      SessionOpenidPut200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionOpenidPut200Response &&
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
    return (newBuiltValueToStringHelper(r'SessionOpenidPut200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class SessionOpenidPut200ResponseBuilder
    implements
        Builder<SessionOpenidPut200Response,
            SessionOpenidPut200ResponseBuilder> {
  _$SessionOpenidPut200Response? _$v;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

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

  SessionOpenidPut200ResponseBuilder() {
    SessionOpenidPut200Response._defaults(this);
  }

  SessionOpenidPut200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _code = $v.code;
      _msg = $v.msg;
      _error = $v.error;
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionOpenidPut200Response other) {
    _$v = other as _$SessionOpenidPut200Response;
  }

  @override
  void update(void Function(SessionOpenidPut200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionOpenidPut200Response build() => _build();

  _$SessionOpenidPut200Response _build() {
    final _$result = _$v ??
        _$SessionOpenidPut200Response._(
          data: BuiltValueNullFieldError.checkNotNull(
              data, r'SessionOpenidPut200Response', 'data'),
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'SessionOpenidPut200Response', 'code'),
          msg: msg,
          error: error,
          correlationId: correlationId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
