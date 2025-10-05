// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_download_task_id_patch200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowDownloadTaskIdPatch200Response
    extends WorkflowDownloadTaskIdPatch200Response {
  @override
  final int? code;
  @override
  final String? msg;

  factory _$WorkflowDownloadTaskIdPatch200Response(
          [void Function(WorkflowDownloadTaskIdPatch200ResponseBuilder)?
              updates]) =>
      (WorkflowDownloadTaskIdPatch200ResponseBuilder()..update(updates))
          ._build();

  _$WorkflowDownloadTaskIdPatch200Response._({this.code, this.msg}) : super._();
  @override
  WorkflowDownloadTaskIdPatch200Response rebuild(
          void Function(WorkflowDownloadTaskIdPatch200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowDownloadTaskIdPatch200ResponseBuilder toBuilder() =>
      WorkflowDownloadTaskIdPatch200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowDownloadTaskIdPatch200Response &&
        code == other.code &&
        msg == other.msg;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, code.hashCode);
    _$hash = $jc(_$hash, msg.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'WorkflowDownloadTaskIdPatch200Response')
          ..add('code', code)
          ..add('msg', msg))
        .toString();
  }
}

class WorkflowDownloadTaskIdPatch200ResponseBuilder
    implements
        Builder<WorkflowDownloadTaskIdPatch200Response,
            WorkflowDownloadTaskIdPatch200ResponseBuilder> {
  _$WorkflowDownloadTaskIdPatch200Response? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  WorkflowDownloadTaskIdPatch200ResponseBuilder() {
    WorkflowDownloadTaskIdPatch200Response._defaults(this);
  }

  WorkflowDownloadTaskIdPatch200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowDownloadTaskIdPatch200Response other) {
    _$v = other as _$WorkflowDownloadTaskIdPatch200Response;
  }

  @override
  void update(
      void Function(WorkflowDownloadTaskIdPatch200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowDownloadTaskIdPatch200Response build() => _build();

  _$WorkflowDownloadTaskIdPatch200Response _build() {
    final _$result = _$v ??
        _$WorkflowDownloadTaskIdPatch200Response._(
          code: code,
          msg: msg,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
