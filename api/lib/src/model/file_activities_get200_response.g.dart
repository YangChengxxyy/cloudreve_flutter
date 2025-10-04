// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_activities_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileActivitiesGet200Response extends FileActivitiesGet200Response {
  @override
  final FileActivitiesResponse data;
  @override
  final int code;
  @override
  final String? msg;
  @override
  final String? error;
  @override
  final String? correlationId;

  factory _$FileActivitiesGet200Response(
          [void Function(FileActivitiesGet200ResponseBuilder)? updates]) =>
      (FileActivitiesGet200ResponseBuilder()..update(updates))._build();

  _$FileActivitiesGet200Response._(
      {required this.data,
      required this.code,
      this.msg,
      this.error,
      this.correlationId})
      : super._();
  @override
  FileActivitiesGet200Response rebuild(
          void Function(FileActivitiesGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileActivitiesGet200ResponseBuilder toBuilder() =>
      FileActivitiesGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileActivitiesGet200Response &&
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
    return (newBuiltValueToStringHelper(r'FileActivitiesGet200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class FileActivitiesGet200ResponseBuilder
    implements
        Builder<FileActivitiesGet200Response,
            FileActivitiesGet200ResponseBuilder> {
  _$FileActivitiesGet200Response? _$v;

  FileActivitiesResponseBuilder? _data;
  FileActivitiesResponseBuilder get data =>
      _$this._data ??= FileActivitiesResponseBuilder();
  set data(FileActivitiesResponseBuilder? data) => _$this._data = data;

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

  FileActivitiesGet200ResponseBuilder() {
    FileActivitiesGet200Response._defaults(this);
  }

  FileActivitiesGet200ResponseBuilder get _$this {
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
  void replace(FileActivitiesGet200Response other) {
    _$v = other as _$FileActivitiesGet200Response;
  }

  @override
  void update(void Function(FileActivitiesGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileActivitiesGet200Response build() => _build();

  _$FileActivitiesGet200Response _build() {
    _$FileActivitiesGet200Response _$result;
    try {
      _$result = _$v ??
          _$FileActivitiesGet200Response._(
            data: data.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'FileActivitiesGet200Response', 'code'),
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
            r'FileActivitiesGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
