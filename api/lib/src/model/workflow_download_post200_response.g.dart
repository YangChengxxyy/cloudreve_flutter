// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_download_post200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowDownloadPost200Response
    extends WorkflowDownloadPost200Response {
  @override
  final TaskResponse data;
  @override
  final int code;
  @override
  final String? msg;

  factory _$WorkflowDownloadPost200Response(
          [void Function(WorkflowDownloadPost200ResponseBuilder)? updates]) =>
      (WorkflowDownloadPost200ResponseBuilder()..update(updates))._build();

  _$WorkflowDownloadPost200Response._(
      {required this.data, required this.code, this.msg})
      : super._();
  @override
  WorkflowDownloadPost200Response rebuild(
          void Function(WorkflowDownloadPost200ResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowDownloadPost200ResponseBuilder toBuilder() =>
      WorkflowDownloadPost200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowDownloadPost200Response &&
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
    return (newBuiltValueToStringHelper(r'WorkflowDownloadPost200Response')
          ..add('data', data)
          ..add('code', code)
          ..add('msg', msg))
        .toString();
  }
}

class WorkflowDownloadPost200ResponseBuilder
    implements
        Builder<WorkflowDownloadPost200Response,
            WorkflowDownloadPost200ResponseBuilder> {
  _$WorkflowDownloadPost200Response? _$v;

  TaskResponseBuilder? _data;
  TaskResponseBuilder get data => _$this._data ??= TaskResponseBuilder();
  set data(TaskResponseBuilder? data) => _$this._data = data;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  WorkflowDownloadPost200ResponseBuilder() {
    WorkflowDownloadPost200Response._defaults(this);
  }

  WorkflowDownloadPost200ResponseBuilder get _$this {
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
  void replace(WorkflowDownloadPost200Response other) {
    _$v = other as _$WorkflowDownloadPost200Response;
  }

  @override
  void update(void Function(WorkflowDownloadPost200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowDownloadPost200Response build() => _build();

  _$WorkflowDownloadPost200Response _build() {
    _$WorkflowDownloadPost200Response _$result;
    try {
      _$result = _$v ??
          _$WorkflowDownloadPost200Response._(
            data: data.build(),
            code: BuiltValueNullFieldError.checkNotNull(
                code, r'WorkflowDownloadPost200Response', 'code'),
            msg: msg,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'data';
        data.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkflowDownloadPost200Response', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
