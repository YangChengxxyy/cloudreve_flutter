// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EntityTypeEnum _$entityTypeEnum_number0 =
    const EntityTypeEnum._('number0');
const EntityTypeEnum _$entityTypeEnum_number1 =
    const EntityTypeEnum._('number1');
const EntityTypeEnum _$entityTypeEnum_number2 =
    const EntityTypeEnum._('number2');

EntityTypeEnum _$entityTypeEnumValueOf(String name) {
  switch (name) {
    case 'number0':
      return _$entityTypeEnum_number0;
    case 'number1':
      return _$entityTypeEnum_number1;
    case 'number2':
      return _$entityTypeEnum_number2;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EntityTypeEnum> _$entityTypeEnumValues =
    BuiltSet<EntityTypeEnum>(const <EntityTypeEnum>[
  _$entityTypeEnum_number0,
  _$entityTypeEnum_number1,
  _$entityTypeEnum_number2,
]);

Serializer<EntityTypeEnum> _$entityTypeEnumSerializer =
    _$EntityTypeEnumSerializer();

class _$EntityTypeEnumSerializer
    implements PrimitiveSerializer<EntityTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number0': 0,
    'number1': 1,
    'number2': 2,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    0: 'number0',
    1: 'number1',
    2: 'number2',
  };

  @override
  final Iterable<Type> types = const <Type>[EntityTypeEnum];
  @override
  final String wireName = 'EntityTypeEnum';

  @override
  Object serialize(Serializers serializers, EntityTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EntityTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EntityTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Entity extends Entity {
  @override
  final String? id;
  @override
  final int? size;
  @override
  final EntityTypeEnum? type;
  @override
  final DateTime? createdAt;
  @override
  final EntityStoragePolicy? storagePolicy;
  @override
  final EntityCreatedBy? createdBy;

  factory _$Entity([void Function(EntityBuilder)? updates]) =>
      (EntityBuilder()..update(updates))._build();

  _$Entity._(
      {this.id,
      this.size,
      this.type,
      this.createdAt,
      this.storagePolicy,
      this.createdBy})
      : super._();
  @override
  Entity rebuild(void Function(EntityBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityBuilder toBuilder() => EntityBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Entity &&
        id == other.id &&
        size == other.size &&
        type == other.type &&
        createdAt == other.createdAt &&
        storagePolicy == other.storagePolicy &&
        createdBy == other.createdBy;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, size.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, storagePolicy.hashCode);
    _$hash = $jc(_$hash, createdBy.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Entity')
          ..add('id', id)
          ..add('size', size)
          ..add('type', type)
          ..add('createdAt', createdAt)
          ..add('storagePolicy', storagePolicy)
          ..add('createdBy', createdBy))
        .toString();
  }
}

class EntityBuilder implements Builder<Entity, EntityBuilder> {
  _$Entity? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  int? _size;
  int? get size => _$this._size;
  set size(int? size) => _$this._size = size;

  EntityTypeEnum? _type;
  EntityTypeEnum? get type => _$this._type;
  set type(EntityTypeEnum? type) => _$this._type = type;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  EntityStoragePolicyBuilder? _storagePolicy;
  EntityStoragePolicyBuilder get storagePolicy =>
      _$this._storagePolicy ??= EntityStoragePolicyBuilder();
  set storagePolicy(EntityStoragePolicyBuilder? storagePolicy) =>
      _$this._storagePolicy = storagePolicy;

  EntityCreatedByBuilder? _createdBy;
  EntityCreatedByBuilder get createdBy =>
      _$this._createdBy ??= EntityCreatedByBuilder();
  set createdBy(EntityCreatedByBuilder? createdBy) =>
      _$this._createdBy = createdBy;

  EntityBuilder() {
    Entity._defaults(this);
  }

  EntityBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _size = $v.size;
      _type = $v.type;
      _createdAt = $v.createdAt;
      _storagePolicy = $v.storagePolicy?.toBuilder();
      _createdBy = $v.createdBy?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Entity other) {
    _$v = other as _$Entity;
  }

  @override
  void update(void Function(EntityBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Entity build() => _build();

  _$Entity _build() {
    _$Entity _$result;
    try {
      _$result = _$v ??
          _$Entity._(
            id: id,
            size: size,
            type: type,
            createdAt: createdAt,
            storagePolicy: _storagePolicy?.build(),
            createdBy: _createdBy?.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'storagePolicy';
        _storagePolicy?.build();
        _$failedField = 'createdBy';
        _createdBy?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'Entity', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
