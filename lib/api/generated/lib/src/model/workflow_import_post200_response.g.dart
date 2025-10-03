// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_import_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowImportPost200Response extends WorkflowImportPost200Response {
  @override
  final TaskResponse data;
  @override
  final int code;
  @override
  final String? msg;

  factory _$WorkflowImportPost200Response(
          [void Function(WorkflowImportPost200ResponseBuilder)? updates]) =>
      (WorkflowImportPost200ResponseBuilder()..update(updates))._build();

  _$WorkflowImportPost200Response._(
      {required this.data, required this.code, this.msg})
      : super._();
  @override
  WorkflowImportPost200Response rebuild(
          void Function(WorkflowImportPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowImportPost200ResponseBuilder toBuilder() =>
      WorkflowImportPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowImportPost200Response &&
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
    return (newBuiltValueToStringHelper(r'WorkflowImportPost200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg))
        .toString();
  }
}

class WorkflowImportPost200ResponseBuilder
    implements
        Builder<WorkflowImportPost200Response,
            WorkflowImportPost200ResponseBuilder> {
  _$WorkflowImportPost200Response? _$v;

  TaskResponseBuilder? _data;
  TaskResponseBuilder get data => _$this._data ??= TaskResponseBuilder();
  set data(TaskResponseBuilder? data) => _$this._data = data;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  WorkflowImportPost200ResponseBuilder() {
    WorkflowImportPost200Response._defaults(this);
  }

  WorkflowImportPost200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _data = $v.data.toBuilder();
      _code = $v.code;
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowImportPost200Response other) {
    _$v = other as _$WorkflowImportPost200Response;
  }

  @override
  void update(void Function(WorkflowImportPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowImportPost200Response build() => _build();

  _$WorkflowImportPost200Response _build() {
    _$WorkflowImportPost200Response _$result;
    try {
      _$result = _$v ??
          _$WorkflowImportPost200Response._(
            data: data.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'WorkflowImportPost200Response', 'code'),
            msg: msg,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkflowImportPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
