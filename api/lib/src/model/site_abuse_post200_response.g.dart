// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_abuse_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SiteAbusePost200Response extends SiteAbusePost200Response {
  @override
  final int? code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$SiteAbusePost200Response(
          [void Function(SiteAbusePost200ResponseBuilder)? updates]) =>
      (SiteAbusePost200ResponseBuilder()..update(updates))._build();

  _$SiteAbusePost200Response._(
      {this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  SiteAbusePost200Response rebuild(
          void Function(SiteAbusePost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SiteAbusePost200ResponseBuilder toBuilder() =>
      SiteAbusePost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SiteAbusePost200Response &&
        code == other.code &&
        msg == other.msg &&
        error == other.error &&
        correlationId == other.correlationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SiteAbusePost200Response')
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class SiteAbusePost200ResponseBuilder
    implements
        Builder<SiteAbusePost200Response, SiteAbusePost200ResponseBuilder> {
  _$SiteAbusePost200Response? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  String? _error;
  String? get error => _$this._error;
  set error(String? error) => _$this._error = error;

  String? _correlationId;
  String? get correlationId => _$this._correlationId;
  set correlationId(String? correlationId) =>
      _$this._correlationId = correlationId;

  SiteAbusePost200ResponseBuilder() {
    SiteAbusePost200Response._defaults(this);
  }

  SiteAbusePost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _msg = $v.msg;
      _error = $v.error;
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SiteAbusePost200Response other) {
    _$v = other as _$SiteAbusePost200Response;
  }

  @override
  void update(void Function(SiteAbusePost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SiteAbusePost200Response build() => _build();

  _$SiteAbusePost200Response _build() {
    final _$result = _$v ??
        _$SiteAbusePost200Response._(
          code: code,
          msg: msg,
          error: error,
          correlationId: correlationId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
