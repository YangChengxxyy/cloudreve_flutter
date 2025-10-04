// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_archive_get200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileArchiveGet200ResponseData extends FileArchiveGet200ResponseData {
  @override
  final BuiltList<ArchivedFile> files;

  factory _$FileArchiveGet200ResponseData(
          [void Function(FileArchiveGet200ResponseDataBuilder)? updates]) =>
      (FileArchiveGet200ResponseDataBuilder()..update(updates))._build();

  _$FileArchiveGet200ResponseData._({required this.files}) : super._();
  @override
  FileArchiveGet200ResponseData rebuild(
          void Function(FileArchiveGet200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileArchiveGet200ResponseDataBuilder toBuilder() =>
      FileArchiveGet200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileArchiveGet200ResponseData && files == other.files;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileArchiveGet200ResponseData')
          ..add('files', files))
        .toString();
  }
}

class FileArchiveGet200ResponseDataBuilder
    implements
        Builder<FileArchiveGet200ResponseData,
            FileArchiveGet200ResponseDataBuilder> {
  _$FileArchiveGet200ResponseData? _$v;

  ListBuilder<ArchivedFile>? _files;
  ListBuilder<ArchivedFile> get files =>
      _$this._files ??= ListBuilder<ArchivedFile>();
  set files(ListBuilder<ArchivedFile>? files) => _$this._files = files;

  FileArchiveGet200ResponseDataBuilder() {
    FileArchiveGet200ResponseData._defaults(this);
  }

  FileArchiveGet200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _files = $v.files.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileArchiveGet200ResponseData other) {
    _$v = other as _$FileArchiveGet200ResponseData;
  }

  @override
  void update(void Function(FileArchiveGet200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileArchiveGet200ResponseData build() => _build();

  _$FileArchiveGet200ResponseData _build() {
    _$FileArchiveGet200ResponseData _$result;
    try {
      _$result = _$v ??
          _$FileArchiveGet200ResponseData._(
            files: files.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'files';
        files.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileArchiveGet200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
