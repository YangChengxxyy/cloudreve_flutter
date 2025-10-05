//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_token2fa_post_request.g.dart';

/// SessionToken2faPostRequest
///
/// Properties:
/// * [opt] - One time passcode.
/// * [sessionId] - 2FA login session ID.
@BuiltValue()
abstract class SessionToken2faPostRequest implements Built<SessionToken2faPostRequest, SessionToken2faPostRequestBuilder> {
  /// One time passcode.
  @BuiltValueField(wireName: r'opt')
  String? get opt;

  /// 2FA login session ID.
  @BuiltValueField(wireName: r'session_id')
  String? get sessionId;

  SessionToken2faPostRequest._();

  factory SessionToken2faPostRequest([void updates(SessionToken2faPostRequestBuilder b)]) = _$SessionToken2faPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SessionToken2faPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SessionToken2faPostRequest> get serializer => _$SessionToken2faPostRequestSerializer();
}

class _$SessionToken2faPostRequestSerializer implements PrimitiveSerializer<SessionToken2faPostRequest> {
  @override
  final Iterable<Type> types = const [SessionToken2faPostRequest, _$SessionToken2faPostRequest];

  @override
  final String wireName = r'SessionToken2faPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SessionToken2faPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.opt != null) {
      yield r'opt';
      yield serializers.serialize(
        object.opt,
        specifiedType: const FullType(String),
      );
    }
    if (object.sessionId != null) {
      yield r'session_id';
      yield serializers.serialize(
        object.sessionId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SessionToken2faPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SessionToken2faPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'opt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.opt = valueDes;
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
  SessionToken2faPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SessionToken2faPostRequestBuilder();
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

