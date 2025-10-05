// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_metadata_patch_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileMetadataPatchRequest extends FileMetadataPatchRequest {
  @override
  final BuiltList<String>? uris;
  @override
  final BuiltList<FileMetadataPatchRequestPatchesInner>? patches;

  factory _$FileMetadataPatchRequest(
          [void Function(FileMetadataPatchRequestBuilder)? updates]) =>
      (FileMetadataPatchRequestBuilder()..update(updates))._build();

  _$FileMetadataPatchRequest._({this.uris, this.patches}) : super._();
  @override
  FileMetadataPatchRequest rebuild(
          void Function(FileMetadataPatchRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileMetadataPatchRequestBuilder toBuilder() =>
      FileMetadataPatchRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileMetadataPatchRequest &&
        uris == other.uris &&
        patches == other.patches;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uris.hashCode);
    _$hash = $jc(_$hash, patches.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileMetadataPatchRequest')
          ..add('uris', uris)
          ..add('patches', patches))
        .toString();
  }
}

class FileMetadataPatchRequestBuilder
    implements
        Builder<FileMetadataPatchRequest, FileMetadataPatchRequestBuilder> {
  _$FileMetadataPatchRequest? _$v;

  ListBuilder<String>? _uris;
  ListBuilder<String> get uris => _$this._uris ??= ListBuilder<String>();
  set uris(ListBuilder<String>? uris) => _$this._uris = uris;

  ListBuilder<FileMetadataPatchRequestPatchesInner>? _patches;
  ListBuilder<FileMetadataPatchRequestPatchesInner> get patches =>
      _$this._patches ??= ListBuilder<FileMetadataPatchRequestPatchesInner>();
  set patches(ListBuilder<FileMetadataPatchRequestPatchesInner>? patches) =>
      _$this._patches = patches;

  FileMetadataPatchRequestBuilder() {
    FileMetadataPatchRequest._defaults(this);
  }

  FileMetadataPatchRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uris = $v.uris?.toBuilder();
      _patches = $v.patches?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileMetadataPatchRequest other) {
    _$v = other as _$FileMetadataPatchRequest;
  }

  @override
  void update(void Function(FileMetadataPatchRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileMetadataPatchRequest build() => _build();

  _$FileMetadataPatchRequest _build() {
    _$FileMetadataPatchRequest _$result;
    try {
      _$result = _$v ??
          _$FileMetadataPatchRequest._(
            uris: _uris?.build(),
            patches: _patches?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uris';
        _uris?.build();
        _$failedField = 'patches';
        _patches?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileMetadataPatchRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
