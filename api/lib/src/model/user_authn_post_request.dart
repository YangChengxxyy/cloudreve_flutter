//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_authn_post_request.g.dart';

/// UserAuthnPostRequest
///
/// Properties:
/// * [response] - JSON encoded CredentialCreationResponse with additional fields, see example for details.
/// * [u] - Name of the passkey. Available placeholders:  - `{os}`: OS name parsed from `ua`; - `{browser}`: Browser name parsed from `ua`;
/// * [ua] - Client user agent.
@BuiltValue()
abstract class UserAuthnPostRequest implements Built<UserAuthnPostRequest, UserAuthnPostRequestBuilder> {
  /// JSON encoded CredentialCreationResponse with additional fields, see example for details.
  @BuiltValueField(wireName: r'response')
  String get response;

  /// Name of the passkey. Available placeholders:  - `{os}`: OS name parsed from `ua`; - `{browser}`: Browser name parsed from `ua`;
  @BuiltValueField(wireName: r'u')
  String get u;

  /// Client user agent.
  @BuiltValueField(wireName: r'ua')
  String get ua;

  UserAuthnPostRequest._();

  factory UserAuthnPostRequest([void updates(UserAuthnPostRequestBuilder b)]) = _$UserAuthnPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserAuthnPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserAuthnPostRequest> get serializer => _$UserAuthnPostRequestSerializer();
}

class _$UserAuthnPostRequestSerializer implements PrimitiveSerializer<UserAuthnPostRequest> {
  @override
  final Iterable<Type> types = const [UserAuthnPostRequest, _$UserAuthnPostRequest];

  @override
  final String wireName = r'UserAuthnPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserAuthnPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'response';
    yield serializers.serialize(
      object.response,
      specifiedType: const FullType(String),
    );
    yield r'u';
    yield serializers.serialize(
      object.u,
      specifiedType: const FullType(String),
    );
    yield r'ua';
    yield serializers.serialize(
      object.ua,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserAuthnPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserAuthnPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'response':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.response = valueDes;
          break;
        case r'u':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.u = valueDes;
          break;
        case r'ua':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ua = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserAuthnPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserAuthnPostRequestBuilder();
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

