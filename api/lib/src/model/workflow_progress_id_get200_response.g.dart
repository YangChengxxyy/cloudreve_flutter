// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_progress_id_get200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowProgressIdGet200Response
    extends WorkflowProgressIdGet200Response {
  @override
  final BuiltMap<String, Progress>? data;
  @override
  final int? code;
  @override
  final String? msg;

  factory _$WorkflowProgressIdGet200Response(
          [void Function(WorkflowProgressIdGet200ResponseBuilder)? updates]) =>
      (WorkflowProgressIdGet200ResponseBuilder()..update(updates))._build();

  _$WorkflowProgressIdGet200Response._({this.data, this.code, this.msg})
      : super._();
  @override
  WorkflowProgressIdGet200Response rebuild(
          void Function(WorkflowProgressIdGet200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowProgressIdGet200ResponseBuilder toBuilder() =>
      WorkflowProgressIdGet200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowProgressIdGet200Response &&
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
    return (newBuiltValueToStringHelper(r'WorkflowProgressIdGet200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg))
        .toString();
  }
}

class WorkflowProgressIdGet200ResponseBuilder
    implements
        Builder<WorkflowProgressIdGet200Response,
            WorkflowProgressIdGet200ResponseBuilder> {
  _$WorkflowProgressIdGet200Response? _$v;

  MapBuilder<String, Progress>? _data;
  MapBuilder<String, Progress> get data =>
      _$this._data ??= MapBuilder<String, Progress>();
  set data(MapBuilder<String, Progress>? data) => _$this._data = data;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  WorkflowProgressIdGet200ResponseBuilder() {
    WorkflowProgressIdGet200Response._defaults(this);
  }

  WorkflowProgressIdGet200ResponseBuilder get _$this {
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
  void replace(WorkflowProgressIdGet200Response other) {
    _$v = other as _$WorkflowProgressIdGet200Response;
  }

  @override
  void update(void Function(WorkflowProgressIdGet200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowProgressIdGet200Response build() => _build();

  _$WorkflowProgressIdGet200Response _build() {
    _$WorkflowProgressIdGet200Response _$result;
    try {
      _$result = _$v ??
          _$WorkflowProgressIdGet200Response._(
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
            r'WorkflowProgressIdGet200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
