// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_authn_delete200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserAuthnDelete200Response extends UserAuthnDelete200Response {
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$UserAuthnDelete200Response(
          [void Function(UserAuthnDelete200ResponseBuilder)? updates]) =>
      (UserAuthnDelete200ResponseBuilder()..update(updates))._build();

  _$UserAuthnDelete200Response._(
      {required this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  UserAuthnDelete200Response rebuild(
          void Function(UserAuthnDelete200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserAuthnDelete200ResponseBuilder toBuilder() =>
      UserAuthnDelete200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserAuthnDelete200Response &&
        code == other.code &&
        msg == other.msg &&
        error == other.error &&
        correlationId == other.correlationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserAuthnDelete200Response')
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class UserAuthnDelete200ResponseBuilder
    implements
        Builder<UserAuthnDelete200Response, UserAuthnDelete200ResponseBuilder> {
  _$UserAuthnDelete200Response? _$v;

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

  UserAuthnDelete200ResponseBuilder() {
    UserAuthnDelete200Response._defaults(this);
  }

  UserAuthnDelete200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _msg = $v.msg;
      _error = $v.error;
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserAuthnDelete200Response other) {
    _$v = other as _$UserAuthnDelete200Response;
  }

  @override
  void update(void Function(UserAuthnDelete200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserAuthnDelete200Response build() => _build();

  _$UserAuthnDelete200Response _build() {
    final _$result = _$v ??
        _$UserAuthnDelete200Response._(
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'UserAuthnDelete200Response', 'code'),
          msg: msg,
          error: error,
          correlationId: correlationId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
