//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_token_delete200_response.g.dart';

/// SessionTokenDelete200Response
///
/// Properties:
/// * [data] 
/// * [code] - Response code. `0` - Success.
/// * [msg] - Human readable error message (if any).
/// * [error] - Internal error message, only visable in debug mode.
/// * [correlationId] - Correlation ID of the request. Only presented on failed reqeust.
@BuiltValue()
abstract class SessionTokenDelete200Response implements Built<SessionTokenDelete200Response, SessionTokenDelete200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  User? get data;

  /// Response code. `0` - Success.
  @BuiltValueField(wireName: r'code')
  int? get code;

  /// Human readable error message (if any).
  @BuiltValueField(wireName: r'msg')
  String? get msg;

  /// Internal error message, only visable in debug mode.
  @BuiltValueField(wireName: r'error')
  String? get error;

  /// Correlation ID of the request. Only presented on failed reqeust.
  @BuiltValueField(wireName: r'correlation_id')
  String? get correlationId;

  SessionTokenDelete200Response._();

  factory SessionTokenDelete200Response([void updates(SessionTokenDelete200ResponseBuilder b)]) = _$SessionTokenDelete200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SessionTokenDelete200ResponseBuilder b) => b
      ..code = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<SessionTokenDelete200Response> get serializer => _$SessionTokenDelete200ResponseSerializer();
}

class _$SessionTokenDelete200ResponseSerializer implements PrimitiveSerializer<SessionTokenDelete200Response> {
  @override
  final Iterable<Type> types = const [SessionTokenDelete200Response, _$SessionTokenDelete200Response];

  @override
  final String wireName = r'SessionTokenDelete200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SessionTokenDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(User),
      );
    }
    if (object.code != null) {
      yield r'code';
      yield serializers.serialize(
        object.code,
        specifiedType: const FullType(int),
      );
    }
    if (object.msg != null) {
      yield r'msg';
      yield serializers.serialize(
        object.msg,
        specifiedType: const FullType(String),
      );
    }
    if (object.error != null) {
      yield r'error';
      yield serializers.serialize(
        object.error,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.correlationId != null) {
      yield r'correlation_id';
      yield serializers.serialize(
        object.correlationId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SessionTokenDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SessionTokenDelete200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(User),
          ) as User;
          result.data.replace(valueDes);
          break;
        case r'code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.code = valueDes;
          break;
        case r'msg':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.msg = valueDes;
          break;
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'correlation_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.correlationId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SessionTokenDelete200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SessionTokenDelete200ResponseBuilder();
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

