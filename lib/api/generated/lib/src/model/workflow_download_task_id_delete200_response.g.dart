// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_download_task_id_delete200_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowDownloadTaskIdDelete200Response
    extends WorkflowDownloadTaskIdDelete200Response {
  @override
  final int code;
  @override
  final String? msg;

  factory _$WorkflowDownloadTaskIdDelete200Response(
          [void Function(WorkflowDownloadTaskIdDelete200ResponseBuilder)?
              updates]) =>
      (WorkflowDownloadTaskIdDelete200ResponseBuilder()..update(updates))
          ._build();

  _$WorkflowDownloadTaskIdDelete200Response._({required this.code, this.msg})
      : super._();
  @override
  WorkflowDownloadTaskIdDelete200Response rebuild(
          void Function(WorkflowDownloadTaskIdDelete200ResponseBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowDownloadTaskIdDelete200ResponseBuilder toBuilder() =>
      WorkflowDownloadTaskIdDelete200ResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowDownloadTaskIdDelete200Response &&
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
            r'WorkflowDownloadTaskIdDelete200Response')
          ..add('code', code)
          ..add('msg', msg))
        .toString();
  }
}

class WorkflowDownloadTaskIdDelete200ResponseBuilder
    implements
        Builder<WorkflowDownloadTaskIdDelete200Response,
            WorkflowDownloadTaskIdDelete200ResponseBuilder> {
  _$WorkflowDownloadTaskIdDelete200Response? _$v;

  int? _code;
  int? get code => _$this._code;
  set code(int? code) => _$this._code = code;

  String? _msg;
  String? get msg => _$this._msg;
  set msg(String? msg) => _$this._msg = msg;

  WorkflowDownloadTaskIdDelete200ResponseBuilder() {
    WorkflowDownloadTaskIdDelete200Response._defaults(this);
  }

  WorkflowDownloadTaskIdDelete200ResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _code = $v.code;
      _msg = $v.msg;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowDownloadTaskIdDelete200Response other) {
    _$v = other as _$WorkflowDownloadTaskIdDelete200Response;
  }

  @override
  void update(
      void Function(WorkflowDownloadTaskIdDelete200ResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowDownloadTaskIdDelete200Response build() => _build();

  _$WorkflowDownloadTaskIdDelete200Response _build() {
    final _$result = _$v ??
        _$WorkflowDownloadTaskIdDelete200Response._(
          code: BuiltValueNullFieldError.checkNotNull(
              code, r'WorkflowDownloadTaskIdDelete200Response', 'code'),
          msg: msg,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
