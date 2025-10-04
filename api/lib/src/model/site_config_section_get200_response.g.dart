// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_config_section_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SiteConfigSectionGet200Response
    extends SiteConfigSectionGet200Response {
  @override
  final SiteConfig data;
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$SiteConfigSectionGet200Response(
          [void Function(SiteConfigSectionGet200ResponseBuilder)? updates]) =>
      (SiteConfigSectionGet200ResponseBuilder()..update(updates))._build();

  _$SiteConfigSectionGet200Response._(
      {required this.data,
      required this.code,
      this.msg,
      this.error,
      this.correlationId})
      : super._();
  @override
  SiteConfigSectionGet200Response rebuild(
          void Function(SiteConfigSectionGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SiteConfigSectionGet200ResponseBuilder toBuilder() =>
      SiteConfigSectionGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SiteConfigSectionGet200Response &&
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
    return (newBuiltValueToStringHelper(r'SiteConfigSectionGet200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class SiteConfigSectionGet200ResponseBuilder
    implements
        Builder<SiteConfigSectionGet200Response,
            SiteConfigSectionGet200ResponseBuilder> {
  _$SiteConfigSectionGet200Response? _$v;

  SiteConfigBuilder? _data;
  SiteConfigBuilder get data => _$this._data ??= SiteConfigBuilder();
  set data(SiteConfigBuilder? data) => _$this._data = data;

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

  SiteConfigSectionGet200ResponseBuilder() {
    SiteConfigSectionGet200Response._defaults(this);
  }

  SiteConfigSectionGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _code = $v.code;
      _msg = $v.msg;
      _error = $v.error;
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SiteConfigSectionGet200Response other) {
    _$v = other as _$SiteConfigSectionGet200Response;
  }

  @override
  void update(void Function(SiteConfigSectionGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SiteConfigSectionGet200Response build() => _build();

  _$SiteConfigSectionGet200Response _build() {
    _$SiteConfigSectionGet200Response _$result;
    try {
      _$result = _$v ??
          _$SiteConfigSectionGet200Response._(
            data: data.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'SiteConfigSectionGet200Response', 'code'),
            msg: msg,
            error: error,
            correlationId: correlationId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'SiteConfigSectionGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
