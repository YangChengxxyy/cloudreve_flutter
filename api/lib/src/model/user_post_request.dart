//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_post_request.g.dart';

/// UserPostRequest
///
/// Properties:
/// * [email] - Account email.
/// * [password] - Account password.
/// * [language] - Primary UI and Email language code, should be a registered language in [i18n.ts](https://github.com/cloudreve/frontend/blob/master/src/i18n.ts#L44).
/// * [captcha] - User input value of the graphical CAPTCHA. Required if graphic CAPTCHA enabled for current action.
/// * [ticket] - Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for current action. Can be obtained from [Get CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
@BuiltValue()
abstract class UserPostRequest implements Built<UserPostRequest, UserPostRequestBuilder> {
  /// Account email.
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Account password.
  @BuiltValueField(wireName: r'password')
  String? get password;

  /// Primary UI and Email language code, should be a registered language in [i18n.ts](https://github.com/cloudreve/frontend/blob/master/src/i18n.ts#L44).
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// User input value of the graphical CAPTCHA. Required if graphic CAPTCHA enabled for current action.
  @BuiltValueField(wireName: r'captcha')
  String? get captcha;

  /// Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for current action. Can be obtained from [Get CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
  @BuiltValueField(wireName: r'ticket')
  String? get ticket;

  UserPostRequest._();

  factory UserPostRequest([void updates(UserPostRequestBuilder b)]) = _$UserPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserPostRequest> get serializer => _$UserPostRequestSerializer();
}

class _$UserPostRequestSerializer implements PrimitiveSerializer<UserPostRequest> {
  @override
  final Iterable<Type> types = const [UserPostRequest, _$UserPostRequest];

  @override
  final String wireName = r'UserPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
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
  }

  @override
  Object serialize(
    Serializers serializers,
    UserPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserPostRequestBuilder();
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

