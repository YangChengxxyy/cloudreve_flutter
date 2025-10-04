// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_import_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowImportPostRequest extends WorkflowImportPostRequest {
  @override
  final String src;
  @override
  final String dst;
  @override
  final bool? extractMediaMeta;
  @override
  final String userId;
  @override
  final bool? recursive;
  @override
  final int policyId;

  factory _$WorkflowImportPostRequest(
          [void Function(WorkflowImportPostRequestBuilder)? updates]) =>
      (WorkflowImportPostRequestBuilder()..update(updates))._build();

  _$WorkflowImportPostRequest._(
      {required this.src,
      required this.dst,
      this.extractMediaMeta,
      required this.userId,
      this.recursive,
      required this.policyId})
      : super._();
  @override
  WorkflowImportPostRequest rebuild(
          void Function(WorkflowImportPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowImportPostRequestBuilder toBuilder() =>
      WorkflowImportPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowImportPostRequest &&
        src == other.src &&
        dst == other.dst &&
        extractMediaMeta == other.extractMediaMeta &&
        userId == other.userId &&
        recursive == other.recursive &&
        policyId == other.policyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, src.hashCode);
    _$hash = $jc(_$hash, dst.hashCode);
    _$hash = $jc(_$hash, extractMediaMeta.hashCode);
    _$hash = $jc(_$hash, userId.hashCode);
    _$hash = $jc(_$hash, recursive.hashCode);
    _$hash = $jc(_$hash, policyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkflowImportPostRequest')
          ..add('src', src)
          ..add('dst', dst)
          ..add('extractMediaMeta', extractMediaMeta)
          ..add('userId', userId)
          ..add('recursive', recursive)
          ..add('policyId', policyId))
        .toString();
  }
}

class WorkflowImportPostRequestBuilder
    implements
        Builder<WorkflowImportPostRequest, WorkflowImportPostRequestBuilder> {
  _$WorkflowImportPostRequest? _$v;

  String? _src;
  String? get src => _$this._src;
  set src(String? src) => _$this._src = src;

  String? _dst;
  String? get dst => _$this._dst;
  set dst(String? dst) => _$this._dst = dst;

  bool? _extractMediaMeta;
  bool? get extractMediaMeta => _$this._extractMediaMeta;
  set extractMediaMeta(bool? extractMediaMeta) =>
      _$this._extractMediaMeta = extractMediaMeta;

  String? _userId;
  String? get userId => _$this._userId;
  set userId(String? userId) => _$this._userId = userId;

  bool? _recursive;
  bool? get recursive => _$this._recursive;
  set recursive(bool? recursive) => _$this._recursive = recursive;

  int? _policyId;
  int? get policyId => _$this._policyId;
  set policyId(int? policyId) => _$this._policyId = policyId;

  WorkflowImportPostRequestBuilder() {
    WorkflowImportPostRequest._defaults(this);
  }

  WorkflowImportPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _src = $v.src;
      _dst = $v.dst;
      _extractMediaMeta = $v.extractMediaMeta;
      _userId = $v.userId;
      _recursive = $v.recursive;
      _policyId = $v.policyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowImportPostRequest other) {
    _$v = other as _$WorkflowImportPostRequest;
  }

  @override
  void update(void Function(WorkflowImportPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowImportPostRequest build() => _build();

  _$WorkflowImportPostRequest _build() {
    final _$result = _$v ??
        _$WorkflowImportPostRequest._(
          src: BuiltValueNullFieldError.checkNotNull(
              src, r'WorkflowImportPostRequest', 'src'),
          dst: BuiltValueNullFieldError.checkNotNull(
              dst, r'WorkflowImportPostRequest', 'dst'),
          extractMediaMeta: extractMediaMeta,
          userId: BuiltValueNullFieldError.checkNotNull(
              userId, r'WorkflowImportPostRequest', 'userId'),
          recursive: recursive,
          policyId: BuiltValueNullFieldError.checkNotNull(
              policyId, r'WorkflowImportPostRequest', 'policyId'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
