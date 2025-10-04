// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowGet200Response extends WorkflowGet200Response {
  @override
  final TaskListResponse data;
  @override
  final int code;
  @override
  final String? msg;

  factory _$WorkflowGet200Response(
          [void Function(WorkflowGet200ResponseBuilder)? updates]) =>
      (WorkflowGet200ResponseBuilder()..update(updates))._build();

  _$WorkflowGet200Response._({required this.data, required this.code, this.msg})
      : super._();
  @override
  WorkflowGet200Response rebuild(
          void Function(WorkflowGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowGet200ResponseBuilder toBuilder() =>
      WorkflowGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowGet200Response &&
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
    return (newBuiltValueToStringHelper(r'WorkflowGet200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg))
        .toString();
  }
}

class WorkflowGet200ResponseBuilder
    implements Builder<WorkflowGet200Response, WorkflowGet200ResponseBuilder> {
  _$WorkflowGet200Response? _$v;

  TaskListResponseBuilder? _data;
  TaskListResponseBuilder get data =>
      _$this._data ??= TaskListResponseBuilder();
  set data(TaskListResponseBuilder? data) => _$this._data = data;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  WorkflowGet200ResponseBuilder() {
    WorkflowGet200Response._defaults(this);
  }

  WorkflowGet200ResponseBuilder get _$this {
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
  void replace(WorkflowGet200Response other) {
    _$v = other as _$WorkflowGet200Response;
  }

  @override
  void update(void Function(WorkflowGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowGet200Response build() => _build();

  _$WorkflowGet200Response _build() {
    _$WorkflowGet200Response _$result;
    try {
      _$result = _$v ??
          _$WorkflowGet200Response._(
            data: data.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'WorkflowGet200Response', 'code'),
            msg: msg,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkflowGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
