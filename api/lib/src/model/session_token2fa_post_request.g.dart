// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'session_token2fa_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SessionToken2faPostRequest extends SessionToken2faPostRequest {
  @override
  final String opt;
  @override
  final String sessionId;

  factory _$SessionToken2faPostRequest(
          [void Function(SessionToken2faPostRequestBuilder)? updates]) =>
      (SessionToken2faPostRequestBuilder()..update(updates))._build();

  _$SessionToken2faPostRequest._({required this.opt, required this.sessionId})
      : super._();
  @override
  SessionToken2faPostRequest rebuild(
          void Function(SessionToken2faPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SessionToken2faPostRequestBuilder toBuilder() =>
      SessionToken2faPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SessionToken2faPostRequest &&
        opt == other.opt &&
        sessionId == other.sessionId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, opt.hashCode);
    _$hash = $jc(_$hash, sessionId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SessionToken2faPostRequest')
          ..add('opt', opt)
          ..add('sessionId', sessionId))
        .toString();
  }
}

class SessionToken2faPostRequestBuilder
    implements
        Builder<SessionToken2faPostRequest, SessionToken2faPostRequestBuilder> {
  _$SessionToken2faPostRequest? _$v;

  String? _opt;
  String? get opt => _$this._opt;
  set opt(String? opt) => _$this._opt = opt;

  String? _sessionId;
  String? get sessionId => _$this._sessionId;
  set sessionId(String? sessionId) => _$this._sessionId = sessionId;

  SessionToken2faPostRequestBuilder() {
    SessionToken2faPostRequest._defaults(this);
  }

  SessionToken2faPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _opt = $v.opt;
      _sessionId = $v.sessionId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SessionToken2faPostRequest other) {
    _$v = other as _$SessionToken2faPostRequest;
  }

  @override
  void update(void Function(SessionToken2faPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SessionToken2faPostRequest build() => _build();

  _$SessionToken2faPostRequest _build() {
    final _$result = _$v ??
        _$SessionToken2faPostRequest._(
          opt: BuiltValueNullFieldError.checkNotNull(
              opt, r'SessionToken2faPostRequest', 'opt'),
          sessionId: BuiltValueNullFieldError.checkNotNull(
              sessionId, r'SessionToken2faPostRequest', 'sessionId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
