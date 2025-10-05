// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_put200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$SharePut200Response extends SharePut200Response {
  @override
  final String? data;
  @override
  final int? code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$SharePut200Response(
          [void Function(SharePut200ResponseBuilder)? updates]) =>
      (SharePut200ResponseBuilder()..update(updates))._build();

  _$SharePut200Response._(
      {this.data, this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  SharePut200Response rebuild(
          void Function(SharePut200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SharePut200ResponseBuilder toBuilder() =>
      SharePut200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SharePut200Response &&
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
    return (newBuiltValueToStringHelper(r'SharePut200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class SharePut200ResponseBuilder
    implements Builder<SharePut200Response, SharePut200ResponseBuilder> {
  _$SharePut200Response? _$v;

  String? _data;
  String? get data => _$this._data;
  set data(String? data) => _$this._data = data;

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

  SharePut200ResponseBuilder() {
    SharePut200Response._defaults(this);
  }

  SharePut200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data;
      _code = $v.code;
      _msg = $v.msg;
      _error = $v.error;
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SharePut200Response other) {
    _$v = other as _$SharePut200Response;
  }

  @override
  void update(void Function(SharePut200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  SharePut200Response build() => _build();

  _$SharePut200Response _build() {
    final _$result = _$v ??
        _$SharePut200Response._(
          data: data,
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
