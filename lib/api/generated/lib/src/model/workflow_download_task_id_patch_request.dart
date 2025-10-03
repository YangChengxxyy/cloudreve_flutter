//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/workflow_download_task_id_patch_request_files_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_download_task_id_patch_request.g.dart';

/// WorkflowDownloadTaskIdPatchRequest
///
/// Properties:
/// * [files] - List of files to change.
@BuiltValue()
abstract class WorkflowDownloadTaskIdPatchRequest implements Built<WorkflowDownloadTaskIdPatchRequest, WorkflowDownloadTaskIdPatchRequestBuilder> {
  /// List of files to change.
  @BuiltValueField(wireName: r'files')
  BuiltList<WorkflowDownloadTaskIdPatchRequestFilesInner> get files;

  WorkflowDownloadTaskIdPatchRequest._();

  factory WorkflowDownloadTaskIdPatchRequest([void updates(WorkflowDownloadTaskIdPatchRequestBuilder b)]) = _$WorkflowDownloadTaskIdPatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkflowDownloadTaskIdPatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkflowDownloadTaskIdPatchRequest> get serializer => _$WorkflowDownloadTaskIdPatchRequestSerializer();
}

class _$WorkflowDownloadTaskIdPatchRequestSerializer implements PrimitiveSerializer<WorkflowDownloadTaskIdPatchRequest> {
  @override
  final Iterable<Type> types = const [WorkflowDownloadTaskIdPatchRequest, _$WorkflowDownloadTaskIdPatchRequest];

  @override
  final String wireName = r'WorkflowDownloadTaskIdPatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkflowDownloadTaskIdPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'files';
    yield serializers.serialize(
      object.files,
      specifiedType: const FullType(BuiltList, [FullType(WorkflowDownloadTaskIdPatchRequestFilesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkflowDownloadTaskIdPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkflowDownloadTaskIdPatchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'files':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(WorkflowDownloadTaskIdPatchRequestFilesInner)]),
          ) as BuiltList<WorkflowDownloadTaskIdPatchRequestFilesInner>;
          result.files.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkflowDownloadTaskIdPatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkflowDownloadTaskIdPatchRequestBuilder();
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

