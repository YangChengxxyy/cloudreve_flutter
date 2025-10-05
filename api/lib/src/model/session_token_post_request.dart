//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_token_post_request.g.dart';

/// SessionTokenPostRequest
///
/// Properties:
/// * [captcha] - User input value of the graphical CAPTCHA. Required if graphic CAPTCHA enabled for current action.
/// * [ticket] - Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for current action. Can be obtained from [Get CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
/// * [email] - Email of the desired user.
/// * [password] - Password of the desired user.
@BuiltValue()
abstract class SessionTokenPostRequest implements Built<SessionTokenPostRequest, SessionTokenPostRequestBuilder> {
  /// User input value of the graphical CAPTCHA. Required if graphic CAPTCHA enabled for current action.
  @BuiltValueField(wireName: r'captcha')
  String? get captcha;

  /// Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for current action. Can be obtained from [Get CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
  @BuiltValueField(wireName: r'ticket')
  String? get ticket;

  /// Email of the desired user.
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Password of the desired user.
  @BuiltValueField(wireName: r'password')
  String? get password;

  SessionTokenPostRequest._();

  factory SessionTokenPostRequest([void updates(SessionTokenPostRequestBuilder b)]) = _$SessionTokenPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SessionTokenPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SessionTokenPostRequest> get serializer => _$SessionTokenPostRequestSerializer();
}

class _$SessionTokenPostRequestSerializer implements PrimitiveSerializer<SessionTokenPostRequest> {
  @override
  final Iterable<Type> types = const [SessionTokenPostRequest, _$SessionTokenPostRequest];

  @override
  final String wireName = r'SessionTokenPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SessionTokenPostRequest object, {
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
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SessionTokenPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SessionTokenPostRequestBuilder result,
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
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SessionTokenPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SessionTokenPostRequestBuilder();
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

