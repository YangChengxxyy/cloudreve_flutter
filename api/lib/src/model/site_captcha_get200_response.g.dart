// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_captcha_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SiteCaptchaGet200Response extends SiteCaptchaGet200Response {
  @override
  final SiteCaptchaGet200ResponseData? data;
  @override
  final int? code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$SiteCaptchaGet200Response(
          [void Function(SiteCaptchaGet200ResponseBuilder)? updates]) =>
      (SiteCaptchaGet200ResponseBuilder()..update(updates))._build();

  _$SiteCaptchaGet200Response._(
      {this.data, this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  SiteCaptchaGet200Response rebuild(
          void Function(SiteCaptchaGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SiteCaptchaGet200ResponseBuilder toBuilder() =>
      SiteCaptchaGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SiteCaptchaGet200Response &&
        data == other.data &&
        code == other.code &&
        msg == other.msg &&
        error == other.error &&
        correlationId == other.correlationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'SiteCaptchaGet200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class SiteCaptchaGet200ResponseBuilder
    implements
        Builder<SiteCaptchaGet200Response, SiteCaptchaGet200ResponseBuilder> {
  _$SiteCaptchaGet200Response? _$v;

  SiteCaptchaGet200ResponseDataBuilder? _data;
  SiteCaptchaGet200ResponseDataBuilder get data =>
      _$this._data ??= SiteCaptchaGet200ResponseDataBuilder();
  set data(SiteCaptchaGet200ResponseDataBuilder? data) => _$this._data = data;

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

  SiteCaptchaGet200ResponseBuilder() {
    SiteCaptchaGet200Response._defaults(this);
  }

  SiteCaptchaGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _code = $v.code;
      _msg = $v.msg;
      _error = $v.error;
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SiteCaptchaGet200Response other) {
    _$v = other as _$SiteCaptchaGet200Response;
  }

  @override
  void update(void Function(SiteCaptchaGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SiteCaptchaGet200Response build() => _build();

  _$SiteCaptchaGet200Response _build() {
    _$SiteCaptchaGet200Response _$result;
    try {
      _$result = _$v ??
          _$SiteCaptchaGet200Response._(
            data: _data?.build(),
            code: code,
            msg: msg,
            error: error,
            correlationId: correlationId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SiteCaptchaGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
