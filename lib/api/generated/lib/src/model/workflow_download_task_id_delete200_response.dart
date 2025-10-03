//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_download_task_id_delete200_response.g.dart';

/// WorkflowDownloadTaskIdDelete200Response
///
/// Properties:
/// * [code] - Response code. `0` - Success.
/// * [msg] - Human readable error message (if any).
@BuiltValue()
abstract class WorkflowDownloadTaskIdDelete200Response implements Built<WorkflowDownloadTaskIdDelete200Response, WorkflowDownloadTaskIdDelete200ResponseBuilder> {
  /// Response code. `0` - Success.
  @BuiltValueField(wireName: r'code')
  int get code;

  /// Human readable error message (if any).
  @BuiltValueField(wireName: r'msg')
  String? get msg;

  WorkflowDownloadTaskIdDelete200Response._();

  factory WorkflowDownloadTaskIdDelete200Response([void updates(WorkflowDownloadTaskIdDelete200ResponseBuilder b)]) = _$WorkflowDownloadTaskIdDelete200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkflowDownloadTaskIdDelete200ResponseBuilder b) => b
      ..code = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkflowDownloadTaskIdDelete200Response> get serializer => _$WorkflowDownloadTaskIdDelete200ResponseSerializer();
}

class _$WorkflowDownloadTaskIdDelete200ResponseSerializer implements PrimitiveSerializer<WorkflowDownloadTaskIdDelete200Response> {
  @override
  final Iterable<Type> types = const [WorkflowDownloadTaskIdDelete200Response, _$WorkflowDownloadTaskIdDelete200Response];

  @override
  final String wireName = r'WorkflowDownloadTaskIdDelete200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkflowDownloadTaskIdDelete200Response object, {
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
    WorkflowDownloadTaskIdDelete200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkflowDownloadTaskIdDelete200ResponseBuilder result,
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
  WorkflowDownloadTaskIdDelete200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkflowDownloadTaskIdDelete200ResponseBuilder();
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

