//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_reset_post_request.g.dart';

/// UserResetPostRequest
///
/// Properties:
/// * [captcha] - User input value of the graphical CAPTCHA. Required if graphic CAPTCHA enabled for current action.
/// * [ticket] - Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for current action. Can be obtained from [Get CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
/// * [email] - Account ematil.
@BuiltValue()
abstract class UserResetPostRequest implements Built<UserResetPostRequest, UserResetPostRequestBuilder> {
  /// User input value of the graphical CAPTCHA. Required if graphic CAPTCHA enabled for current action.
  @BuiltValueField(wireName: r'captcha')
  String? get captcha;

  /// Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for current action. Can be obtained from [Get CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
  @BuiltValueField(wireName: r'ticket')
  String? get ticket;

  /// Account ematil.
  @BuiltValueField(wireName: r'email')
  String get email;

  UserResetPostRequest._();

  factory UserResetPostRequest([void updates(UserResetPostRequestBuilder b)]) = _$UserResetPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserResetPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserResetPostRequest> get serializer => _$UserResetPostRequestSerializer();
}

class _$UserResetPostRequestSerializer implements PrimitiveSerializer<UserResetPostRequest> {
  @override
  final Iterable<Type> types = const [UserResetPostRequest, _$UserResetPostRequest];

  @override
  final String wireName = r'UserResetPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserResetPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.captcha != null) {
      yield r'captcha';
      yield serializers.serialize(
        object.captcha,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.ticket != null) {
      yield r'ticket';
      yield serializers.serialize(
        object.ticket,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'email';
    yield serializers.serialize(
      object.email,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserResetPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserResetPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'captcha':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.captcha = valueDes;
          break;
        case r'ticket':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ticket = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserResetPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserResetPostRequestBuilder();
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

