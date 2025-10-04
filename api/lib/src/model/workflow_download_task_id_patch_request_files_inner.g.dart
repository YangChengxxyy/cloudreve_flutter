// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_download_task_id_patch_request_files_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowDownloadTaskIdPatchRequestFilesInner
    extends WorkflowDownloadTaskIdPatchRequestFilesInner {
  @override
  final int index;
  @override
  final bool? download;

  factory _$WorkflowDownloadTaskIdPatchRequestFilesInner(
          [void Function(WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder)?
              updates]) =>
      (WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder()..update(updates))
          ._build();

  _$WorkflowDownloadTaskIdPatchRequestFilesInner._(
      {required this.index, this.download})
      : super._();
  @override
  WorkflowDownloadTaskIdPatchRequestFilesInner rebuild(
          void Function(WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder toBuilder() =>
      WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowDownloadTaskIdPatchRequestFilesInner &&
        index == other.index &&
        download == other.download;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, index.hashCode);
    _$hash = $jc(_$hash, download.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            r'WorkflowDownloadTaskIdPatchRequestFilesInner')
          ..add('index', index)
          ..add('download', download))
        .toString();
  }
}

class WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder
    implements
        Builder<WorkflowDownloadTaskIdPatchRequestFilesInner,
            WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder> {
  _$WorkflowDownloadTaskIdPatchRequestFilesInner? _$v;

  int? _index;
  int? get index => _$this._index;
  set index(int? index) => _$this._index = index;

  bool? _download;
  bool? get download => _$this._download;
  set download(bool? download) => _$this._download = download;

  WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder() {
    WorkflowDownloadTaskIdPatchRequestFilesInner._defaults(this);
  }

  WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _index = $v.index;
      _download = $v.download;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowDownloadTaskIdPatchRequestFilesInner other) {
    _$v = other as _$WorkflowDownloadTaskIdPatchRequestFilesInner;
  }

  @override
  void update(
      void Function(WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder)?
          updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowDownloadTaskIdPatchRequestFilesInner build() => _build();

  _$WorkflowDownloadTaskIdPatchRequestFilesInner _build() {
    final _$result = _$v ??
        _$WorkflowDownloadTaskIdPatchRequestFilesInner._(
          index: BuiltValueNullFieldError.checkNotNull(
              index, r'WorkflowDownloadTaskIdPatchRequestFilesInner', 'index'),
          download: download,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
