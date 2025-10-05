// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_move_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileMovePost200Response extends FileMovePost200Response {
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

  factory _$FileMovePost200Response(
          [void Function(FileMovePost200ResponseBuilder)? updates]) =>
      (FileMovePost200ResponseBuilder()..update(updates))._build();

  _$FileMovePost200Response._(
      {this.code,
      this.msg,
      this.error,
      this.aggregatedError,
      this.correlationId})
      : super._();
  @override
  FileMovePost200Response rebuild(
          void Function(FileMovePost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileMovePost200ResponseBuilder toBuilder() =>
      FileMovePost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileMovePost200Response &&
        code == other.code &&
        msg == other.msg &&
        error == other.error &&
        aggregatedError == other.aggregatedError &&
        correlationId == other.correlationId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
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
    return (newBuiltValueToStringHelper(r'FileMovePost200Response')
          ..add('code', code)
          ..add('msg', msg)
          ..add('error', error)
          ..add('aggregatedError', aggregatedError)
          ..add('correlationId', correlationId))
        .toString();
  }
}

class FileMovePost200ResponseBuilder
    implements
        Builder<FileMovePost200Response, FileMovePost200ResponseBuilder> {
  _$FileMovePost200Response? _$v;

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

  FileMovePost200ResponseBuilder() {
    FileMovePost200Response._defaults(this);
  }

  FileMovePost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
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
  void replace(FileMovePost200Response other) {
    _$v = other as _$FileMovePost200Response;
  }

  @override
  void update(void Function(FileMovePost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileMovePost200Response build() => _build();

  _$FileMovePost200Response _build() {
    _$FileMovePost200Response _$result;
    try {
      _$result = _$v ??
          _$FileMovePost200Response._(
            code: code,
            msg: msg,
            error: error,
            aggregatedError: _aggregatedError?.build(),
            correlationId: correlationId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'aggregatedError';
        _aggregatedError?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileMovePost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
