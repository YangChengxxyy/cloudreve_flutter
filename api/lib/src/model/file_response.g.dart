// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FileResponseTypeEnum _$fileResponseTypeEnum_number0 =
    const FileResponseTypeEnum._('number0');
const FileResponseTypeEnum _$fileResponseTypeEnum_number1 =
    const FileResponseTypeEnum._('number1');

FileResponseTypeEnum _$fileResponseTypeEnumValueOf(String name) {
  switch (name) {
    case 'number0':
      return _$fileResponseTypeEnum_number0;
    case 'number1':
      return _$fileResponseTypeEnum_number1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FileResponseTypeEnum> _$fileResponseTypeEnumValues =
    BuiltSet<FileResponseTypeEnum>(const <FileResponseTypeEnum>[
  _$fileResponseTypeEnum_number0,
  _$fileResponseTypeEnum_number1,
]);

Serializer<FileResponseTypeEnum> _$fileResponseTypeEnumSerializer =
    _$FileResponseTypeEnumSerializer();

class _$FileResponseTypeEnumSerializer
    implements PrimitiveSerializer<FileResponseTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
  };

  @override
  final Iterable<Type> types = const <Type>[FileResponseTypeEnum];
  @override
  final String wireName = 'FileResponseTypeEnum';

  @override
  Object serialize(Serializers serializers, FileResponseTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FileResponseTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FileResponseTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FileResponse extends FileResponse {
  @override
  final FileResponseTypeEnum? type;
  @override
  final String? id;
  @override
  final String? name;
  @override
  final String? permission;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final int? size;
  @override
  final BuiltMap<String, String>? metadata;
  @override
  final String? path;
  @override
  final bool? shared;
  @override
  final String? capability;
  @override
  final bool? owned;
  @override
  final String? primaryEntity;
  @override
  final ExtendedInfo? extendedInfo;
  @override
  final FolderSummary? folderSummary;

  factory _$FileResponse([void Function(FileResponseBuilder)? updates]) =>
      (FileResponseBuilder()..update(updates))._build();

  _$FileResponse._(
      {this.type,
      this.id,
      this.name,
      this.permission,
      this.createdAt,
      this.updatedAt,
      this.size,
      this.metadata,
      this.path,
      this.shared,
      this.capability,
      this.owned,
      this.primaryEntity,
      this.extendedInfo,
      this.folderSummary})
      : super._();
  @override
  FileResponse rebuild(void Function(FileResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileResponseBuilder toBuilder() => FileResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileResponse &&
        type == other.type &&
        id == other.id &&
        name == other.name &&
        permission == other.permission &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        size == other.size &&
        metadata == other.metadata &&
        path == other.path &&
        shared == other.shared &&
        capability == other.capability &&
        owned == other.owned &&
        primaryEntity == other.primaryEntity &&
        extendedInfo == other.extendedInfo &&
        folderSummary == other.folderSummary;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, permission.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, metadata.hashCode);
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, shared.hashCode);
    _$hash = $jc(_$hash, capability.hashCode);
    _$hash = $jc(_$hash, owned.hashCode);
    _$hash = $jc(_$hash, primaryEntity.hashCode);
    _$hash = $jc(_$hash, extendedInfo.hashCode);
    _$hash = $jc(_$hash, folderSummary.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileResponse')
          ..add('type', type)
          ..add('id', id)
          ..add('name', name)
          ..add('permission', permission)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('size', size)
          ..add('metadata', metadata)
          ..add('path', path)
          ..add('shared', shared)
          ..add('capability', capability)
          ..add('owned', owned)
          ..add('primaryEntity', primaryEntity)
          ..add('extendedInfo', extendedInfo)
          ..add('folderSummary', folderSummary))
        .toString();
  }
}

class FileResponseBuilder
    implements Builder<FileResponse, FileResponseBuilder> {
  _$FileResponse? _$v;

  FileResponseTypeEnum? _type;
  FileResponseTypeEnum? get type => _$this._type;
  set type(FileResponseTypeEnum? type) => _$this._type = type;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  String? _permission;
  String? get permission => _$this._permission;
  set permission(String? permission) => _$this._permission = permission;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  MapBuilder<String, String>? _metadata;
  MapBuilder<String, String> get metadata =>
      _$this._metadata ??= MapBuilder<String, String>();
  set metadata(MapBuilder<String, String>? metadata) =>
      _$this._metadata = metadata;

  String? _path;
  String? get path => _$this._path;
  set path(String? path) => _$this._path = path;

  bool? _shared;
  bool? get shared => _$this._shared;
  set shared(bool? shared) => _$this._shared = shared;

  String? _capability;
  String? get capability => _$this._capability;
  set capability(String? capability) => _$this._capability = capability;

  bool? _owned;
  bool? get owned => _$this._owned;
  set owned(bool? owned) => _$this._owned = owned;

  String? _primaryEntity;
  String? get primaryEntity => _$this._primaryEntity;
  set primaryEntity(String? primaryEntity) =>
      _$this._primaryEntity = primaryEntity;

  ExtendedInfoBuilder? _extendedInfo;
  ExtendedInfoBuilder get extendedInfo =>
      _$this._extendedInfo ??= ExtendedInfoBuilder();
  set extendedInfo(ExtendedInfoBuilder? extendedInfo) =>
      _$this._extendedInfo = extendedInfo;

  FolderSummaryBuilder? _folderSummary;
  FolderSummaryBuilder get folderSummary =>
      _$this._folderSummary ??= FolderSummaryBuilder();
  set folderSummary(FolderSummaryBuilder? folderSummary) =>
      _$this._folderSummary = folderSummary;

  FileResponseBuilder() {
    FileResponse._defaults(this);
  }

  FileResponseBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _name = $v.name;
      _permission = $v.permission;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _size = $v.size;
      _metadata = $v.metadata?.toBuilder();
      _path = $v.path;
      _shared = $v.shared;
      _capability = $v.capability;
      _owned = $v.owned;
      _primaryEntity = $v.primaryEntity;
      _extendedInfo = $v.extendedInfo?.toBuilder();
      _folderSummary = $v.folderSummary?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileResponse other) {
    _$v = other as _$FileResponse;
  }

  @override
  void update(void Function(FileResponseBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileResponse build() => _build();

  _$FileResponse _build() {
    _$FileResponse _$result;
    try {
      _$result = _$v ??
          _$FileResponse._(
            type: type,
            id: id,
            name: name,
            permission: permission,
            createdAt: createdAt,
            updatedAt: updatedAt,
            size: size,
            metadata: _metadata?.build(),
            path: path,
            shared: shared,
            capability: capability,
            owned: owned,
            primaryEntity: primaryEntity,
            extendedInfo: _extendedInfo?.build(),
            folderSummary: _folderSummary?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();

        _$failedField = 'extendedInfo';
        _extendedInfo?.build();
        _$failedField = 'folderSummary';
        _folderSummary?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'FileResponse', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
