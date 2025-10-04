// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_extract_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowExtractPostRequest extends WorkflowExtractPostRequest {
  @override
  final BuiltList<String> src;
  @override
  final String dst;
  @override
  final String? preferredNodeId;
  @override
  final String? encoding;
  @override
  final String? password;
  @override
  final BuiltList<String>? fileMask;

  factory _$WorkflowExtractPostRequest(
          [void Function(WorkflowExtractPostRequestBuilder)? updates]) =>
      (WorkflowExtractPostRequestBuilder()..update(updates))._build();

  _$WorkflowExtractPostRequest._(
      {required this.src,
      required this.dst,
      this.preferredNodeId,
      this.encoding,
      this.password,
      this.fileMask})
      : super._();
  @override
  WorkflowExtractPostRequest rebuild(
          void Function(WorkflowExtractPostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowExtractPostRequestBuilder toBuilder() =>
      WorkflowExtractPostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowExtractPostRequest &&
        src == other.src &&
        dst == other.dst &&
        preferredNodeId == other.preferredNodeId &&
        encoding == other.encoding &&
        password == other.password &&
        fileMask == other.fileMask;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, src.hashCode);
    _$hash = $jc(_$hash, dst.hashCode);
    _$hash = $jc(_$hash, preferredNodeId.hashCode);
    _$hash = $jc(_$hash, encoding.hashCode);
    _$hash = $jc(_$hash, password.hashCode);
    _$hash = $jc(_$hash, fileMask.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkflowExtractPostRequest')
          ..add('src', src)
          ..add('dst', dst)
          ..add('preferredNodeId', preferredNodeId)
          ..add('encoding', encoding)
          ..add('password', password)
          ..add('fileMask', fileMask))
        .toString();
  }
}

class WorkflowExtractPostRequestBuilder
    implements
        Builder<WorkflowExtractPostRequest, WorkflowExtractPostRequestBuilder> {
  _$WorkflowExtractPostRequest? _$v;

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

  String? _encoding;
  String? get encoding => _$this._encoding;
  set encoding(String? encoding) => _$this._encoding = encoding;

  String? _password;
  String? get password => _$this._password;
  set password(String? password) => _$this._password = password;

  ListBuilder<String>? _fileMask;
  ListBuilder<String> get fileMask =>
      _$this._fileMask ??= ListBuilder<String>();
  set fileMask(ListBuilder<String>? fileMask) => _$this._fileMask = fileMask;

  WorkflowExtractPostRequestBuilder() {
    WorkflowExtractPostRequest._defaults(this);
  }

  WorkflowExtractPostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _src = $v.src.toBuilder();
      _dst = $v.dst;
      _preferredNodeId = $v.preferredNodeId;
      _encoding = $v.encoding;
      _password = $v.password;
      _fileMask = $v.fileMask?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowExtractPostRequest other) {
    _$v = other as _$WorkflowExtractPostRequest;
  }

  @override
  void update(void Function(WorkflowExtractPostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowExtractPostRequest build() => _build();

  _$WorkflowExtractPostRequest _build() {
    _$WorkflowExtractPostRequest _$result;
    try {
      _$result = _$v ??
          _$WorkflowExtractPostRequest._(
            src: src.build(),
            dst: BuiltValueNullFieldError.checkNotNull(
                dst, r'WorkflowExtractPostRequest', 'dst'),
            preferredNodeId: preferredNodeId,
            encoding: encoding,
            password: password,
            fileMask: _fileMask?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'src';
        src.build();

        _$failedField = 'fileMask';
        _fileMask?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkflowExtractPostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
