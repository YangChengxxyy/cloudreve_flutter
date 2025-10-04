//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/task_response.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_reloacte_post200_response.g.dart';

/// WorkflowReloactePost200Response
///
/// Properties:
/// * [data] 
/// * [code] - Response code. `0` - Success.
/// * [msg] - Human readable error message (if any).
@BuiltValue()
abstract class WorkflowReloactePost200Response implements Built<WorkflowReloactePost200Response, WorkflowReloactePost200ResponseBuilder> {
  @BuiltValueField(wireName: r'data')
  TaskResponse get data;

  /// Response code. `0` - Success.
  @BuiltValueField(wireName: r'code')
  int get code;

  /// Human readable error message (if any).
  @BuiltValueField(wireName: r'msg')
  String? get msg;

  WorkflowReloactePost200Response._();

  factory WorkflowReloactePost200Response([void updates(WorkflowReloactePost200ResponseBuilder b)]) = _$WorkflowReloactePost200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkflowReloactePost200ResponseBuilder b) => b
      ..code = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkflowReloactePost200Response> get serializer => _$WorkflowReloactePost200ResponseSerializer();
}

class _$WorkflowReloactePost200ResponseSerializer implements PrimitiveSerializer<WorkflowReloactePost200Response> {
  @override
  final Iterable<Type> types = const [WorkflowReloactePost200Response, _$WorkflowReloactePost200Response];

  @override
  final String wireName = r'WorkflowReloactePost200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkflowReloactePost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(TaskResponse),
    );
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
    WorkflowReloactePost200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkflowReloactePost200ResponseBuilder result,
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
  WorkflowReloactePost200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkflowReloactePost200ResponseBuilder();
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

