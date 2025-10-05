// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'workflow_reloacte_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$WorkflowReloactePostRequest extends WorkflowReloactePostRequest {
  @override
  final BuiltList<String>? src;
  @override
  final String? dstPolicyId;

  factory _$WorkflowReloactePostRequest(
          [void Function(WorkflowReloactePostRequestBuilder)? updates]) =>
      (WorkflowReloactePostRequestBuilder()..update(updates))._build();

  _$WorkflowReloactePostRequest._({this.src, this.dstPolicyId}) : super._();
  @override
  WorkflowReloactePostRequest rebuild(
          void Function(WorkflowReloactePostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  WorkflowReloactePostRequestBuilder toBuilder() =>
      WorkflowReloactePostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is WorkflowReloactePostRequest &&
        src == other.src &&
        dstPolicyId == other.dstPolicyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, src.hashCode);
    _$hash = $jc(_$hash, dstPolicyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'WorkflowReloactePostRequest')
          ..add('src', src)
          ..add('dstPolicyId', dstPolicyId))
        .toString();
  }
}

class WorkflowReloactePostRequestBuilder
    implements
        Builder<WorkflowReloactePostRequest,
            WorkflowReloactePostRequestBuilder> {
  _$WorkflowReloactePostRequest? _$v;

  ListBuilder<String>? _src;
  ListBuilder<String> get src => _$this._src ??= ListBuilder<String>();
  set src(ListBuilder<String>? src) => _$this._src = src;

  String? _dstPolicyId;
  String? get dstPolicyId => _$this._dstPolicyId;
  set dstPolicyId(String? dstPolicyId) => _$this._dstPolicyId = dstPolicyId;

  WorkflowReloactePostRequestBuilder() {
    WorkflowReloactePostRequest._defaults(this);
  }

  WorkflowReloactePostRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _src = $v.src?.toBuilder();
      _dstPolicyId = $v.dstPolicyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(WorkflowReloactePostRequest other) {
    _$v = other as _$WorkflowReloactePostRequest;
  }

  @override
  void update(void Function(WorkflowReloactePostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  WorkflowReloactePostRequest build() => _build();

  _$WorkflowReloactePostRequest _build() {
    _$WorkflowReloactePostRequest _$result;
    try {
      _$result = _$v ??
          _$WorkflowReloactePostRequest._(
            src: _src?.build(),
            dstPolicyId: dstPolicyId,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'src';
        _src?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'WorkflowReloactePostRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
