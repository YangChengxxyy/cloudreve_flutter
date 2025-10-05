// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_metadata_patch_request_patches_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileMetadataPatchRequestPatchesInner
    extends FileMetadataPatchRequestPatchesInner {
  @override
  final String? key;
  @override
  final String? value;
  @override
  final bool? remove;

  factory _$FileMetadataPatchRequestPatchesInner(
          [void Function(FileMetadataPatchRequestPatchesInnerBuilder)?
              updates]) =>
      (FileMetadataPatchRequestPatchesInnerBuilder()..update(updates))._build();

  _$FileMetadataPatchRequestPatchesInner._({this.key, this.value, this.remove})
      : super._();
  @override
  FileMetadataPatchRequestPatchesInner rebuild(
          void Function(FileMetadataPatchRequestPatchesInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileMetadataPatchRequestPatchesInnerBuilder toBuilder() =>
      FileMetadataPatchRequestPatchesInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileMetadataPatchRequestPatchesInner &&
        key == other.key &&
        value == other.value &&
        remove == other.remove;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, key.hashCode);
    _$hash = $jc(_$hash, value.hashCode);
    _$hash = $jc(_$hash, remove.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileMetadataPatchRequestPatchesInner')
          ..add('key', key)
          ..add('value', value)
          ..add('remove', remove))
        .toString();
  }
}

class FileMetadataPatchRequestPatchesInnerBuilder
    implements
        Builder<FileMetadataPatchRequestPatchesInner,
            FileMetadataPatchRequestPatchesInnerBuilder> {
  _$FileMetadataPatchRequestPatchesInner? _$v;

  String? _key;
  String? get key => _$this._key;
  set key(String? key) => _$this._key = key;

  String? _value;
  String? get value => _$this._value;
  set value(String? value) => _$this._value = value;

  bool? _remove;
  bool? get remove => _$this._remove;
  set remove(bool? remove) => _$this._remove = remove;

  FileMetadataPatchRequestPatchesInnerBuilder() {
    FileMetadataPatchRequestPatchesInner._defaults(this);
  }

  FileMetadataPatchRequestPatchesInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _key = $v.key;
      _value = $v.value;
      _remove = $v.remove;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileMetadataPatchRequestPatchesInner other) {
    _$v = other as _$FileMetadataPatchRequestPatchesInner;
  }

  @override
  void update(
      void Function(FileMetadataPatchRequestPatchesInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileMetadataPatchRequestPatchesInner build() => _build();

  _$FileMetadataPatchRequestPatchesInner _build() {
    final _$result = _$v ??
        _$FileMetadataPatchRequestPatchesInner._(
          key: key,
          value: value,
          remove: remove,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
