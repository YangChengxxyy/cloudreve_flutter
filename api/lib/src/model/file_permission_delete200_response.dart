//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/response.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_permission_delete200_response.g.dart';

/// FilePermissionDelete200Response
///
/// Properties:
/// * [code] - Response code. `0` - Success.
/// * [msg] - Human readable error message (if any).
/// * [error] - Internal error message, only visable in debug mode.
/// * [aggregatedError] - Map of multiple error in batch request. The key is the failed resource ID, it could be a file URI or a resource ID, the value is a `Response`.
/// * [correlationId] - Correlation ID of the request. Only presented on failed reqeust.
@BuiltValue()
abstract class FilePermissionDelete200Response implements Built<FilePermissionDelete200Response, FilePermissionDelete200ResponseBuilder> {
  /// Response code. `0` - Success.
  @BuiltValueField(wireName: r'code')
  int? get code;

  /// Human readable error message (if any).
  @BuiltValueField(wireName: r'msg')
  String? get msg;

  /// Internal error message, only visable in debug mode.
  @BuiltValueField(wireName: r'error')
  String? get error;

  /// Map of multiple error in batch request. The key is the failed resource ID, it could be a file URI or a resource ID, the value is a `Response`.
  @BuiltValueField(wireName: r'aggregated_error')
  BuiltMap<String, Response>? get aggregatedError;

  /// Correlation ID of the request. Only presented on failed reqeust.
  @BuiltValueField(wireName: r'correlation_id')
  String? get correlationId;

  FilePermissionDelete200Response._();

  factory FilePermissionDelete200Response([void updates(FilePermissionDelete200ResponseBuilder b)]) = _$FilePermissionDelete200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilePermissionDelete200ResponseBuilder b) => b
      ..code = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilePermissionDelete200Response> get serializer => _$FilePermissionDelete200ResponseSerializer();
}

class _$FilePermissionDelete200ResponseSerializer implements PrimitiveSerializer<FilePermissionDelete200Response> {
  @override
  final Iterable<Type> types = const [FilePermissionDelete200Response, _$FilePermissionDelete200Response];

  @override
  final String wireName = r'FilePermissionDelete200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilePermissionDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
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
    if (object.aggregatedError != null) {
      yield r'aggregated_error';
      yield serializers.serialize(
        object.aggregatedError,
        specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(Response)]),
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
    FilePermissionDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilePermissionDelete200ResponseBuilder result,
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
        case r'error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.error = valueDes;
          break;
        case r'aggregated_error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(Response)]),
          ) as BuiltMap<String, Response>?;
          if (valueDes == null) continue;
          result.aggregatedError.replace(valueDes);
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
  FilePermissionDelete200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilePermissionDelete200ResponseBuilder();
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

