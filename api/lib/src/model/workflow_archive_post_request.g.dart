// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_archive_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowArchivePostRequest extends WorkflowArchivePostRequest {
  @override
  final BuiltList<String>? src;
  @override
  final String? dst;
  @override
  final String? preferredNodeId;
  @override
  final String? password;
  @override
  final BuiltList<String>? fileMask;

  factory _$WorkflowArchivePostRequest(
          [void Function(WorkflowArchivePostRequestBuilder)? updates]) =>
      (WorkflowArchivePostRequestBuilder()..update(updates))._build();

  _$WorkflowArchivePostRequest._(
      {this.src, this.dst, this.preferredNodeId, this.password, this.fileMask})
      : super._();
  @override
  WorkflowArchivePostRequest rebuild(
          void Function(WorkflowArchivePostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowArchivePostRequestBuilder toBuilder() =>
      WorkflowArchivePostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowArchivePostRequest &&
        src == other.src &&
        dst == other.dst &&
        preferredNodeId == other.preferredNodeId &&
        password == other.password &&
        fileMask == other.fileMask;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, src.hashCode);
    _$hash = $jc(_$hash, dst.hashCode);
    _$hash = $jc(_$hash, preferredNodeId.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, fileMask.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkflowArchivePostRequest')
          ..add('src', src)
          ..add('dst', dst)
          ..add('preferredNodeId', preferredNodeId)
          ..add('password', password)
          ..add('fileMask', fileMask))
        .toString();
  }
}

class WorkflowArchivePostRequestBuilder
    implements
        Builder<WorkflowArchivePostRequest, WorkflowArchivePostRequestBuilder> {
  _$WorkflowArchivePostRequest? _$v;

  ListBuilder<String>? _src;
  ListBuilder<String> get src => _$this._src ??= ListBuilder<String>();
  set src(ListBuilder<String>? src) => _$this._src = src;

  String? _dst;
  String? get dst => _$this._dst;
  set dst(String? dst) => _$this._dst = dst;

  String? _preferredNodeId;
  String? get preferredNodeId => _$this._preferredNodeId;
  set preferredNodeId(String? preferredNodeId) =>
      _$this._preferredNodeId = preferredNodeId;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  ListBuilder<String>? _fileMask;
  ListBuilder<String> get fileMask =>
      _$this._fileMask ??= ListBuilder<String>();
  set fileMask(ListBuilder<String>? fileMask) => _$this._fileMask = fileMask;

  WorkflowArchivePostRequestBuilder() {
    WorkflowArchivePostRequest._defaults(this);
  }

  WorkflowArchivePostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _src = $v.src?.toBuilder();
      _dst = $v.dst;
      _preferredNodeId = $v.preferredNodeId;
      _password = $v.password;
      _fileMask = $v.fileMask?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowArchivePostRequest other) {
    _$v = other as _$WorkflowArchivePostRequest;
  }

  @override
  void update(void Function(WorkflowArchivePostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowArchivePostRequest build() => _build();

  _$WorkflowArchivePostRequest _build() {
    _$WorkflowArchivePostRequest _$result;
    try {
      _$result = _$v ??
          _$WorkflowArchivePostRequest._(
            src: _src?.build(),
            dst: dst,
            preferredNodeId: preferredNodeId,
            password: password,
            fileMask: _fileMask?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'src';
        _src?.build();

        _$failedField = 'fileMask';
        _fileMask?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkflowArchivePostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
