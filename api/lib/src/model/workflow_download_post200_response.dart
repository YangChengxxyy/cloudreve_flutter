//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/task_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_download_post200_response.g.dart';

/// WorkflowDownloadPost200Response
///
/// Properties:
/// * [data] 
/// * [code] - Response code. `0` - Success.
/// * [msg] - Human readable error message (if any).
@BuiltValue()
abstract class WorkflowDownloadPost200Response implements Built<WorkflowDownloadPost200Response, WorkflowDownloadPost200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  TaskResponse? get data;

  /// Response code. `0` - Success.
  @BuiltValueField(wireName: r'code')
  int? get code;

  /// Human readable error message (if any).
  @BuiltValueField(wireName: r'msg')
  String? get msg;

  WorkflowDownloadPost200Response._();

  factory WorkflowDownloadPost200Response([void updates(WorkflowDownloadPost200ResponseBuilder b)]) = _$WorkflowDownloadPost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkflowDownloadPost200ResponseBuilder b) => b
      ..code = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkflowDownloadPost200Response> get serializer => _$WorkflowDownloadPost200ResponseSerializer();
}

class _$WorkflowDownloadPost200ResponseSerializer implements PrimitiveSerializer<WorkflowDownloadPost200Response> {
  @override
  final Iterable<Type> types = const [WorkflowDownloadPost200Response, _$WorkflowDownloadPost200Response];

  @override
  final String wireName = r'WorkflowDownloadPost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkflowDownloadPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(TaskResponse),
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
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkflowDownloadPost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkflowDownloadPost200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TaskResponse),
          ) as TaskResponse;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkflowDownloadPost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkflowDownloadPost200ResponseBuilder();
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

