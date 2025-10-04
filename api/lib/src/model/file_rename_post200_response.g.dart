// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_rename_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileRenamePost200Response extends FileRenamePost200Response {
  @override
  final FileRenamePost200ResponseData data;
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$FileRenamePost200Response(
          [void Function(FileRenamePost200ResponseBuilder)? updates]) =>
      (FileRenamePost200ResponseBuilder()..update(updates))._build();

  _$FileRenamePost200Response._(
      {required this.data,
      required this.code,
      this.msg,
      this.error,
      this.correlationId})
      : super._();
  @override
  FileRenamePost200Response rebuild(
          void Function(FileRenamePost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileRenamePost200ResponseBuilder toBuilder() =>
      FileRenamePost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileRenamePost200Response &&
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
    return (newBuiltValueToStringHelper(r'FileRenamePost200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class FileRenamePost200ResponseBuilder
    implements
        Builder<FileRenamePost200Response, FileRenamePost200ResponseBuilder> {
  _$FileRenamePost200Response? _$v;

  FileRenamePost200ResponseDataBuilder? _data;
  FileRenamePost200ResponseDataBuilder get data =>
      _$this._data ??= FileRenamePost200ResponseDataBuilder();
  set data(FileRenamePost200ResponseDataBuilder? data) => _$this._data = data;

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

  FileRenamePost200ResponseBuilder() {
    FileRenamePost200Response._defaults(this);
  }

  FileRenamePost200ResponseBuilder get _$this {
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
  void replace(FileRenamePost200Response other) {
    _$v = other as _$FileRenamePost200Response;
  }

  @override
  void update(void Function(FileRenamePost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileRenamePost200Response build() => _build();

  _$FileRenamePost200Response _build() {
    _$FileRenamePost200Response _$result;
    try {
      _$result = _$v ??
          _$FileRenamePost200Response._(
            data: data.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'FileRenamePost200Response', 'code'),
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
            r'FileRenamePost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
