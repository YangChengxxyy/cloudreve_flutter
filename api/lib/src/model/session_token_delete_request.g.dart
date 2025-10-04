// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_token_delete_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionTokenDeleteRequest extends SessionTokenDeleteRequest {
  @override
  final String refreshToken;

  factory _$SessionTokenDeleteRequest(
          [void Function(SessionTokenDeleteRequestBuilder)? updates]) =>
      (SessionTokenDeleteRequestBuilder()..update(updates))._build();

  _$SessionTokenDeleteRequest._({required this.refreshToken}) : super._();
  @override
  SessionTokenDeleteRequest rebuild(
          void Function(SessionTokenDeleteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionTokenDeleteRequestBuilder toBuilder() =>
      SessionTokenDeleteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionTokenDeleteRequest &&
        refreshToken == other.refreshToken;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, refreshToken.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessionTokenDeleteRequest')
          ..add('refreshToken', refreshToken))
        .toString();
  }
}

class SessionTokenDeleteRequestBuilder
    implements
        Builder<SessionTokenDeleteRequest, SessionTokenDeleteRequestBuilder> {
  _$SessionTokenDeleteRequest? _$v;

  String? _refreshToken;
  String? get refreshToken => _$this._refreshToken;
  set refreshToken(String? refreshToken) => _$this._refreshToken = refreshToken;

  SessionTokenDeleteRequestBuilder() {
    SessionTokenDeleteRequest._defaults(this);
  }

  SessionTokenDeleteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _refreshToken = $v.refreshToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionTokenDeleteRequest other) {
    _$v = other as _$SessionTokenDeleteRequest;
  }

  @override
  void update(void Function(SessionTokenDeleteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionTokenDeleteRequest build() => _build();

  _$SessionTokenDeleteRequest _build() {
    final _$result = _$v ??
        _$SessionTokenDeleteRequest._(
          refreshToken: BuiltValueNullFieldError.checkNotNull(
              refreshToken, r'SessionTokenDeleteRequest', 'refreshToken'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
