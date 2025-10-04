// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'share_info_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ShareInfoIdGet200Response extends ShareInfoIdGet200Response {
  @override
  final Share? data;
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$ShareInfoIdGet200Response(
          [void Function(ShareInfoIdGet200ResponseBuilder)? updates]) =>
      (ShareInfoIdGet200ResponseBuilder()..update(updates))._build();

  _$ShareInfoIdGet200Response._(
      {this.data, required this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  ShareInfoIdGet200Response rebuild(
          void Function(ShareInfoIdGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ShareInfoIdGet200ResponseBuilder toBuilder() =>
      ShareInfoIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ShareInfoIdGet200Response &&
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
    return (newBuiltValueToStringHelper(r'ShareInfoIdGet200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class ShareInfoIdGet200ResponseBuilder
    implements
        Builder<ShareInfoIdGet200Response, ShareInfoIdGet200ResponseBuilder> {
  _$ShareInfoIdGet200Response? _$v;

  ShareBuilder? _data;
  ShareBuilder get data => _$this._data ??= ShareBuilder();
  set data(ShareBuilder? data) => _$this._data = data;

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

  ShareInfoIdGet200ResponseBuilder() {
    ShareInfoIdGet200Response._defaults(this);
  }

  ShareInfoIdGet200ResponseBuilder get _$this {
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
  void replace(ShareInfoIdGet200Response other) {
    _$v = other as _$ShareInfoIdGet200Response;
  }

  @override
  void update(void Function(ShareInfoIdGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ShareInfoIdGet200Response build() => _build();

  _$ShareInfoIdGet200Response _build() {
    _$ShareInfoIdGet200Response _$result;
    try {
      _$result = _$v ??
          _$ShareInfoIdGet200Response._(
            data: _data?.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'ShareInfoIdGet200Response', 'code'),
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
            r'ShareInfoIdGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
