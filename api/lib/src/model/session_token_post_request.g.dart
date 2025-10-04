// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_token_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionTokenPostRequest extends SessionTokenPostRequest {
  @override
  final String? captcha;
  @override
  final String? ticket;
  @override
  final String email;
  @override
  final String password;

  factory _$SessionTokenPostRequest(
          [void Function(SessionTokenPostRequestBuilder)? updates]) =>
      (SessionTokenPostRequestBuilder()..update(updates))._build();

  _$SessionTokenPostRequest._(
      {this.captcha, this.ticket, required this.email, required this.password})
      : super._();
  @override
  SessionTokenPostRequest rebuild(
          void Function(SessionTokenPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionTokenPostRequestBuilder toBuilder() =>
      SessionTokenPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionTokenPostRequest &&
        captcha == other.captcha &&
        ticket == other.ticket &&
        email == other.email &&
        password == other.password;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, captcha.hashCode);
    _$hash = $jc(_$hash, ticket.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessionTokenPostRequest')
          ..add('captcha', captcha)
          ..add('ticket', ticket)
          ..add('email', email)
          ..add('password', password))
        .toString();
  }
}

class SessionTokenPostRequestBuilder
    implements
        Builder<SessionTokenPostRequest, SessionTokenPostRequestBuilder> {
  _$SessionTokenPostRequest? _$v;

  String? _captcha;
  String? get captcha => _$this._captcha;
  set captcha(String? captcha) => _$this._captcha = captcha;

  String? _ticket;
  String? get ticket => _$this._ticket;
  set ticket(String? ticket) => _$this._ticket = ticket;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  SessionTokenPostRequestBuilder() {
    SessionTokenPostRequest._defaults(this);
  }

  SessionTokenPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _captcha = $v.captcha;
      _ticket = $v.ticket;
      _email = $v.email;
      _password = $v.password;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionTokenPostRequest other) {
    _$v = other as _$SessionTokenPostRequest;
  }

  @override
  void update(void Function(SessionTokenPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionTokenPostRequest build() => _build();

  _$SessionTokenPostRequest _build() {
    final _$result = _$v ??
        _$SessionTokenPostRequest._(
          captcha: captcha,
          ticket: ticket,
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'SessionTokenPostRequest', 'email'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'SessionTokenPostRequest', 'password'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
