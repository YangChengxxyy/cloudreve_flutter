// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_rename_post200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FileRenamePost200ResponseDataTypeEnum
    _$fileRenamePost200ResponseDataTypeEnum_number0 =
    const FileRenamePost200ResponseDataTypeEnum._('number0');
const FileRenamePost200ResponseDataTypeEnum
    _$fileRenamePost200ResponseDataTypeEnum_number1 =
    const FileRenamePost200ResponseDataTypeEnum._('number1');

FileRenamePost200ResponseDataTypeEnum
    _$fileRenamePost200ResponseDataTypeEnumValueOf(String name) {
  switch (name) {
    case 'number0':
      return _$fileRenamePost200ResponseDataTypeEnum_number0;
    case 'number1':
      return _$fileRenamePost200ResponseDataTypeEnum_number1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FileRenamePost200ResponseDataTypeEnum>
    _$fileRenamePost200ResponseDataTypeEnumValues = BuiltSet<
        FileRenamePost200ResponseDataTypeEnum>(const <FileRenamePost200ResponseDataTypeEnum>[
  _$fileRenamePost200ResponseDataTypeEnum_number0,
  _$fileRenamePost200ResponseDataTypeEnum_number1,
]);

Serializer<FileRenamePost200ResponseDataTypeEnum>
    _$fileRenamePost200ResponseDataTypeEnumSerializer =
    _$FileRenamePost200ResponseDataTypeEnumSerializer();

class _$FileRenamePost200ResponseDataTypeEnumSerializer
    implements PrimitiveSerializer<FileRenamePost200ResponseDataTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
  };

  @override
  final Iterable<Type> types = const <Type>[
    FileRenamePost200ResponseDataTypeEnum
  ];
  @override
  final String wireName = 'FileRenamePost200ResponseDataTypeEnum';

  @override
  Object serialize(
          Serializers serializers, FileRenamePost200ResponseDataTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FileRenamePost200ResponseDataTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FileRenamePost200ResponseDataTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FileRenamePost200ResponseData extends FileRenamePost200ResponseData {
  @override
  final FileRenamePost200ResponseDataTypeEnum? type;
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
  final String? path;
  @override
  final bool? shared;
  @override
  final String? capability;
  @override
  final bool? owned;
  @override
  final String? primaryEntity;

  factory _$FileRenamePost200ResponseData(
          [void Function(FileRenamePost200ResponseDataBuilder)? updates]) =>
      (FileRenamePost200ResponseDataBuilder()..update(updates))._build();

  _$FileRenamePost200ResponseData._(
      {this.type,
      this.id,
      this.name,
      this.permission,
      this.createdAt,
      this.updatedAt,
      this.size,
      this.path,
      this.shared,
      this.capability,
      this.owned,
      this.primaryEntity})
      : super._();
  @override
  FileRenamePost200ResponseData rebuild(
          void Function(FileRenamePost200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileRenamePost200ResponseDataBuilder toBuilder() =>
      FileRenamePost200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileRenamePost200ResponseData &&
        type == other.type &&
        id == other.id &&
        name == other.name &&
        permission == other.permission &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        size == other.size &&
        path == other.path &&
        shared == other.shared &&
        capability == other.capability &&
        owned == other.owned &&
        primaryEntity == other.primaryEntity;
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
    _$hash = $jc(_$hash, path.hashCode);
    _$hash = $jc(_$hash, shared.hashCode);
    _$hash = $jc(_$hash, capability.hashCode);
    _$hash = $jc(_$hash, owned.hashCode);
    _$hash = $jc(_$hash, primaryEntity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileRenamePost200ResponseData')
          ..add('type', type)
          ..add('id', id)
          ..add('name', name)
          ..add('permission', permission)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('size', size)
          ..add('path', path)
          ..add('shared', shared)
          ..add('capability', capability)
          ..add('owned', owned)
          ..add('primaryEntity', primaryEntity))
        .toString();
  }
}

class FileRenamePost200ResponseDataBuilder
    implements
        Builder<FileRenamePost200ResponseData,
            FileRenamePost200ResponseDataBuilder> {
  _$FileRenamePost200ResponseData? _$v;

  FileRenamePost200ResponseDataTypeEnum? _type;
  FileRenamePost200ResponseDataTypeEnum? get type => _$this._type;
  set type(FileRenamePost200ResponseDataTypeEnum? type) => _$this._type = type;

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

  FileRenamePost200ResponseDataBuilder() {
    FileRenamePost200ResponseData._defaults(this);
  }

  FileRenamePost200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _id = $v.id;
      _name = $v.name;
      _permission = $v.permission;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _size = $v.size;
      _path = $v.path;
      _shared = $v.shared;
      _capability = $v.capability;
      _owned = $v.owned;
      _primaryEntity = $v.primaryEntity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileRenamePost200ResponseData other) {
    _$v = other as _$FileRenamePost200ResponseData;
  }

  @override
  void update(void Function(FileRenamePost200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileRenamePost200ResponseData build() => _build();

  _$FileRenamePost200ResponseData _build() {
    final _$result = _$v ??
        _$FileRenamePost200ResponseData._(
          type: type,
          id: id,
          name: name,
          permission: permission,
          createdAt: createdAt,
          updatedAt: updatedAt,
          size: size,
          path: path,
          shared: shared,
          capability: capability,
          owned: owned,
          primaryEntity: primaryEntity,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
