//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity_user_group.g.dart';

/// ActivityUserGroup
///
/// Properties:
/// * [id] - ID of the group.
/// * [name] - Name of the group.
@BuiltValue()
abstract class ActivityUserGroup implements Built<ActivityUserGroup, ActivityUserGroupBuilder> {
  /// ID of the group.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Name of the group.
  @BuiltValueField(wireName: r'name')
  String get name;

  ActivityUserGroup._();

  factory ActivityUserGroup([void updates(ActivityUserGroupBuilder b)]) = _$ActivityUserGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivityUserGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivityUserGroup> get serializer => _$ActivityUserGroupSerializer();
}

class _$ActivityUserGroupSerializer implements PrimitiveSerializer<ActivityUserGroup> {
  @override
  final Iterable<Type> types = const [ActivityUserGroup, _$ActivityUserGroup];

  @override
  final String wireName = r'ActivityUserGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivityUserGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    ActivityUserGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ActivityUserGroupBuilder result,
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
  ActivityUserGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityUserGroupBuilder();
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

