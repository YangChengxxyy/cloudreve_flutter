// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'file_rename_post_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const FileRenamePostRequestTypeEnum _$fileRenamePostRequestTypeEnum_number0 =
    const FileRenamePostRequestTypeEnum._('number0');
const FileRenamePostRequestTypeEnum _$fileRenamePostRequestTypeEnum_number1 =
    const FileRenamePostRequestTypeEnum._('number1');

FileRenamePostRequestTypeEnum _$fileRenamePostRequestTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'number0':
      return _$fileRenamePostRequestTypeEnum_number0;
    case 'number1':
      return _$fileRenamePostRequestTypeEnum_number1;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<FileRenamePostRequestTypeEnum>
    _$fileRenamePostRequestTypeEnumValues = BuiltSet<
        FileRenamePostRequestTypeEnum>(const <FileRenamePostRequestTypeEnum>[
  _$fileRenamePostRequestTypeEnum_number0,
  _$fileRenamePostRequestTypeEnum_number1,
]);

Serializer<FileRenamePostRequestTypeEnum>
    _$fileRenamePostRequestTypeEnumSerializer =
    _$FileRenamePostRequestTypeEnumSerializer();

class _$FileRenamePostRequestTypeEnumSerializer
    implements PrimitiveSerializer<FileRenamePostRequestTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
  };

  @override
  final Iterable<Type> types = const <Type>[FileRenamePostRequestTypeEnum];
  @override
  final String wireName = 'FileRenamePostRequestTypeEnum';

  @override
  Object serialize(
          Serializers serializers, FileRenamePostRequestTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  FileRenamePostRequestTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      FileRenamePostRequestTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$FileRenamePostRequest extends FileRenamePostRequest {
  @override
  final FileRenamePostRequestTypeEnum type;
  @override
  final String id;
  @override
  final String name;
  @override
  final String? permission;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final int size;
  @override
  final String path;
  @override
  final String? capability;
  @override
  final bool owned;
  @override
  final String? primaryEntity;

  factory _$FileRenamePostRequest(
          [void Function(FileRenamePostRequestBuilder)? updates]) =>
      (FileRenamePostRequestBuilder()..update(updates))._build();

  _$FileRenamePostRequest._(
      {required this.type,
      required this.id,
      required this.name,
      this.permission,
      required this.createdAt,
      required this.updatedAt,
      required this.size,
      required this.path,
      this.capability,
      required this.owned,
      this.primaryEntity})
      : super._();
  @override
  FileRenamePostRequest rebuild(
          void Function(FileRenamePostRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileRenamePostRequestBuilder toBuilder() =>
      FileRenamePostRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileRenamePostRequest &&
        type == other.type &&
        id == other.id &&
        name == other.name &&
        permission == other.permission &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        size == other.size &&
        path == other.path &&
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
    _$hash = $jc(_$hash, capability.hashCode);
    _$hash = $jc(_$hash, owned.hashCode);
    _$hash = $jc(_$hash, primaryEntity.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'FileRenamePostRequest')
          ..add('type', type)
          ..add('id', id)
          ..add('name', name)
          ..add('permission', permission)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('size', size)
          ..add('path', path)
          ..add('capability', capability)
          ..add('owned', owned)
          ..add('primaryEntity', primaryEntity))
        .toString();
  }
}

class FileRenamePostRequestBuilder
    implements Builder<FileRenamePostRequest, FileRenamePostRequestBuilder> {
  _$FileRenamePostRequest? _$v;

  FileRenamePostRequestTypeEnum? _type;
  FileRenamePostRequestTypeEnum? get type => _$this._type;
  set type(FileRenamePostRequestTypeEnum? type) => _$this._type = type;

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

  FileRenamePostRequestBuilder() {
    FileRenamePostRequest._defaults(this);
  }

  FileRenamePostRequestBuilder get _$this {
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
      _capability = $v.capability;
      _owned = $v.owned;
      _primaryEntity = $v.primaryEntity;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileRenamePostRequest other) {
    _$v = other as _$FileRenamePostRequest;
  }

  @override
  void update(void Function(FileRenamePostRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  FileRenamePostRequest build() => _build();

  _$FileRenamePostRequest _build() {
    final _$result = _$v ??
        _$FileRenamePostRequest._(
          type: BuiltValueNullFieldError.checkNotNull(
              type, r'FileRenamePostRequest', 'type'),
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'FileRenamePostRequest', 'id'),
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'FileRenamePostRequest', 'name'),
          permission: permission,
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'FileRenamePostRequest', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'FileRenamePostRequest', 'updatedAt'),
          size: BuiltValueNullFieldError.checkNotNull(
              size, r'FileRenamePostRequest', 'size'),
          path: BuiltValueNullFieldError.checkNotNull(
              path, r'FileRenamePostRequest', 'path'),
          capability: capability,
          owned: BuiltValueNullFieldError.checkNotNull(
              owned, r'FileRenamePostRequest', 'owned'),
          primaryEntity: primaryEntity,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
