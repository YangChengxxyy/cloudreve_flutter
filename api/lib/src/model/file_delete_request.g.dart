// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_delete_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileDeleteRequest extends FileDeleteRequest {
  @override
  final BuiltList<String> uris;
  @override
  final bool? unlink;
  @override
  final bool? skipSoftDelete;

  factory _$FileDeleteRequest(
          [void Function(FileDeleteRequestBuilder)? updates]) =>
      (FileDeleteRequestBuilder()..update(updates))._build();

  _$FileDeleteRequest._({required this.uris, this.unlink, this.skipSoftDelete})
      : super._();
  @override
  FileDeleteRequest rebuild(void Function(FileDeleteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileDeleteRequestBuilder toBuilder() =>
      FileDeleteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileDeleteRequest &&
        uris == other.uris &&
        unlink == other.unlink &&
        skipSoftDelete == other.skipSoftDelete;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uris.hashCode);
    _$hash = $jc(_$hash, unlink.hashCode);
    _$hash = $jc(_$hash, skipSoftDelete.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileDeleteRequest')
          ..add('uris', uris)
          ..add('unlink', unlink)
          ..add('skipSoftDelete', skipSoftDelete))
        .toString();
  }
}

class FileDeleteRequestBuilder
    implements Builder<FileDeleteRequest, FileDeleteRequestBuilder> {
  _$FileDeleteRequest? _$v;

  ListBuilder<String>? _uris;
  ListBuilder<String> get uris => _$this._uris ??= ListBuilder<String>();
  set uris(ListBuilder<String>? uris) => _$this._uris = uris;

  bool? _unlink;
  bool? get unlink => _$this._unlink;
  set unlink(bool? unlink) => _$this._unlink = unlink;

  bool? _skipSoftDelete;
  bool? get skipSoftDelete => _$this._skipSoftDelete;
  set skipSoftDelete(bool? skipSoftDelete) =>
      _$this._skipSoftDelete = skipSoftDelete;

  FileDeleteRequestBuilder() {
    FileDeleteRequest._defaults(this);
  }

  FileDeleteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uris = $v.uris.toBuilder();
      _unlink = $v.unlink;
      _skipSoftDelete = $v.skipSoftDelete;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileDeleteRequest other) {
    _$v = other as _$FileDeleteRequest;
  }

  @override
  void update(void Function(FileDeleteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileDeleteRequest build() => _build();

  _$FileDeleteRequest _build() {
    _$FileDeleteRequest _$result;
    try {
      _$result = _$v ??
          _$FileDeleteRequest._(
            uris: uris.build(),
            unlink: unlink,
            skipSoftDelete: skipSoftDelete,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uris';
        uris.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileDeleteRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
