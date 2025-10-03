// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_download_task_id_patch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowDownloadTaskIdPatchRequest
    extends WorkflowDownloadTaskIdPatchRequest {
  @override
  final BuiltList<WorkflowDownloadTaskIdPatchRequestFilesInner> files;

  factory _$WorkflowDownloadTaskIdPatchRequest(
          [void Function(WorkflowDownloadTaskIdPatchRequestBuilder)?
              updates]) =>
      (WorkflowDownloadTaskIdPatchRequestBuilder()..update(updates))._build();

  _$WorkflowDownloadTaskIdPatchRequest._({required this.files}) : super._();
  @override
  WorkflowDownloadTaskIdPatchRequest rebuild(
          void Function(WorkflowDownloadTaskIdPatchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowDownloadTaskIdPatchRequestBuilder toBuilder() =>
      WorkflowDownloadTaskIdPatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowDownloadTaskIdPatchRequest && files == other.files;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkflowDownloadTaskIdPatchRequest')
          ..add('files', files))
        .toString();
  }
}

class WorkflowDownloadTaskIdPatchRequestBuilder
    implements
        Builder<WorkflowDownloadTaskIdPatchRequest,
            WorkflowDownloadTaskIdPatchRequestBuilder> {
  _$WorkflowDownloadTaskIdPatchRequest? _$v;

  ListBuilder<WorkflowDownloadTaskIdPatchRequestFilesInner>? _files;
  ListBuilder<WorkflowDownloadTaskIdPatchRequestFilesInner> get files =>
      _$this._files ??=
          ListBuilder<WorkflowDownloadTaskIdPatchRequestFilesInner>();
  set files(ListBuilder<WorkflowDownloadTaskIdPatchRequestFilesInner>? files) =>
      _$this._files = files;

  WorkflowDownloadTaskIdPatchRequestBuilder() {
    WorkflowDownloadTaskIdPatchRequest._defaults(this);
  }

  WorkflowDownloadTaskIdPatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _files = $v.files.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowDownloadTaskIdPatchRequest other) {
    _$v = other as _$WorkflowDownloadTaskIdPatchRequest;
  }

  @override
  void update(
      void Function(WorkflowDownloadTaskIdPatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowDownloadTaskIdPatchRequest build() => _build();

  _$WorkflowDownloadTaskIdPatchRequest _build() {
    _$WorkflowDownloadTaskIdPatchRequest _$result;
    try {
      _$result = _$v ??
          _$WorkflowDownloadTaskIdPatchRequest._(
            files: files.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'files';
        files.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkflowDownloadTaskIdPatchRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
