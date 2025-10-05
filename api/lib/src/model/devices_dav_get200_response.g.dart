// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'devices_dav_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$DevicesDavGet200Response extends DevicesDavGet200Response {
  @override
  final BuiltList<DevicesDavGet200ResponseDataInner>? data;
  @override
  final int? code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$DevicesDavGet200Response(
          [void Function(DevicesDavGet200ResponseBuilder)? updates]) =>
      (DevicesDavGet200ResponseBuilder()..update(updates))._build();

  _$DevicesDavGet200Response._(
      {this.data, this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  DevicesDavGet200Response rebuild(
          void Function(DevicesDavGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DevicesDavGet200ResponseBuilder toBuilder() =>
      DevicesDavGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DevicesDavGet200Response &&
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
    return (newBuiltValueToStringHelper(r'DevicesDavGet200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class DevicesDavGet200ResponseBuilder
    implements
        Builder<DevicesDavGet200Response, DevicesDavGet200ResponseBuilder> {
  _$DevicesDavGet200Response? _$v;

  ListBuilder<DevicesDavGet200ResponseDataInner>? _data;
  ListBuilder<DevicesDavGet200ResponseDataInner> get data =>
      _$this._data ??= ListBuilder<DevicesDavGet200ResponseDataInner>();
  set data(ListBuilder<DevicesDavGet200ResponseDataInner>? data) =>
      _$this._data = data;

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

  DevicesDavGet200ResponseBuilder() {
    DevicesDavGet200Response._defaults(this);
  }

  DevicesDavGet200ResponseBuilder get _$this {
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
  void replace(DevicesDavGet200Response other) {
    _$v = other as _$DevicesDavGet200Response;
  }

  @override
  void update(void Function(DevicesDavGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  DevicesDavGet200Response build() => _build();

  _$DevicesDavGet200Response _build() {
    _$DevicesDavGet200Response _$result;
    try {
      _$result = _$v ??
          _$DevicesDavGet200Response._(
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
            r'DevicesDavGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
