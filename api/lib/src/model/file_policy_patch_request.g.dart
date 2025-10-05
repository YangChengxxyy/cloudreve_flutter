// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_policy_patch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilePolicyPatchRequest extends FilePolicyPatchRequest {
  @override
  final String? uri;
  @override
  final String? policyId;

  factory _$FilePolicyPatchRequest(
          [void Function(FilePolicyPatchRequestBuilder)? updates]) =>
      (FilePolicyPatchRequestBuilder()..update(updates))._build();

  _$FilePolicyPatchRequest._({this.uri, this.policyId}) : super._();
  @override
  FilePolicyPatchRequest rebuild(
          void Function(FilePolicyPatchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilePolicyPatchRequestBuilder toBuilder() =>
      FilePolicyPatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilePolicyPatchRequest &&
        uri == other.uri &&
        policyId == other.policyId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uri.hashCode);
    _$hash = $jc(_$hash, policyId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilePolicyPatchRequest')
          ..add('uri', uri)
          ..add('policyId', policyId))
        .toString();
  }
}

class FilePolicyPatchRequestBuilder
    implements Builder<FilePolicyPatchRequest, FilePolicyPatchRequestBuilder> {
  _$FilePolicyPatchRequest? _$v;

  String? _uri;
  String? get uri => _$this._uri;
  set uri(String? uri) => _$this._uri = uri;

  String? _policyId;
  String? get policyId => _$this._policyId;
  set policyId(String? policyId) => _$this._policyId = policyId;

  FilePolicyPatchRequestBuilder() {
    FilePolicyPatchRequest._defaults(this);
  }

  FilePolicyPatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uri = $v.uri;
      _policyId = $v.policyId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilePolicyPatchRequest other) {
    _$v = other as _$FilePolicyPatchRequest;
  }

  @override
  void update(void Function(FilePolicyPatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilePolicyPatchRequest build() => _build();

  _$FilePolicyPatchRequest _build() {
    final _$result = _$v ??
        _$FilePolicyPatchRequest._(
          uri: uri,
          policyId: policyId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
