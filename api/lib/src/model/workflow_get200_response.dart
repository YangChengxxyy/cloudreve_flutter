//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/task_list_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_get200_response.g.dart';

/// WorkflowGet200Response
///
/// Properties:
/// * [data] 
/// * [code] - Response code. `0` - Success.
/// * [msg] - Human readable error message (if any).
@BuiltValue()
abstract class WorkflowGet200Response implements Built<WorkflowGet200Response, WorkflowGet200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  TaskListResponse? get data;

  /// Response code. `0` - Success.
  @BuiltValueField(wireName: r'code')
  int? get code;

  /// Human readable error message (if any).
  @BuiltValueField(wireName: r'msg')
  String? get msg;

  WorkflowGet200Response._();

  factory WorkflowGet200Response([void updates(WorkflowGet200ResponseBuilder b)]) = _$WorkflowGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkflowGet200ResponseBuilder b) => b
      ..code = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkflowGet200Response> get serializer => _$WorkflowGet200ResponseSerializer();
}

class _$WorkflowGet200ResponseSerializer implements PrimitiveSerializer<WorkflowGet200Response> {
  @override
  final Iterable<Type> types = const [WorkflowGet200Response, _$WorkflowGet200Response];

  @override
  final String wireName = r'WorkflowGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkflowGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.data != null) {
      yield r'data';
      yield serializers.serialize(
        object.data,
        specifiedType: const FullType(TaskListResponse),
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
    WorkflowGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkflowGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(TaskListResponse),
          ) as TaskListResponse;
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
  WorkflowGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkflowGet200ResponseBuilder();
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

