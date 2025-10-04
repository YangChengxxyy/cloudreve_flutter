// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_reloacte_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowReloactePost200Response
    extends WorkflowReloactePost200Response {
  @override
  final TaskResponse data;
  @override
  final int code;
  @override
  final String? msg;

  factory _$WorkflowReloactePost200Response(
          [void Function(WorkflowReloactePost200ResponseBuilder)? updates]) =>
      (WorkflowReloactePost200ResponseBuilder()..update(updates))._build();

  _$WorkflowReloactePost200Response._(
      {required this.data, required this.code, this.msg})
      : super._();
  @override
  WorkflowReloactePost200Response rebuild(
          void Function(WorkflowReloactePost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowReloactePost200ResponseBuilder toBuilder() =>
      WorkflowReloactePost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowReloactePost200Response &&
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
    return (newBuiltValueToStringHelper(r'WorkflowReloactePost200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg))
        .toString();
  }
}

class WorkflowReloactePost200ResponseBuilder
    implements
        Builder<WorkflowReloactePost200Response,
            WorkflowReloactePost200ResponseBuilder> {
  _$WorkflowReloactePost200Response? _$v;

  TaskResponseBuilder? _data;
  TaskResponseBuilder get data => _$this._data ??= TaskResponseBuilder();
  set data(TaskResponseBuilder? data) => _$this._data = data;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  WorkflowReloactePost200ResponseBuilder() {
    WorkflowReloactePost200Response._defaults(this);
  }

  WorkflowReloactePost200ResponseBuilder get _$this {
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
  void replace(WorkflowReloactePost200Response other) {
    _$v = other as _$WorkflowReloactePost200Response;
  }

  @override
  void update(void Function(WorkflowReloactePost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowReloactePost200Response build() => _build();

  _$WorkflowReloactePost200Response _build() {
    _$WorkflowReloactePost200Response _$result;
    try {
      _$result = _$v ??
          _$WorkflowReloactePost200Response._(
            data: data.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'WorkflowReloactePost200Response', 'code'),
            msg: msg,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkflowReloactePost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
