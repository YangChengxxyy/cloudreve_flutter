// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_openid_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionOpenidPostRequest extends SessionOpenidPostRequest {
  @override
  final String code;
  @override
  final String sessionId;
  @override
  final int providerId;

  factory _$SessionOpenidPostRequest(
          [void Function(SessionOpenidPostRequestBuilder)? updates]) =>
      (SessionOpenidPostRequestBuilder()..update(updates))._build();

  _$SessionOpenidPostRequest._(
      {required this.code, required this.sessionId, required this.providerId})
      : super._();
  @override
  SessionOpenidPostRequest rebuild(
          void Function(SessionOpenidPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionOpenidPostRequestBuilder toBuilder() =>
      SessionOpenidPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionOpenidPostRequest &&
        code == other.code &&
        sessionId == other.sessionId &&
        providerId == other.providerId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jc(_$hash, providerId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessionOpenidPostRequest')
          ..add('code', code)
          ..add('sessionId', sessionId)
          ..add('providerId', providerId))
        .toString();
  }
}

class SessionOpenidPostRequestBuilder
    implements
        Builder<SessionOpenidPostRequest, SessionOpenidPostRequestBuilder> {
  _$SessionOpenidPostRequest? _$v;

  String? _code;
  String? get code => _$this._code;
  set code(String? code) => _$this._code = code;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  int? _providerId;
  int? get providerId => _$this._providerId;
  set providerId(int? providerId) => _$this._providerId = providerId;

  SessionOpenidPostRequestBuilder() {
    SessionOpenidPostRequest._defaults(this);
  }

  SessionOpenidPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _sessionId = $v.sessionId;
      _providerId = $v.providerId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionOpenidPostRequest other) {
    _$v = other as _$SessionOpenidPostRequest;
  }

  @override
  void update(void Function(SessionOpenidPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionOpenidPostRequest build() => _build();

  _$SessionOpenidPostRequest _build() {
    final _$result = _$v ??
        _$SessionOpenidPostRequest._(
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'SessionOpenidPostRequest', 'code'),
          sessionId: BuiltValueNullFieldError.checkNotNull(
              sessionId, r'SessionOpenidPostRequest', 'sessionId'),
          providerId: BuiltValueNullFieldError.checkNotNull(
              providerId, r'SessionOpenidPostRequest', 'providerId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
