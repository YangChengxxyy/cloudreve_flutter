//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_reset_user_id_patch_request.g.dart';

/// UserResetUserIdPatchRequest
///
/// Properties:
/// * [password] - New password.
/// * [secret] - Value can be retrieved from the temp url in the email.
@BuiltValue()
abstract class UserResetUserIdPatchRequest implements Built<UserResetUserIdPatchRequest, UserResetUserIdPatchRequestBuilder> {
  /// New password.
  @BuiltValueField(wireName: r'password')
  String? get password;

  /// Value can be retrieved from the temp url in the email.
  @BuiltValueField(wireName: r'secret')
  String? get secret;

  UserResetUserIdPatchRequest._();

  factory UserResetUserIdPatchRequest([void updates(UserResetUserIdPatchRequestBuilder b)]) = _$UserResetUserIdPatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserResetUserIdPatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserResetUserIdPatchRequest> get serializer => _$UserResetUserIdPatchRequestSerializer();
}

class _$UserResetUserIdPatchRequestSerializer implements PrimitiveSerializer<UserResetUserIdPatchRequest> {
  @override
  final Iterable<Type> types = const [UserResetUserIdPatchRequest, _$UserResetUserIdPatchRequest];

  @override
  final String wireName = r'UserResetUserIdPatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserResetUserIdPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.secret != null) {
      yield r'secret';
      yield serializers.serialize(
        object.secret,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserResetUserIdPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserResetUserIdPatchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'secret':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.secret = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserResetUserIdPatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserResetUserIdPatchRequestBuilder();
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

