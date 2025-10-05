//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_created_by_group.g.dart';

/// EntityCreatedByGroup
///
/// Properties:
/// * [id] - ID of the group.
/// * [name] - Name of the group.
@BuiltValue()
abstract class EntityCreatedByGroup implements Built<EntityCreatedByGroup, EntityCreatedByGroupBuilder> {
  /// ID of the group.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Name of the group.
  @BuiltValueField(wireName: r'name')
  String? get name;

  EntityCreatedByGroup._();

  factory EntityCreatedByGroup([void updates(EntityCreatedByGroupBuilder b)]) = _$EntityCreatedByGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityCreatedByGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityCreatedByGroup> get serializer => _$EntityCreatedByGroupSerializer();
}

class _$EntityCreatedByGroupSerializer implements PrimitiveSerializer<EntityCreatedByGroup> {
  @override
  final Iterable<Type> types = const [EntityCreatedByGroup, _$EntityCreatedByGroup];

  @override
  final String wireName = r'EntityCreatedByGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityCreatedByGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityCreatedByGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityCreatedByGroupBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  EntityCreatedByGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityCreatedByGroupBuilder();
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

