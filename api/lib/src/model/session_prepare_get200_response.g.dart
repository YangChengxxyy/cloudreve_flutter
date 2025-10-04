// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_prepare_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionPrepareGet200Response extends SessionPrepareGet200Response {
  @override
  final SessionPrepareGet200ResponseData data;
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$SessionPrepareGet200Response(
          [void Function(SessionPrepareGet200ResponseBuilder)? updates]) =>
      (SessionPrepareGet200ResponseBuilder()..update(updates))._build();

  _$SessionPrepareGet200Response._(
      {required this.data,
      required this.code,
      this.msg,
      this.error,
      this.correlationId})
      : super._();
  @override
  SessionPrepareGet200Response rebuild(
          void Function(SessionPrepareGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionPrepareGet200ResponseBuilder toBuilder() =>
      SessionPrepareGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionPrepareGet200Response &&
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
    return (newBuiltValueToStringHelper(r'SessionPrepareGet200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class SessionPrepareGet200ResponseBuilder
    implements
        Builder<SessionPrepareGet200Response,
            SessionPrepareGet200ResponseBuilder> {
  _$SessionPrepareGet200Response? _$v;

  SessionPrepareGet200ResponseDataBuilder? _data;
  SessionPrepareGet200ResponseDataBuilder get data =>
      _$this._data ??= SessionPrepareGet200ResponseDataBuilder();
  set data(SessionPrepareGet200ResponseDataBuilder? data) =>
      _$this._data = data;

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

  SessionPrepareGet200ResponseBuilder() {
    SessionPrepareGet200Response._defaults(this);
  }

  SessionPrepareGet200ResponseBuilder get _$this {
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
  void replace(SessionPrepareGet200Response other) {
    _$v = other as _$SessionPrepareGet200Response;
  }

  @override
  void update(void Function(SessionPrepareGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionPrepareGet200Response build() => _build();

  _$SessionPrepareGet200Response _build() {
    _$SessionPrepareGet200Response _$result;
    try {
      _$result = _$v ??
          _$SessionPrepareGet200Response._(
            data: data.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'SessionPrepareGet200Response', 'code'),
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
            r'SessionPrepareGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
