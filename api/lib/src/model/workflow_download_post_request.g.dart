// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_download_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowDownloadPostRequest extends WorkflowDownloadPostRequest {
  @override
  final String? dst;
  @override
  final String? srcFile;
  @override
  final BuiltList<String>? src;
  @override
  final String? preferredNodeId;

  factory _$WorkflowDownloadPostRequest(
          [void Function(WorkflowDownloadPostRequestBuilder)? updates]) =>
      (WorkflowDownloadPostRequestBuilder()..update(updates))._build();

  _$WorkflowDownloadPostRequest._(
      {this.dst, this.srcFile, this.src, this.preferredNodeId})
      : super._();
  @override
  WorkflowDownloadPostRequest rebuild(
          void Function(WorkflowDownloadPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowDownloadPostRequestBuilder toBuilder() =>
      WorkflowDownloadPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowDownloadPostRequest &&
        dst == other.dst &&
        srcFile == other.srcFile &&
        src == other.src &&
        preferredNodeId == other.preferredNodeId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, dst.hashCode);
    _$hash = $jc(_$hash, srcFile.hashCode);
    _$hash = $jc(_$hash, src.hashCode);
    _$hash = $jc(_$hash, preferredNodeId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkflowDownloadPostRequest')
          ..add('dst', dst)
          ..add('srcFile', srcFile)
          ..add('src', src)
          ..add('preferredNodeId', preferredNodeId))
        .toString();
  }
}

class WorkflowDownloadPostRequestBuilder
    implements
        Builder<WorkflowDownloadPostRequest,
            WorkflowDownloadPostRequestBuilder> {
  _$WorkflowDownloadPostRequest? _$v;

  String? _dst;
  String? get dst => _$this._dst;
  set dst(String? dst) => _$this._dst = dst;

  String? _srcFile;
  String? get srcFile => _$this._srcFile;
  set srcFile(String? srcFile) => _$this._srcFile = srcFile;

  ListBuilder<String>? _src;
  ListBuilder<String> get src => _$this._src ??= ListBuilder<String>();
  set src(ListBuilder<String>? src) => _$this._src = src;

  String? _preferredNodeId;
  String? get preferredNodeId => _$this._preferredNodeId;
  set preferredNodeId(String? preferredNodeId) =>
      _$this._preferredNodeId = preferredNodeId;

  WorkflowDownloadPostRequestBuilder() {
    WorkflowDownloadPostRequest._defaults(this);
  }

  WorkflowDownloadPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _dst = $v.dst;
      _srcFile = $v.srcFile;
      _src = $v.src?.toBuilder();
      _preferredNodeId = $v.preferredNodeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowDownloadPostRequest other) {
    _$v = other as _$WorkflowDownloadPostRequest;
  }

  @override
  void update(void Function(WorkflowDownloadPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowDownloadPostRequest build() => _build();

  _$WorkflowDownloadPostRequest _build() {
    _$WorkflowDownloadPostRequest _$result;
    try {
      _$result = _$v ??
          _$WorkflowDownloadPostRequest._(
            dst: dst,
            srcFile: srcFile,
            src: _src?.build(),
            preferredNodeId: preferredNodeId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'src';
        _src?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkflowDownloadPostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
