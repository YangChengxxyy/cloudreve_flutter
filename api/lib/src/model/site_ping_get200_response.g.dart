// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'site_ping_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SitePingGet200Response extends SitePingGet200Response {
  @override
  final SitePingGet200ResponseData data;
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$SitePingGet200Response(
          [void Function(SitePingGet200ResponseBuilder)? updates]) =>
      (SitePingGet200ResponseBuilder()..update(updates))._build();

  _$SitePingGet200Response._(
      {required this.data,
      required this.code,
      this.msg,
      this.error,
      this.correlationId})
      : super._();
  @override
  SitePingGet200Response rebuild(
          void Function(SitePingGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SitePingGet200ResponseBuilder toBuilder() =>
      SitePingGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SitePingGet200Response &&
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
    return (newBuiltValueToStringHelper(r'SitePingGet200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class SitePingGet200ResponseBuilder
    implements Builder<SitePingGet200Response, SitePingGet200ResponseBuilder> {
  _$SitePingGet200Response? _$v;

  SitePingGet200ResponseDataBuilder? _data;
  SitePingGet200ResponseDataBuilder get data =>
      _$this._data ??= SitePingGet200ResponseDataBuilder();
  set data(SitePingGet200ResponseDataBuilder? data) => _$this._data = data;

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

  SitePingGet200ResponseBuilder() {
    SitePingGet200Response._defaults(this);
  }

  SitePingGet200ResponseBuilder get _$this {
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
  void replace(SitePingGet200Response other) {
    _$v = other as _$SitePingGet200Response;
  }

  @override
  void update(void Function(SitePingGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SitePingGet200Response build() => _build();

  _$SitePingGet200Response _build() {
    _$SitePingGet200Response _$result;
    try {
      _$result = _$v ??
          _$SitePingGet200Response._(
            data: data.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'SitePingGet200Response', 'code'),
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
            r'SitePingGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
