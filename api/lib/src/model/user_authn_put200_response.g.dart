// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_authn_put200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserAuthnPut200Response extends UserAuthnPut200Response {
  @override
  final UserAuthnPut200ResponseData? data;
  @override
  final int? code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$UserAuthnPut200Response(
          [void Function(UserAuthnPut200ResponseBuilder)? updates]) =>
      (UserAuthnPut200ResponseBuilder()..update(updates))._build();

  _$UserAuthnPut200Response._(
      {this.data, this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  UserAuthnPut200Response rebuild(
          void Function(UserAuthnPut200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserAuthnPut200ResponseBuilder toBuilder() =>
      UserAuthnPut200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserAuthnPut200Response &&
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
    return (newBuiltValueToStringHelper(r'UserAuthnPut200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class UserAuthnPut200ResponseBuilder
    implements
        Builder<UserAuthnPut200Response, UserAuthnPut200ResponseBuilder> {
  _$UserAuthnPut200Response? _$v;

  UserAuthnPut200ResponseDataBuilder? _data;
  UserAuthnPut200ResponseDataBuilder get data =>
      _$this._data ??= UserAuthnPut200ResponseDataBuilder();
  set data(UserAuthnPut200ResponseDataBuilder? data) => _$this._data = data;

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

  UserAuthnPut200ResponseBuilder() {
    UserAuthnPut200Response._defaults(this);
  }

  UserAuthnPut200ResponseBuilder get _$this {
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
  void replace(UserAuthnPut200Response other) {
    _$v = other as _$UserAuthnPut200Response;
  }

  @override
  void update(void Function(UserAuthnPut200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserAuthnPut200Response build() => _build();

  _$UserAuthnPut200Response _build() {
    _$UserAuthnPut200Response _$result;
    try {
      _$result = _$v ??
          _$UserAuthnPut200Response._(
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
            r'UserAuthnPut200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
