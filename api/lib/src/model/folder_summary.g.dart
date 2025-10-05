// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'folder_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$FolderSummary extends FolderSummary {
  @override
  final int? size;
  @override
  final int? files;
  @override
  final int? folders;
  @override
  final bool? completed;
  @override
  final String? calculatedAt;

  factory _$FolderSummary([void Function(FolderSummaryBuilder)? updates]) =>
      (FolderSummaryBuilder()..update(updates))._build();

  _$FolderSummary._(
      {this.size, this.files, this.folders, this.completed, this.calculatedAt})
      : super._();
  @override
  FolderSummary rebuild(void Function(FolderSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FolderSummaryBuilder toBuilder() => FolderSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FolderSummary &&
        size == other.size &&
        files == other.files &&
        folders == other.folders &&
        completed == other.completed &&
        calculatedAt == other.calculatedAt;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, files.hashCode);
    _$hash = $jc(_$hash, folders.hashCode);
    _$hash = $jc(_$hash, completed.hashCode);
    _$hash = $jc(_$hash, calculatedAt.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FolderSummary')
          ..add('size', size)
          ..add('files', files)
          ..add('folders', folders)
          ..add('completed', completed)
          ..add('calculatedAt', calculatedAt))
        .toString();
  }
}

class FolderSummaryBuilder
    implements Builder<FolderSummary, FolderSummaryBuilder> {
  _$FolderSummary? _$v;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  int? _files;
  int? get files => _$this._files;
  set files(int? files) => _$this._files = files;

  int? _folders;
  int? get folders => _$this._folders;
  set folders(int? folders) => _$this._folders = folders;

  bool? _completed;
  bool? get completed => _$this._completed;
  set completed(bool? completed) => _$this._completed = completed;

  String? _calculatedAt;
  String? get calculatedAt => _$this._calculatedAt;
  set calculatedAt(String? calculatedAt) => _$this._calculatedAt = calculatedAt;

  FolderSummaryBuilder() {
    FolderSummary._defaults(this);
  }

  FolderSummaryBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _size = $v.size;
      _files = $v.files;
      _folders = $v.folders;
      _completed = $v.completed;
      _calculatedAt = $v.calculatedAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FolderSummary other) {
    _$v = other as _$FolderSummary;
  }

  @override
  void update(void Function(FolderSummaryBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FolderSummary build() => _build();

  _$FolderSummary _build() {
    final _$result = _$v ??
        _$FolderSummary._(
          size: size,
          files: files,
          folders: folders,
          completed: completed,
          calculatedAt: calculatedAt,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
