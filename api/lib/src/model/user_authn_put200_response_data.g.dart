// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_authn_put200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$UserAuthnPut200ResponseData extends UserAuthnPut200ResponseData {
  @override
  final JsonObject? publicKey;

  factory _$UserAuthnPut200ResponseData(
          [void Function(UserAuthnPut200ResponseDataBuilder)? updates]) =>
      (UserAuthnPut200ResponseDataBuilder()..update(updates))._build();

  _$UserAuthnPut200ResponseData._({this.publicKey}) : super._();
  @override
  UserAuthnPut200ResponseData rebuild(
          void Function(UserAuthnPut200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UserAuthnPut200ResponseDataBuilder toBuilder() =>
      UserAuthnPut200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UserAuthnPut200ResponseData && publicKey == other.publicKey;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, publicKey.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UserAuthnPut200ResponseData')
          ..add('publicKey', publicKey))
        .toString();
  }
}

class UserAuthnPut200ResponseDataBuilder
    implements
        Builder<UserAuthnPut200ResponseData,
            UserAuthnPut200ResponseDataBuilder> {
  _$UserAuthnPut200ResponseData? _$v;

  JsonObject? _publicKey;
  JsonObject? get publicKey => _$this._publicKey;
  set publicKey(JsonObject? publicKey) => _$this._publicKey = publicKey;

  UserAuthnPut200ResponseDataBuilder() {
    UserAuthnPut200ResponseData._defaults(this);
  }

  UserAuthnPut200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _publicKey = $v.publicKey;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UserAuthnPut200ResponseData other) {
    _$v = other as _$UserAuthnPut200ResponseData;
  }

  @override
  void update(void Function(UserAuthnPut200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UserAuthnPut200ResponseData build() => _build();

  _$UserAuthnPut200ResponseData _build() {
    final _$result = _$v ??
        _$UserAuthnPut200ResponseData._(
          publicKey: publicKey,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
