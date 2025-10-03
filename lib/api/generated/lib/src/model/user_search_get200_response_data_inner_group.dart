//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_search_get200_response_data_inner_group.g.dart';

/// UserSearchGet200ResponseDataInnerGroup
///
/// Properties:
/// * [id] - ID of the group.
/// * [name] - Name of the group.
@BuiltValue()
abstract class UserSearchGet200ResponseDataInnerGroup implements Built<UserSearchGet200ResponseDataInnerGroup, UserSearchGet200ResponseDataInnerGroupBuilder> {
  /// ID of the group.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Name of the group.
  @BuiltValueField(wireName: r'name')
  String get name;

  UserSearchGet200ResponseDataInnerGroup._();

  factory UserSearchGet200ResponseDataInnerGroup([void updates(UserSearchGet200ResponseDataInnerGroupBuilder b)]) = _$UserSearchGet200ResponseDataInnerGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSearchGet200ResponseDataInnerGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSearchGet200ResponseDataInnerGroup> get serializer => _$UserSearchGet200ResponseDataInnerGroupSerializer();
}

class _$UserSearchGet200ResponseDataInnerGroupSerializer implements PrimitiveSerializer<UserSearchGet200ResponseDataInnerGroup> {
  @override
  final Iterable<Type> types = const [UserSearchGet200ResponseDataInnerGroup, _$UserSearchGet200ResponseDataInnerGroup];

  @override
  final String wireName = r'UserSearchGet200ResponseDataInnerGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSearchGet200ResponseDataInnerGroup object, {
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
    UserSearchGet200ResponseDataInnerGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserSearchGet200ResponseDataInnerGroupBuilder result,
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
  UserSearchGet200ResponseDataInnerGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSearchGet200ResponseDataInnerGroupBuilder();
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

