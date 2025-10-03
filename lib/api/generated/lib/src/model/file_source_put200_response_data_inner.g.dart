// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_source_put200_response_data_inner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileSourcePut200ResponseDataInner
    extends FileSourcePut200ResponseDataInner {
  @override
  final String link;
  @override
  final String fileUrl;

  factory _$FileSourcePut200ResponseDataInner(
          [void Function(FileSourcePut200ResponseDataInnerBuilder)? updates]) =>
      (FileSourcePut200ResponseDataInnerBuilder()..update(updates))._build();

  _$FileSourcePut200ResponseDataInner._(
      {required this.link, required this.fileUrl})
      : super._();
  @override
  FileSourcePut200ResponseDataInner rebuild(
          void Function(FileSourcePut200ResponseDataInnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileSourcePut200ResponseDataInnerBuilder toBuilder() =>
      FileSourcePut200ResponseDataInnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileSourcePut200ResponseDataInner &&
        link == other.link &&
        fileUrl == other.fileUrl;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, link.hashCode);
    _$hash = $jc(_$hash, fileUrl.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileSourcePut200ResponseDataInner')
          ..add('link', link)
          ..add('fileUrl', fileUrl))
        .toString();
  }
}

class FileSourcePut200ResponseDataInnerBuilder
    implements
        Builder<FileSourcePut200ResponseDataInner,
            FileSourcePut200ResponseDataInnerBuilder> {
  _$FileSourcePut200ResponseDataInner? _$v;

  String? _link;
  String? get link => _$this._link;
  set link(String? link) => _$this._link = link;

  String? _fileUrl;
  String? get fileUrl => _$this._fileUrl;
  set fileUrl(String? fileUrl) => _$this._fileUrl = fileUrl;

  FileSourcePut200ResponseDataInnerBuilder() {
    FileSourcePut200ResponseDataInner._defaults(this);
  }

  FileSourcePut200ResponseDataInnerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _link = $v.link;
      _fileUrl = $v.fileUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileSourcePut200ResponseDataInner other) {
    _$v = other as _$FileSourcePut200ResponseDataInner;
  }

  @override
  void update(
      void Function(FileSourcePut200ResponseDataInnerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileSourcePut200ResponseDataInner build() => _build();

  _$FileSourcePut200ResponseDataInner _build() {
    final _$result = _$v ??
        _$FileSourcePut200ResponseDataInner._(
          link: BuiltValueNullFieldError.checkNotNull(
              link, r'FileSourcePut200ResponseDataInner', 'link'),
          fileUrl: BuiltValueNullFieldError.checkNotNull(
              fileUrl, r'FileSourcePut200ResponseDataInner', 'fileUrl'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
