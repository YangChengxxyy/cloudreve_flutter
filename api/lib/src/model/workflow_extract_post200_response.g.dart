// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_extract_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowExtractPost200Response extends WorkflowExtractPost200Response {
  @override
  final TaskResponse? data;
  @override
  final int? code;
  @override
  final String? msg;

  factory _$WorkflowExtractPost200Response(
          [void Function(WorkflowExtractPost200ResponseBuilder)? updates]) =>
      (WorkflowExtractPost200ResponseBuilder()..update(updates))._build();

  _$WorkflowExtractPost200Response._({this.data, this.code, this.msg})
      : super._();
  @override
  WorkflowExtractPost200Response rebuild(
          void Function(WorkflowExtractPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowExtractPost200ResponseBuilder toBuilder() =>
      WorkflowExtractPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowExtractPost200Response &&
        data == other.data &&
        code == other.code &&
        msg == other.msg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, data.hashCode);
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkflowExtractPost200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg))
        .toString();
  }
}

class WorkflowExtractPost200ResponseBuilder
    implements
        Builder<WorkflowExtractPost200Response,
            WorkflowExtractPost200ResponseBuilder> {
  _$WorkflowExtractPost200Response? _$v;

  TaskResponseBuilder? _data;
  TaskResponseBuilder get data => _$this._data ??= TaskResponseBuilder();
  set data(TaskResponseBuilder? data) => _$this._data = data;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  WorkflowExtractPost200ResponseBuilder() {
    WorkflowExtractPost200Response._defaults(this);
  }

  WorkflowExtractPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data?.toBuilder();
      _code = $v.code;
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowExtractPost200Response other) {
    _$v = other as _$WorkflowExtractPost200Response;
  }

  @override
  void update(void Function(WorkflowExtractPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowExtractPost200Response build() => _build();

  _$WorkflowExtractPost200Response _build() {
    _$WorkflowExtractPost200Response _$result;
    try {
      _$result = _$v ??
          _$WorkflowExtractPost200Response._(
            data: _data?.build(),
            code: code,
            msg: msg,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        _data?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkflowExtractPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
