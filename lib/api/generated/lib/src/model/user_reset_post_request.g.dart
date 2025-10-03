// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_reset_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserResetPostRequest extends UserResetPostRequest {
  @override
  final String? captcha;
  @override
  final String? ticket;
  @override
  final String email;

  factory _$UserResetPostRequest(
          [void Function(UserResetPostRequestBuilder)? updates]) =>
      (UserResetPostRequestBuilder()..update(updates))._build();

  _$UserResetPostRequest._({this.captcha, this.ticket, required this.email})
      : super._();
  @override
  UserResetPostRequest rebuild(
          void Function(UserResetPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserResetPostRequestBuilder toBuilder() =>
      UserResetPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserResetPostRequest &&
        captcha == other.captcha &&
        ticket == other.ticket &&
        email == other.email;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, captcha.hashCode);
    _$hash = $jc(_$hash, ticket.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserResetPostRequest')
          ..add('captcha', captcha)
          ..add('ticket', ticket)
          ..add('email', email))
        .toString();
  }
}

class UserResetPostRequestBuilder
    implements Builder<UserResetPostRequest, UserResetPostRequestBuilder> {
  _$UserResetPostRequest? _$v;

  String? _captcha;
  String? get captcha => _$this._captcha;
  set captcha(String? captcha) => _$this._captcha = captcha;

  String? _ticket;
  String? get ticket => _$this._ticket;
  set ticket(String? ticket) => _$this._ticket = ticket;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  UserResetPostRequestBuilder() {
    UserResetPostRequest._defaults(this);
  }

  UserResetPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _captcha = $v.captcha;
      _ticket = $v.ticket;
      _email = $v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserResetPostRequest other) {
    _$v = other as _$UserResetPostRequest;
  }

  @override
  void update(void Function(UserResetPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserResetPostRequest build() => _build();

  _$UserResetPostRequest _build() {
    final _$result = _$v ??
        _$UserResetPostRequest._(
          captcha: captcha,
          ticket: ticket,
          email: BuiltValueNullFieldError.checkNotNull(
              email, r'UserResetPostRequest', 'email'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
