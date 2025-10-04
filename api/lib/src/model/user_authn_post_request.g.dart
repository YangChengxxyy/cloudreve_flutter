// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_authn_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserAuthnPostRequest extends UserAuthnPostRequest {
  @override
  final String response;
  @override
  final String u;
  @override
  final String ua;

  factory _$UserAuthnPostRequest(
          [void Function(UserAuthnPostRequestBuilder)? updates]) =>
      (UserAuthnPostRequestBuilder()..update(updates))._build();

  _$UserAuthnPostRequest._(
      {required this.response, required this.u, required this.ua})
      : super._();
  @override
  UserAuthnPostRequest rebuild(
          void Function(UserAuthnPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserAuthnPostRequestBuilder toBuilder() =>
      UserAuthnPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserAuthnPostRequest &&
        response == other.response &&
        u == other.u &&
        ua == other.ua;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, u.hashCode);
    _$hash = $jc(_$hash, ua.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserAuthnPostRequest')
          ..add('response', response)
          ..add('u', u)
          ..add('ua', ua))
        .toString();
  }
}

class UserAuthnPostRequestBuilder
    implements Builder<UserAuthnPostRequest, UserAuthnPostRequestBuilder> {
  _$UserAuthnPostRequest? _$v;

  String? _response;
  String? get response => _$this._response;
  set response(String? response) => _$this._response = response;

  String? _u;
  String? get u => _$this._u;
  set u(String? u) => _$this._u = u;

  String? _ua;
  String? get ua => _$this._ua;
  set ua(String? ua) => _$this._ua = ua;

  UserAuthnPostRequestBuilder() {
    UserAuthnPostRequest._defaults(this);
  }

  UserAuthnPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _response = $v.response;
      _u = $v.u;
      _ua = $v.ua;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserAuthnPostRequest other) {
    _$v = other as _$UserAuthnPostRequest;
  }

  @override
  void update(void Function(UserAuthnPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserAuthnPostRequest build() => _build();

  _$UserAuthnPostRequest _build() {
    final _$result = _$v ??
        _$UserAuthnPostRequest._(
          response: BuiltValueNullFieldError.checkNotNull(
              response, r'UserAuthnPostRequest', 'response'),
          u: BuiltValueNullFieldError.checkNotNull(
              u, r'UserAuthnPostRequest', 'u'),
          ua: BuiltValueNullFieldError.checkNotNull(
              ua, r'UserAuthnPostRequest', 'ua'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
