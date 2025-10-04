//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/progress.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_progress_id_get200_response.g.dart';

/// WorkflowProgressIdGet200Response
///
/// Properties:
/// * [data] - Map of progress type and the progress content.
/// * [code] - Response code. `0` - Success.
/// * [msg] - Human readable error message (if any).
@BuiltValue()
abstract class WorkflowProgressIdGet200Response implements Built<WorkflowProgressIdGet200Response, WorkflowProgressIdGet200ResponseBuilder> {
  /// Map of progress type and the progress content.
  @BuiltValueField(wireName: r'data')
  BuiltMap<String, Progress> get data;

  /// Response code. `0` - Success.
  @BuiltValueField(wireName: r'code')
  int get code;

  /// Human readable error message (if any).
  @BuiltValueField(wireName: r'msg')
  String? get msg;

  WorkflowProgressIdGet200Response._();

  factory WorkflowProgressIdGet200Response([void updates(WorkflowProgressIdGet200ResponseBuilder b)]) = _$WorkflowProgressIdGet200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkflowProgressIdGet200ResponseBuilder b) => b
      ..code = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkflowProgressIdGet200Response> get serializer => _$WorkflowProgressIdGet200ResponseSerializer();
}

class _$WorkflowProgressIdGet200ResponseSerializer implements PrimitiveSerializer<WorkflowProgressIdGet200Response> {
  @override
  final Iterable<Type> types = const [WorkflowProgressIdGet200Response, _$WorkflowProgressIdGet200Response];

  @override
  final String wireName = r'WorkflowProgressIdGet200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkflowProgressIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'data';
    yield serializers.serialize(
      object.data,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType(Progress)]),
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
    WorkflowProgressIdGet200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkflowProgressIdGet200ResponseBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'data':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType(Progress)]),
          ) as BuiltMap<String, Progress>;
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
  WorkflowProgressIdGet200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkflowProgressIdGet200ResponseBuilder();
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

