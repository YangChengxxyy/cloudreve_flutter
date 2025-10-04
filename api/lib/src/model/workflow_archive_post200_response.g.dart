// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_archive_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowArchivePost200Response extends WorkflowArchivePost200Response {
  @override
  final TaskResponse data;
  @override
  final int code;
  @override
  final String? msg;

  factory _$WorkflowArchivePost200Response(
          [void Function(WorkflowArchivePost200ResponseBuilder)? updates]) =>
      (WorkflowArchivePost200ResponseBuilder()..update(updates))._build();

  _$WorkflowArchivePost200Response._(
      {required this.data, required this.code, this.msg})
      : super._();
  @override
  WorkflowArchivePost200Response rebuild(
          void Function(WorkflowArchivePost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowArchivePost200ResponseBuilder toBuilder() =>
      WorkflowArchivePost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowArchivePost200Response &&
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
    return (newBuiltValueToStringHelper(r'WorkflowArchivePost200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg))
        .toString();
  }
}

class WorkflowArchivePost200ResponseBuilder
    implements
        Builder<WorkflowArchivePost200Response,
            WorkflowArchivePost200ResponseBuilder> {
  _$WorkflowArchivePost200Response? _$v;

  TaskResponseBuilder? _data;
  TaskResponseBuilder get data => _$this._data ??= TaskResponseBuilder();
  set data(TaskResponseBuilder? data) => _$this._data = data;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  WorkflowArchivePost200ResponseBuilder() {
    WorkflowArchivePost200Response._defaults(this);
  }

  WorkflowArchivePost200ResponseBuilder get _$this {
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
  void replace(WorkflowArchivePost200Response other) {
    _$v = other as _$WorkflowArchivePost200Response;
  }

  @override
  void update(void Function(WorkflowArchivePost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowArchivePost200Response build() => _build();

  _$WorkflowArchivePost200Response _build() {
    _$WorkflowArchivePost200Response _$result;
    try {
      _$result = _$v ??
          _$WorkflowArchivePost200Response._(
            data: data.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'WorkflowArchivePost200Response', 'code'),
            msg: msg,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkflowArchivePost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
