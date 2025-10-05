// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_authn_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserAuthnPost200Response extends UserAuthnPost200Response {
  @override
  final Passkey? data;
  @override
  final int? code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$UserAuthnPost200Response(
          [void Function(UserAuthnPost200ResponseBuilder)? updates]) =>
      (UserAuthnPost200ResponseBuilder()..update(updates))._build();

  _$UserAuthnPost200Response._(
      {this.data, this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  UserAuthnPost200Response rebuild(
          void Function(UserAuthnPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserAuthnPost200ResponseBuilder toBuilder() =>
      UserAuthnPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserAuthnPost200Response &&
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
    return (newBuiltValueToStringHelper(r'UserAuthnPost200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class UserAuthnPost200ResponseBuilder
    implements
        Builder<UserAuthnPost200Response, UserAuthnPost200ResponseBuilder> {
  _$UserAuthnPost200Response? _$v;

  PasskeyBuilder? _data;
  PasskeyBuilder get data => _$this._data ??= PasskeyBuilder();
  set data(PasskeyBuilder? data) => _$this._data = data;

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

  UserAuthnPost200ResponseBuilder() {
    UserAuthnPost200Response._defaults(this);
  }

  UserAuthnPost200ResponseBuilder get _$this {
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
  void replace(UserAuthnPost200Response other) {
    _$v = other as _$UserAuthnPost200Response;
  }

  @override
  void update(void Function(UserAuthnPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserAuthnPost200Response build() => _build();

  _$UserAuthnPost200Response _build() {
    _$UserAuthnPost200Response _$result;
    try {
      _$result = _$v ??
          _$UserAuthnPost200Response._(
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
            r'UserAuthnPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
