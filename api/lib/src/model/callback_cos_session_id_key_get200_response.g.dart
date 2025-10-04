// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'callback_cos_session_id_key_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$CallbackCosSessionIdKeyGet200Response
    extends CallbackCosSessionIdKeyGet200Response {
  @override
  final int code;
  @override
  final String? msg;

  factory _$CallbackCosSessionIdKeyGet200Response(
          [void Function(CallbackCosSessionIdKeyGet200ResponseBuilder)?
              updates]) =>
      (CallbackCosSessionIdKeyGet200ResponseBuilder()..update(updates))
          ._build();

  _$CallbackCosSessionIdKeyGet200Response._({required this.code, this.msg})
      : super._();
  @override
  CallbackCosSessionIdKeyGet200Response rebuild(
          void Function(CallbackCosSessionIdKeyGet200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CallbackCosSessionIdKeyGet200ResponseBuilder toBuilder() =>
      CallbackCosSessionIdKeyGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CallbackCosSessionIdKeyGet200Response &&
        code == other.code &&
        msg == other.msg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'CallbackCosSessionIdKeyGet200Response')
          ..add('code', code)
          ..add('msg', msg))
        .toString();
  }
}

class CallbackCosSessionIdKeyGet200ResponseBuilder
    implements
        Builder<CallbackCosSessionIdKeyGet200Response,
            CallbackCosSessionIdKeyGet200ResponseBuilder> {
  _$CallbackCosSessionIdKeyGet200Response? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  CallbackCosSessionIdKeyGet200ResponseBuilder() {
    CallbackCosSessionIdKeyGet200Response._defaults(this);
  }

  CallbackCosSessionIdKeyGet200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CallbackCosSessionIdKeyGet200Response other) {
    _$v = other as _$CallbackCosSessionIdKeyGet200Response;
  }

  @override
  void update(
      void Function(CallbackCosSessionIdKeyGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  CallbackCosSessionIdKeyGet200Response build() => _build();

  _$CallbackCosSessionIdKeyGet200Response _build() {
    final _$result = _$v ??
        _$CallbackCosSessionIdKeyGet200Response._(
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'CallbackCosSessionIdKeyGet200Response', 'code'),
          msg: msg,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
