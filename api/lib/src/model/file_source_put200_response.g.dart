// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_source_put200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileSourcePut200Response extends FileSourcePut200Response {
  @override
  final BuiltList<FileSourcePut200ResponseDataInner>? data;
  @override
  final int? code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final BuiltMap<String, Response>? aggregatedError;
  @override
  final String? correlationId;

  factory _$FileSourcePut200Response(
          [void Function(FileSourcePut200ResponseBuilder)? updates]) =>
      (FileSourcePut200ResponseBuilder()..update(updates))._build();

  _$FileSourcePut200Response._(
      {this.data,
      this.code,
      this.msg,
      this.error,
      this.aggregatedError,
      this.correlationId})
      : super._();
  @override
  FileSourcePut200Response rebuild(
          void Function(FileSourcePut200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileSourcePut200ResponseBuilder toBuilder() =>
      FileSourcePut200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileSourcePut200Response &&
        data == other.data &&
        code == other.code &&
        msg == other.msg &&
        error == other.error &&
        aggregatedError == other.aggregatedError &&
        correlationId == other.correlationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jc(_$hash, error.hashCode);
    _$hash = $jc(_$hash, aggregatedError.hashCode);
    _$hash = $jc(_$hash, correlationId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileSourcePut200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('aggregatedError', aggregatedError)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class FileSourcePut200ResponseBuilder
    implements
        Builder<FileSourcePut200Response, FileSourcePut200ResponseBuilder> {
  _$FileSourcePut200Response? _$v;

  ListBuilder<FileSourcePut200ResponseDataInner>? _data;
  ListBuilder<FileSourcePut200ResponseDataInner> get data =>
      _$this._data ??= ListBuilder<FileSourcePut200ResponseDataInner>();
  set data(ListBuilder<FileSourcePut200ResponseDataInner>? data) =>
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

  MapBuilder<String, Response>? _aggregatedError;
  MapBuilder<String, Response> get aggregatedError =>
      _$this._aggregatedError ??= MapBuilder<String, Response>();
  set aggregatedError(MapBuilder<String, Response>? aggregatedError) =>
      _$this._aggregatedError = aggregatedError;

  String? _correlationId;
  String? get correlationId => _$this._correlationId;
  set correlationId(String? correlationId) =>
      _$this._correlationId = correlationId;

  FileSourcePut200ResponseBuilder() {
    FileSourcePut200Response._defaults(this);
  }

  FileSourcePut200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _code = $v.code;
      _msg = $v.msg;
      _error = $v.error;
      _aggregatedError = $v.aggregatedError?.toBuilder();
      _correlationId = $v.correlationId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileSourcePut200Response other) {
    _$v = other as _$FileSourcePut200Response;
  }

  @override
  void update(void Function(FileSourcePut200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileSourcePut200Response build() => _build();

  _$FileSourcePut200Response _build() {
    _$FileSourcePut200Response _$result;
    try {
      _$result = _$v ??
          _$FileSourcePut200Response._(
            data: _data?.build(),
            code: code,
            msg: msg,
            error: error,
            aggregatedError: _aggregatedError?.build(),
            correlationId: correlationId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();

        _$failedField = 'aggregatedError';
        _aggregatedError?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileSourcePut200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
