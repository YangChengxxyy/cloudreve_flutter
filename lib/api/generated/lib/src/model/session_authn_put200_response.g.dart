// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_authn_put200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionAuthnPut200Response extends SessionAuthnPut200Response {
  @override
  final SessionAuthnPut200ResponseData data;
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$SessionAuthnPut200Response(
          [void Function(SessionAuthnPut200ResponseBuilder)? updates]) =>
      (SessionAuthnPut200ResponseBuilder()..update(updates))._build();

  _$SessionAuthnPut200Response._(
      {required this.data,
      required this.code,
      this.msg,
      this.error,
      this.correlationId})
      : super._();
  @override
  SessionAuthnPut200Response rebuild(
          void Function(SessionAuthnPut200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionAuthnPut200ResponseBuilder toBuilder() =>
      SessionAuthnPut200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionAuthnPut200Response &&
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
    return (newBuiltValueToStringHelper(r'SessionAuthnPut200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class SessionAuthnPut200ResponseBuilder
    implements
        Builder<SessionAuthnPut200Response, SessionAuthnPut200ResponseBuilder> {
  _$SessionAuthnPut200Response? _$v;

  SessionAuthnPut200ResponseDataBuilder? _data;
  SessionAuthnPut200ResponseDataBuilder get data =>
      _$this._data ??= SessionAuthnPut200ResponseDataBuilder();
  set data(SessionAuthnPut200ResponseDataBuilder? data) => _$this._data = data;

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

  SessionAuthnPut200ResponseBuilder() {
    SessionAuthnPut200Response._defaults(this);
  }

  SessionAuthnPut200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _code = $v.code;
      _msg = $v.msg;
      _error = $v.error;
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionAuthnPut200Response other) {
    _$v = other as _$SessionAuthnPut200Response;
  }

  @override
  void update(void Function(SessionAuthnPut200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionAuthnPut200Response build() => _build();

  _$SessionAuthnPut200Response _build() {
    _$SessionAuthnPut200Response _$result;
    try {
      _$result = _$v ??
          _$SessionAuthnPut200Response._(
            data: data.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'SessionAuthnPut200Response', 'code'),
            msg: msg,
            error: error,
            correlationId: correlationId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SessionAuthnPut200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
