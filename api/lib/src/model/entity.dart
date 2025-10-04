//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/entity_created_by.dart';
import 'package:cloudreve_api_client/src/model/entity_storage_policy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity.g.dart';

/// Entity
///
/// Properties:
/// * [id] - ID of the blob.
/// * [size] - Size of the blob.
/// * [type] - Type of the blob.
/// * [createdAt] - Datetime when the blob is created.
/// * [storagePolicy] 
/// * [createdBy] 
@BuiltValue()
abstract class Entity implements Built<Entity, EntityBuilder> {
  /// ID of the blob.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Size of the blob.
  @BuiltValueField(wireName: r'size')
  int get size;

  /// Type of the blob.
  @BuiltValueField(wireName: r'type')
  EntityTypeEnum get type;
  // enum typeEnum {  0,  1,  2,  };

  /// Datetime when the blob is created.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'storage_policy')
  EntityStoragePolicy? get storagePolicy;

  @BuiltValueField(wireName: r'created_by')
  EntityCreatedBy get createdBy;

  Entity._();

  factory Entity([void updates(EntityBuilder b)]) = _$Entity;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Entity> get serializer => _$EntitySerializer();
}

class _$EntitySerializer implements PrimitiveSerializer<Entity> {
  @override
  final Iterable<Type> types = const [Entity, _$Entity];

  @override
  final String wireName = r'Entity';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Entity object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'size';
    yield serializers.serialize(
      object.size,
      specifiedType: const FullType(int),
    );
    yield r'type';
    yield serializers.serialize(
      object.type,
      specifiedType: const FullType(EntityTypeEnum),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    if (object.storagePolicy != null) {
      yield r'storage_policy';
      yield serializers.serialize(
        object.storagePolicy,
        specifiedType: const FullType.nullable(EntityStoragePolicy),
      );
    }
    yield r'created_by';
    yield serializers.serialize(
      object.createdBy,
      specifiedType: const FullType(EntityCreatedBy),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    Entity object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityTypeEnum),
          ) as EntityTypeEnum;
          result.type = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'storage_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityStoragePolicy),
          ) as EntityStoragePolicy?;
          if (valueDes == null) continue;
          result.storagePolicy.replace(valueDes);
          break;
        case r'created_by':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(EntityCreatedBy),
          ) as EntityCreatedBy;
          result.createdBy.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Entity deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityBuilder();
    final serializedList = (serialized as Iterable<Object?>).toList();
    final unhandled = <Object?>[];
    _deserializeProperties(
      serializers,
      serialized,
      specifiedType: specifiedType,
      serializedList: serializedList,
      unhandled: unhandled,
      result: result,
    );
    return result.build();
  }
}

class EntityTypeEnum extends EnumClass {

  /// Type of the blob.
  @BuiltValueEnumConst(wireNumber: 0)
  static const EntityTypeEnum number0 = _$entityTypeEnum_number0;
  /// Type of the blob.
  @BuiltValueEnumConst(wireNumber: 1)
  static const EntityTypeEnum number1 = _$entityTypeEnum_number1;
  /// Type of the blob.
  @BuiltValueEnumConst(wireNumber: 2)
  static const EntityTypeEnum number2 = _$entityTypeEnum_number2;

  static Serializer<EntityTypeEnum> get serializer => _$entityTypeEnumSerializer;

  const EntityTypeEnum._(String name): super(name);

  static BuiltSet<EntityTypeEnum> get values => _$entityTypeEnumValues;
  static EntityTypeEnum valueOf(String name) => _$entityTypeEnumValueOf(name);
}

