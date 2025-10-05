// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_reset_user_id_patch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserResetUserIdPatchRequest extends UserResetUserIdPatchRequest {
  @override
  final String? password;
  @override
  final String? secret;

  factory _$UserResetUserIdPatchRequest(
          [void Function(UserResetUserIdPatchRequestBuilder)? updates]) =>
      (UserResetUserIdPatchRequestBuilder()..update(updates))._build();

  _$UserResetUserIdPatchRequest._({this.password, this.secret}) : super._();
  @override
  UserResetUserIdPatchRequest rebuild(
          void Function(UserResetUserIdPatchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserResetUserIdPatchRequestBuilder toBuilder() =>
      UserResetUserIdPatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserResetUserIdPatchRequest &&
        password == other.password &&
        secret == other.secret;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, secret.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserResetUserIdPatchRequest')
          ..add('password', password)
          ..add('secret', secret))
        .toString();
  }
}

class UserResetUserIdPatchRequestBuilder
    implements
        Builder<UserResetUserIdPatchRequest,
            UserResetUserIdPatchRequestBuilder> {
  _$UserResetUserIdPatchRequest? _$v;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  String? _secret;
  String? get secret => _$this._secret;
  set secret(String? secret) => _$this._secret = secret;

  UserResetUserIdPatchRequestBuilder() {
    UserResetUserIdPatchRequest._defaults(this);
  }

  UserResetUserIdPatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _password = $v.password;
      _secret = $v.secret;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserResetUserIdPatchRequest other) {
    _$v = other as _$UserResetUserIdPatchRequest;
  }

  @override
  void update(void Function(UserResetUserIdPatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserResetUserIdPatchRequest build() => _build();

  _$UserResetUserIdPatchRequest _build() {
    final _$result = _$v ??
        _$UserResetUserIdPatchRequest._(
          password: password,
          secret: secret,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
