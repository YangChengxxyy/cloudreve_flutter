// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_id_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShareIdPost200Response extends ShareIdPost200Response {
  @override
  final LoginResponse? data;
  @override
  final int? code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$ShareIdPost200Response(
          [void Function(ShareIdPost200ResponseBuilder)? updates]) =>
      (ShareIdPost200ResponseBuilder()..update(updates))._build();

  _$ShareIdPost200Response._(
      {this.data, this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  ShareIdPost200Response rebuild(
          void Function(ShareIdPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareIdPost200ResponseBuilder toBuilder() =>
      ShareIdPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareIdPost200Response &&
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
    return (newBuiltValueToStringHelper(r'ShareIdPost200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class ShareIdPost200ResponseBuilder
    implements Builder<ShareIdPost200Response, ShareIdPost200ResponseBuilder> {
  _$ShareIdPost200Response? _$v;

  LoginResponseBuilder? _data;
  LoginResponseBuilder get data => _$this._data ??= LoginResponseBuilder();
  set data(LoginResponseBuilder? data) => _$this._data = data;

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

  ShareIdPost200ResponseBuilder() {
    ShareIdPost200Response._defaults(this);
  }

  ShareIdPost200ResponseBuilder get _$this {
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
  void replace(ShareIdPost200Response other) {
    _$v = other as _$ShareIdPost200Response;
  }

  @override
  void update(void Function(ShareIdPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareIdPost200Response build() => _build();

  _$ShareIdPost200Response _build() {
    _$ShareIdPost200Response _$result;
    try {
      _$result = _$v ??
          _$ShareIdPost200Response._(
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
            r'ShareIdPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
