// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vas_giftcode_code_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VasGiftcodeCodeGet200Response extends VasGiftcodeCodeGet200Response {
  @override
  final VasGiftcodeCodeGet200ResponseData? data;
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$VasGiftcodeCodeGet200Response(
          [void Function(VasGiftcodeCodeGet200ResponseBuilder)? updates]) =>
      (VasGiftcodeCodeGet200ResponseBuilder()..update(updates))._build();

  _$VasGiftcodeCodeGet200Response._(
      {this.data, required this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  VasGiftcodeCodeGet200Response rebuild(
          void Function(VasGiftcodeCodeGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VasGiftcodeCodeGet200ResponseBuilder toBuilder() =>
      VasGiftcodeCodeGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VasGiftcodeCodeGet200Response &&
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
    return (newBuiltValueToStringHelper(r'VasGiftcodeCodeGet200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class VasGiftcodeCodeGet200ResponseBuilder
    implements
        Builder<VasGiftcodeCodeGet200Response,
            VasGiftcodeCodeGet200ResponseBuilder> {
  _$VasGiftcodeCodeGet200Response? _$v;

  VasGiftcodeCodeGet200ResponseDataBuilder? _data;
  VasGiftcodeCodeGet200ResponseDataBuilder get data =>
      _$this._data ??= VasGiftcodeCodeGet200ResponseDataBuilder();
  set data(VasGiftcodeCodeGet200ResponseDataBuilder? data) =>
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

  VasGiftcodeCodeGet200ResponseBuilder() {
    VasGiftcodeCodeGet200Response._defaults(this);
  }

  VasGiftcodeCodeGet200ResponseBuilder get _$this {
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
  void replace(VasGiftcodeCodeGet200Response other) {
    _$v = other as _$VasGiftcodeCodeGet200Response;
  }

  @override
  void update(void Function(VasGiftcodeCodeGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VasGiftcodeCodeGet200Response build() => _build();

  _$VasGiftcodeCodeGet200Response _build() {
    _$VasGiftcodeCodeGet200Response _$result;
    try {
      _$result = _$v ??
          _$VasGiftcodeCodeGet200Response._(
            data: _data?.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'VasGiftcodeCodeGet200Response', 'code'),
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
            r'VasGiftcodeCodeGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
