//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_info_user_id_get200_response_data_group.g.dart';

/// UserInfoUserIdGet200ResponseDataGroup
///
/// Properties:
/// * [id] - ID of the group.
/// * [name] - Name of the group.
@BuiltValue()
abstract class UserInfoUserIdGet200ResponseDataGroup implements Built<UserInfoUserIdGet200ResponseDataGroup, UserInfoUserIdGet200ResponseDataGroupBuilder> {
  /// ID of the group.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Name of the group.
  @BuiltValueField(wireName: r'name')
  String? get name;

  UserInfoUserIdGet200ResponseDataGroup._();

  factory UserInfoUserIdGet200ResponseDataGroup([void updates(UserInfoUserIdGet200ResponseDataGroupBuilder b)]) = _$UserInfoUserIdGet200ResponseDataGroup;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserInfoUserIdGet200ResponseDataGroupBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserInfoUserIdGet200ResponseDataGroup> get serializer => _$UserInfoUserIdGet200ResponseDataGroupSerializer();
}

class _$UserInfoUserIdGet200ResponseDataGroupSerializer implements PrimitiveSerializer<UserInfoUserIdGet200ResponseDataGroup> {
  @override
  final Iterable<Type> types = const [UserInfoUserIdGet200ResponseDataGroup, _$UserInfoUserIdGet200ResponseDataGroup];

  @override
  final String wireName = r'UserInfoUserIdGet200ResponseDataGroup';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserInfoUserIdGet200ResponseDataGroup object, {
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
    UserInfoUserIdGet200ResponseDataGroup object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserInfoUserIdGet200ResponseDataGroupBuilder result,
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
  UserInfoUserIdGet200ResponseDataGroup deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserInfoUserIdGet200ResponseDataGroupBuilder();
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

