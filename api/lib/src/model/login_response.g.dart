// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$LoginResponse extends LoginResponse {
  @override
  final User? user;
  @override
  final Token? token;

  factory _$LoginResponse([void Function(LoginResponseBuilder)? updates]) =>
      (LoginResponseBuilder()..update(updates))._build();

  _$LoginResponse._({this.user, this.token}) : super._();
  @override
  LoginResponse rebuild(void Function(LoginResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LoginResponseBuilder toBuilder() => LoginResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LoginResponse && user == other.user && token == other.token;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, user.hashCode);
    _$hash = $jc(_$hash, token.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'LoginResponse')
          ..add('user', user)
          ..add('token', token))
        .toString();
  }
}

class LoginResponseBuilder
    implements Builder<LoginResponse, LoginResponseBuilder> {
  _$LoginResponse? _$v;

  UserBuilder? _user;
  UserBuilder get user => _$this._user ??= UserBuilder();
  set user(UserBuilder? user) => _$this._user = user;

  TokenBuilder? _token;
  TokenBuilder get token => _$this._token ??= TokenBuilder();
  set token(TokenBuilder? token) => _$this._token = token;

  LoginResponseBuilder() {
    LoginResponse._defaults(this);
  }

  LoginResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _user = $v.user?.toBuilder();
      _token = $v.token?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LoginResponse other) {
    _$v = other as _$LoginResponse;
  }

  @override
  void update(void Function(LoginResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  LoginResponse build() => _build();

  _$LoginResponse _build() {
    _$LoginResponse _$result;
    try {
      _$result = _$v ??
          _$LoginResponse._(
            user: _user?.build(),
            token: _token?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
        _$failedField = 'token';
        _token?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'LoginResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
