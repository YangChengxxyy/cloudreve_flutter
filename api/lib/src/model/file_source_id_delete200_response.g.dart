// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_source_id_delete200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileSourceIdDelete200Response extends FileSourceIdDelete200Response {
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$FileSourceIdDelete200Response(
          [void Function(FileSourceIdDelete200ResponseBuilder)? updates]) =>
      (FileSourceIdDelete200ResponseBuilder()..update(updates))._build();

  _$FileSourceIdDelete200Response._(
      {required this.code, this.msg, this.error, this.correlationId})
      : super._();
  @override
  FileSourceIdDelete200Response rebuild(
          void Function(FileSourceIdDelete200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileSourceIdDelete200ResponseBuilder toBuilder() =>
      FileSourceIdDelete200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileSourceIdDelete200Response &&
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
    return (newBuiltValueToStringHelper(r'FileSourceIdDelete200Response')
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class FileSourceIdDelete200ResponseBuilder
    implements
        Builder<FileSourceIdDelete200Response,
            FileSourceIdDelete200ResponseBuilder> {
  _$FileSourceIdDelete200Response? _$v;

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

  FileSourceIdDelete200ResponseBuilder() {
    FileSourceIdDelete200Response._defaults(this);
  }

  FileSourceIdDelete200ResponseBuilder get _$this {
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
  void replace(FileSourceIdDelete200Response other) {
    _$v = other as _$FileSourceIdDelete200Response;
  }

  @override
  void update(void Function(FileSourceIdDelete200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileSourceIdDelete200Response build() => _build();

  _$FileSourceIdDelete200Response _build() {
    final _$result = _$v ??
        _$FileSourceIdDelete200Response._(
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'FileSourceIdDelete200Response', 'code'),
          msg: msg,
          error: error,
          correlationId: correlationId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
