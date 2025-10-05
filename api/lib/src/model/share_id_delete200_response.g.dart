// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_id_delete200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShareIdDelete200Response extends ShareIdDelete200Response {
  @override
  final int? code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$ShareIdDelete200Response(
          [void Function(ShareIdDelete200ResponseBuilder)? updates]) =>
      (ShareIdDelete200ResponseBuilder()..update(updates))._build();

  _$ShareIdDelete200Response._(
      {this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  ShareIdDelete200Response rebuild(
          void Function(ShareIdDelete200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareIdDelete200ResponseBuilder toBuilder() =>
      ShareIdDelete200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareIdDelete200Response &&
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
    return (newBuiltValueToStringHelper(r'ShareIdDelete200Response')
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class ShareIdDelete200ResponseBuilder
    implements
        Builder<ShareIdDelete200Response, ShareIdDelete200ResponseBuilder> {
  _$ShareIdDelete200Response? _$v;

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

  ShareIdDelete200ResponseBuilder() {
    ShareIdDelete200Response._defaults(this);
  }

  ShareIdDelete200ResponseBuilder get _$this {
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
  void replace(ShareIdDelete200Response other) {
    _$v = other as _$ShareIdDelete200Response;
  }

  @override
  void update(void Function(ShareIdDelete200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareIdDelete200Response build() => _build();

  _$ShareIdDelete200Response _build() {
    final _$result = _$v ??
        _$ShareIdDelete200Response._(
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
