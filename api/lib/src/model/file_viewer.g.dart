// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_viewer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FileViewer extends FileViewer {
  @override
  final BuiltList<FileViewerViewersInner> viewers;

  factory _$FileViewer([void Function(FileViewerBuilder)? updates]) =>
      (FileViewerBuilder()..update(updates))._build();

  _$FileViewer._({required this.viewers}) : super._();
  @override
  FileViewer rebuild(void Function(FileViewerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileViewerBuilder toBuilder() => FileViewerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileViewer && viewers == other.viewers;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, viewers.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileViewer')..add('viewers', viewers))
        .toString();
  }
}

class FileViewerBuilder implements Builder<FileViewer, FileViewerBuilder> {
  _$FileViewer? _$v;

  ListBuilder<FileViewerViewersInner>? _viewers;
  ListBuilder<FileViewerViewersInner> get viewers =>
      _$this._viewers ??= ListBuilder<FileViewerViewersInner>();
  set viewers(ListBuilder<FileViewerViewersInner>? viewers) =>
      _$this._viewers = viewers;

  FileViewerBuilder() {
    FileViewer._defaults(this);
  }

  FileViewerBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _viewers = $v.viewers.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileViewer other) {
    _$v = other as _$FileViewer;
  }

  @override
  void update(void Function(FileViewerBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileViewer build() => _build();

  _$FileViewer _build() {
    _$FileViewer _$result;
    try {
      _$result = _$v ??
          _$FileViewer._(
            viewers: viewers.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'viewers';
        viewers.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileViewer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
