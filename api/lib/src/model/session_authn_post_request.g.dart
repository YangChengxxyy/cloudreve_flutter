// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_authn_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionAuthnPostRequest extends SessionAuthnPostRequest {
  @override
  final String? response;
  @override
  final String? sessionId;

  factory _$SessionAuthnPostRequest(
          [void Function(SessionAuthnPostRequestBuilder)? updates]) =>
      (SessionAuthnPostRequestBuilder()..update(updates))._build();

  _$SessionAuthnPostRequest._({this.response, this.sessionId}) : super._();
  @override
  SessionAuthnPostRequest rebuild(
          void Function(SessionAuthnPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionAuthnPostRequestBuilder toBuilder() =>
      SessionAuthnPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionAuthnPostRequest &&
        response == other.response &&
        sessionId == other.sessionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, response.hashCode);
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessionAuthnPostRequest')
          ..add('response', response)
          ..add('sessionId', sessionId))
        .toString();
  }
}

class SessionAuthnPostRequestBuilder
    implements
        Builder<SessionAuthnPostRequest, SessionAuthnPostRequestBuilder> {
  _$SessionAuthnPostRequest? _$v;

  String? _response;
  String? get response => _$this._response;
  set response(String? response) => _$this._response = response;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  SessionAuthnPostRequestBuilder() {
    SessionAuthnPostRequest._defaults(this);
  }

  SessionAuthnPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _response = $v.response;
      _sessionId = $v.sessionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionAuthnPostRequest other) {
    _$v = other as _$SessionAuthnPostRequest;
  }

  @override
  void update(void Function(SessionAuthnPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionAuthnPostRequest build() => _build();

  _$SessionAuthnPostRequest _build() {
    final _$result = _$v ??
        _$SessionAuthnPostRequest._(
          response: response,
          sessionId: sessionId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
