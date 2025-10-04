// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_permission_delete_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FilePermissionDeleteRequest extends FilePermissionDeleteRequest {
  @override
  final BuiltList<String> uris;

  factory _$FilePermissionDeleteRequest(
          [void Function(FilePermissionDeleteRequestBuilder)? updates]) =>
      (FilePermissionDeleteRequestBuilder()..update(updates))._build();

  _$FilePermissionDeleteRequest._({required this.uris}) : super._();
  @override
  FilePermissionDeleteRequest rebuild(
          void Function(FilePermissionDeleteRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FilePermissionDeleteRequestBuilder toBuilder() =>
      FilePermissionDeleteRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FilePermissionDeleteRequest && uris == other.uris;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, uris.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FilePermissionDeleteRequest')
          ..add('uris', uris))
        .toString();
  }
}

class FilePermissionDeleteRequestBuilder
    implements
        Builder<FilePermissionDeleteRequest,
            FilePermissionDeleteRequestBuilder> {
  _$FilePermissionDeleteRequest? _$v;

  ListBuilder<String>? _uris;
  ListBuilder<String> get uris => _$this._uris ??= ListBuilder<String>();
  set uris(ListBuilder<String>? uris) => _$this._uris = uris;

  FilePermissionDeleteRequestBuilder() {
    FilePermissionDeleteRequest._defaults(this);
  }

  FilePermissionDeleteRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uris = $v.uris.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FilePermissionDeleteRequest other) {
    _$v = other as _$FilePermissionDeleteRequest;
  }

  @override
  void update(void Function(FilePermissionDeleteRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FilePermissionDeleteRequest build() => _build();

  _$FilePermissionDeleteRequest _build() {
    _$FilePermissionDeleteRequest _$result;
    try {
      _$result = _$v ??
          _$FilePermissionDeleteRequest._(
            uris: uris.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'uris';
        uris.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FilePermissionDeleteRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
