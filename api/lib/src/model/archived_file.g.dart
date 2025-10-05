// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'archived_file.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$ArchivedFile extends ArchivedFile {
  @override
  final String? name;
  @override
  final int? size;
  @override
  final DateTime? updatedAt;
  @override
  final bool? isDirectory;

  factory _$ArchivedFile([void Function(ArchivedFileBuilder)? updates]) =>
      (ArchivedFileBuilder()..update(updates))._build();

  _$ArchivedFile._({this.name, this.size, this.updatedAt, this.isDirectory})
      : super._();
  @override
  ArchivedFile rebuild(void Function(ArchivedFileBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ArchivedFileBuilder toBuilder() => ArchivedFileBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ArchivedFile &&
        name == other.name &&
        size == other.size &&
        updatedAt == other.updatedAt &&
        isDirectory == other.isDirectory;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, isDirectory.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ArchivedFile')
          ..add('name', name)
          ..add('size', size)
          ..add('updatedAt', updatedAt)
          ..add('isDirectory', isDirectory))
        .toString();
  }
}

class ArchivedFileBuilder
    implements Builder<ArchivedFile, ArchivedFileBuilder> {
  _$ArchivedFile? _$v;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  bool? _isDirectory;
  bool? get isDirectory => _$this._isDirectory;
  set isDirectory(bool? isDirectory) => _$this._isDirectory = isDirectory;

  ArchivedFileBuilder() {
    ArchivedFile._defaults(this);
  }

  ArchivedFileBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _name = $v.name;
      _size = $v.size;
      _updatedAt = $v.updatedAt;
      _isDirectory = $v.isDirectory;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ArchivedFile other) {
    _$v = other as _$ArchivedFile;
  }

  @override
  void update(void Function(ArchivedFileBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ArchivedFile build() => _build();

  _$ArchivedFile _build() {
    final _$result = _$v ??
        _$ArchivedFile._(
          name: name,
          size: size,
          updatedAt: updatedAt,
          isDirectory: isDirectory,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
