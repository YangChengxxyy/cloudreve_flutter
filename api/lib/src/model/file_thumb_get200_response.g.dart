// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_thumb_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileThumbGet200Response extends FileThumbGet200Response {
  @override
  final FileThumbGet200ResponseData? data;
  @override
  final int? code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$FileThumbGet200Response(
          [void Function(FileThumbGet200ResponseBuilder)? updates]) =>
      (FileThumbGet200ResponseBuilder()..update(updates))._build();

  _$FileThumbGet200Response._(
      {this.data, this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  FileThumbGet200Response rebuild(
          void Function(FileThumbGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileThumbGet200ResponseBuilder toBuilder() =>
      FileThumbGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileThumbGet200Response &&
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
    return (newBuiltValueToStringHelper(r'FileThumbGet200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class FileThumbGet200ResponseBuilder
    implements
        Builder<FileThumbGet200Response, FileThumbGet200ResponseBuilder> {
  _$FileThumbGet200Response? _$v;

  FileThumbGet200ResponseDataBuilder? _data;
  FileThumbGet200ResponseDataBuilder get data =>
      _$this._data ??= FileThumbGet200ResponseDataBuilder();
  set data(FileThumbGet200ResponseDataBuilder? data) => _$this._data = data;

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

  FileThumbGet200ResponseBuilder() {
    FileThumbGet200Response._defaults(this);
  }

  FileThumbGet200ResponseBuilder get _$this {
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
  void replace(FileThumbGet200Response other) {
    _$v = other as _$FileThumbGet200Response;
  }

  @override
  void update(void Function(FileThumbGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileThumbGet200Response build() => _build();

  _$FileThumbGet200Response _build() {
    _$FileThumbGet200Response _$result;
    try {
      _$result = _$v ??
          _$FileThumbGet200Response._(
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
            r'FileThumbGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
