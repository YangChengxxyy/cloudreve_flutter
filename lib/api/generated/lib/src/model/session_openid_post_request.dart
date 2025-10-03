//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_openid_post_request.g.dart';

/// SessionOpenidPostRequest
///
/// Properties:
/// * [code] - OAuth `code`, can be found in the redirected URL query string after user sign in complete.
/// * [sessionId] - Sign in session ID, can be found in the redirected URL query string `state`.
/// * [providerId] - OpenID provider type ID.
@BuiltValue()
abstract class SessionOpenidPostRequest implements Built<SessionOpenidPostRequest, SessionOpenidPostRequestBuilder> {
  /// OAuth `code`, can be found in the redirected URL query string after user sign in complete.
  @BuiltValueField(wireName: r'code')
  String get code;

  /// Sign in session ID, can be found in the redirected URL query string `state`.
  @BuiltValueField(wireName: r'session_id')
  String get sessionId;

  /// OpenID provider type ID.
  @BuiltValueField(wireName: r'provider_id')
  int get providerId;

  SessionOpenidPostRequest._();

  factory SessionOpenidPostRequest([void updates(SessionOpenidPostRequestBuilder b)]) = _$SessionOpenidPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SessionOpenidPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SessionOpenidPostRequest> get serializer => _$SessionOpenidPostRequestSerializer();
}

class _$SessionOpenidPostRequestSerializer implements PrimitiveSerializer<SessionOpenidPostRequest> {
  @override
  final Iterable<Type> types = const [SessionOpenidPostRequest, _$SessionOpenidPostRequest];

  @override
  final String wireName = r'SessionOpenidPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SessionOpenidPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(String),
    );
    yield r'session_id';
    yield serializers.serialize(
      object.sessionId,
      specifiedType: const FullType(String),
    );
    yield r'provider_id';
    yield serializers.serialize(
      object.providerId,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SessionOpenidPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SessionOpenidPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.code = valueDes;
          break;
        case r'session_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sessionId = valueDes;
          break;
        case r'provider_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.providerId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SessionOpenidPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SessionOpenidPostRequestBuilder();
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

