//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/devices_dav_get200_response_data_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'devices_dav_get200_response.g.dart';

/// DevicesDavGet200Response
///
/// Properties:
/// * [data] - Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
/// * [code] - Response code. `0` - Success.
/// * [msg] - Human readable error message (if any).
/// * [error] - Internal error message, only visable in debug mode.
/// * [correlationId] - Correlation ID of the request. Only presented on failed reqeust.
@BuiltValue()
abstract class DevicesDavGet200Response implements Built<DevicesDavGet200Response, DevicesDavGet200ResponseBuilder> {
  /// Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
  @BuiltValueField(wireName: r'data')
  BuiltList<DevicesDavGet200ResponseDataInner>? get data;

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

  DevicesDavGet200Response._();

  factory DevicesDavGet200Response([void updates(DevicesDavGet200ResponseBuilder b)]) = _$DevicesDavGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(DevicesDavGet200ResponseBuilder b) => b
      ..code = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<DevicesDavGet200Response> get serializer => _$DevicesDavGet200ResponseSerializer();
}

class _$DevicesDavGet200ResponseSerializer implements PrimitiveSerializer<DevicesDavGet200Response> {
  @override
  final Iterable<Type> types = const [DevicesDavGet200Response, _$DevicesDavGet200Response];

  @override
  final String wireName = r'DevicesDavGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    DevicesDavGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType.nullable(BuiltList, [FullType(DevicesDavGet200ResponseDataInner)]),
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
    DevicesDavGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required DevicesDavGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(DevicesDavGet200ResponseDataInner)]),
          ) as BuiltList<DevicesDavGet200ResponseDataInner>?;
          if (valueDes == null) continue;
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
  DevicesDavGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = DevicesDavGet200ResponseBuilder();
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

