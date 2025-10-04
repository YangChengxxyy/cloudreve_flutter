//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_authn_post_request.g.dart';

/// SessionAuthnPostRequest
///
/// Properties:
/// * [response] - JSON encoded `AuthenticatorAttestationResponse` with additional fields, see example for details.
/// * [sessionId] - Passkey login session ID.
@BuiltValue()
abstract class SessionAuthnPostRequest implements Built<SessionAuthnPostRequest, SessionAuthnPostRequestBuilder> {
  /// JSON encoded `AuthenticatorAttestationResponse` with additional fields, see example for details.
  @BuiltValueField(wireName: r'response')
  String get response;

  /// Passkey login session ID.
  @BuiltValueField(wireName: r'session_id')
  String get sessionId;

  SessionAuthnPostRequest._();

  factory SessionAuthnPostRequest([void updates(SessionAuthnPostRequestBuilder b)]) = _$SessionAuthnPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SessionAuthnPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SessionAuthnPostRequest> get serializer => _$SessionAuthnPostRequestSerializer();
}

class _$SessionAuthnPostRequestSerializer implements PrimitiveSerializer<SessionAuthnPostRequest> {
  @override
  final Iterable<Type> types = const [SessionAuthnPostRequest, _$SessionAuthnPostRequest];

  @override
  final String wireName = r'SessionAuthnPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SessionAuthnPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'response';
    yield serializers.serialize(
      object.response,
      specifiedType: const FullType(String),
    );
    yield r'session_id';
    yield serializers.serialize(
      object.sessionId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SessionAuthnPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SessionAuthnPostRequestBuilder result,
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
        case r'session_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sessionId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SessionAuthnPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SessionAuthnPostRequestBuilder();
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

