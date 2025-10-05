// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$Token extends Token {
  @override
  final String? accessToken;
  @override
  final DateTime? accessExpires;
  @override
  final String? refreshToken;
  @override
  final DateTime? refreshExpires;

  factory _$Token([void Function(TokenBuilder)? updates]) =>
      (TokenBuilder()..update(updates))._build();

  _$Token._(
      {this.accessToken,
      this.accessExpires,
      this.refreshToken,
      this.refreshExpires})
      : super._();
  @override
  Token rebuild(void Function(TokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TokenBuilder toBuilder() => TokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Token &&
        accessToken == other.accessToken &&
        accessExpires == other.accessExpires &&
        refreshToken == other.refreshToken &&
        refreshExpires == other.refreshExpires;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, accessToken.hashCode);
    _$hash = $jc(_$hash, accessExpires.hashCode);
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jc(_$hash, refreshExpires.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Token')
          ..add('accessToken', accessToken)
          ..add('accessExpires', accessExpires)
          ..add('refreshToken', refreshToken)
          ..add('refreshExpires', refreshExpires))
        .toString();
  }
}

class TokenBuilder implements Builder<Token, TokenBuilder> {
  _$Token? _$v;

  String? _accessToken;
  String? get accessToken => _$this._accessToken;
  set accessToken(String? accessToken) => _$this._accessToken = accessToken;

  DateTime? _accessExpires;
  DateTime? get accessExpires => _$this._accessExpires;
  set accessExpires(DateTime? accessExpires) =>
      _$this._accessExpires = accessExpires;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  DateTime? _refreshExpires;
  DateTime? get refreshExpires => _$this._refreshExpires;
  set refreshExpires(DateTime? refreshExpires) =>
      _$this._refreshExpires = refreshExpires;

  TokenBuilder() {
    Token._defaults(this);
  }

  TokenBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _accessToken = $v.accessToken;
      _accessExpires = $v.accessExpires;
      _refreshToken = $v.refreshToken;
      _refreshExpires = $v.refreshExpires;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Token other) {
    _$v = other as _$Token;
  }

  @override
  void update(void Function(TokenBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Token build() => _build();

  _$Token _build() {
    final _$result = _$v ??
        _$Token._(
          accessToken: accessToken,
          accessExpires: accessExpires,
          refreshToken: refreshToken,
          refreshExpires: refreshExpires,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
