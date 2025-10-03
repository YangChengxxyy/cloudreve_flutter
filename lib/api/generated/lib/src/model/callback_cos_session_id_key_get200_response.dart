//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'callback_cos_session_id_key_get200_response.g.dart';

/// CallbackCosSessionIdKeyGet200Response
///
/// Properties:
/// * [code] - Response code. `0` - Success.
/// * [msg] - Human readable error message (if any).
@BuiltValue()
abstract class CallbackCosSessionIdKeyGet200Response implements Built<CallbackCosSessionIdKeyGet200Response, CallbackCosSessionIdKeyGet200ResponseBuilder> {
  /// Response code. `0` - Success.
  @BuiltValueField(wireName: r'code')
  int get code;

  /// Human readable error message (if any).
  @BuiltValueField(wireName: r'msg')
  String? get msg;

  CallbackCosSessionIdKeyGet200Response._();

  factory CallbackCosSessionIdKeyGet200Response([void updates(CallbackCosSessionIdKeyGet200ResponseBuilder b)]) = _$CallbackCosSessionIdKeyGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CallbackCosSessionIdKeyGet200ResponseBuilder b) => b
      ..code = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<CallbackCosSessionIdKeyGet200Response> get serializer => _$CallbackCosSessionIdKeyGet200ResponseSerializer();
}

class _$CallbackCosSessionIdKeyGet200ResponseSerializer implements PrimitiveSerializer<CallbackCosSessionIdKeyGet200Response> {
  @override
  final Iterable<Type> types = const [CallbackCosSessionIdKeyGet200Response, _$CallbackCosSessionIdKeyGet200Response];

  @override
  final String wireName = r'CallbackCosSessionIdKeyGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CallbackCosSessionIdKeyGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'code';
    yield serializers.serialize(
      object.code,
      specifiedType: const FullType(int),
    );
    if (object.msg != null) {
      yield r'msg';
      yield serializers.serialize(
        object.msg,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CallbackCosSessionIdKeyGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CallbackCosSessionIdKeyGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CallbackCosSessionIdKeyGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CallbackCosSessionIdKeyGet200ResponseBuilder();
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

