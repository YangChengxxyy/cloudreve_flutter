//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_download_task_id_patch200_response.g.dart';

/// WorkflowDownloadTaskIdPatch200Response
///
/// Properties:
/// * [code] - Response code. `0` - Success.
/// * [msg] - Human readable error message (if any).
@BuiltValue()
abstract class WorkflowDownloadTaskIdPatch200Response implements Built<WorkflowDownloadTaskIdPatch200Response, WorkflowDownloadTaskIdPatch200ResponseBuilder> {
  /// Response code. `0` - Success.
  @BuiltValueField(wireName: r'code')
  int get code;

  /// Human readable error message (if any).
  @BuiltValueField(wireName: r'msg')
  String? get msg;

  WorkflowDownloadTaskIdPatch200Response._();

  factory WorkflowDownloadTaskIdPatch200Response([void updates(WorkflowDownloadTaskIdPatch200ResponseBuilder b)]) = _$WorkflowDownloadTaskIdPatch200Response;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkflowDownloadTaskIdPatch200ResponseBuilder b) => b
      ..code = 0;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkflowDownloadTaskIdPatch200Response> get serializer => _$WorkflowDownloadTaskIdPatch200ResponseSerializer();
}

class _$WorkflowDownloadTaskIdPatch200ResponseSerializer implements PrimitiveSerializer<WorkflowDownloadTaskIdPatch200Response> {
  @override
  final Iterable<Type> types = const [WorkflowDownloadTaskIdPatch200Response, _$WorkflowDownloadTaskIdPatch200Response];

  @override
  final String wireName = r'WorkflowDownloadTaskIdPatch200Response';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkflowDownloadTaskIdPatch200Response object, {
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
    WorkflowDownloadTaskIdPatch200Response object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkflowDownloadTaskIdPatch200ResponseBuilder result,
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
  WorkflowDownloadTaskIdPatch200Response deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkflowDownloadTaskIdPatch200ResponseBuilder();
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

