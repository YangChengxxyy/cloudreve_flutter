// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserPostRequest extends UserPostRequest {
  @override
  final String email;
  @override
  final String password;
  @override
  final String? language;
  @override
  final String? captcha;
  @override
  final String? ticket;

  factory _$UserPostRequest([void Function(UserPostRequestBuilder)? updates]) =>
      (UserPostRequestBuilder()..update(updates))._build();

  _$UserPostRequest._(
      {required this.email,
      required this.password,
      this.language,
      this.captcha,
      this.ticket})
      : super._();
  @override
  UserPostRequest rebuild(void Function(UserPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserPostRequestBuilder toBuilder() => UserPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserPostRequest &&
        email == other.email &&
        password == other.password &&
        language == other.language &&
        captcha == other.captcha &&
        ticket == other.ticket;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jc(_$hash, captcha.hashCode);
    _$hash = $jc(_$hash, ticket.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserPostRequest')
          ..add('email', email)
          ..add('password', password)
          ..add('language', language)
          ..add('captcha', captcha)
          ..add('ticket', ticket))
        .toString();
  }
}

class UserPostRequestBuilder
    implements Builder<UserPostRequest, UserPostRequestBuilder> {
  _$UserPostRequest? _$v;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  String? _captcha;
  String? get captcha => _$this._captcha;
  set captcha(String? captcha) => _$this._captcha = captcha;

  String? _ticket;
  String? get ticket => _$this._ticket;
  set ticket(String? ticket) => _$this._ticket = ticket;

  UserPostRequestBuilder() {
    UserPostRequest._defaults(this);
  }

  UserPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _email = $v.email;
      _password = $v.password;
      _language = $v.language;
      _captcha = $v.captcha;
      _ticket = $v.ticket;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserPostRequest other) {
    _$v = other as _$UserPostRequest;
  }

  @override
  void update(void Function(UserPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserPostRequest build() => _build();

  _$UserPostRequest _build() {
    final _$result = _$v ??
        _$UserPostRequest._(
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'UserPostRequest', 'email'),
          password: BuiltValueNullFieldError.checkNotNull(
              password, r'UserPostRequest', 'password'),
          language: language,
          captcha: captcha,
          ticket: ticket,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
