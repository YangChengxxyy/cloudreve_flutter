//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_download_task_id_patch_request_files_inner.g.dart';

/// WorkflowDownloadTaskIdPatchRequestFilesInner
///
/// Properties:
/// * [index] - Index of the file in file list of the task props.
/// * [download] - Whether to download this file.
@BuiltValue()
abstract class WorkflowDownloadTaskIdPatchRequestFilesInner implements Built<WorkflowDownloadTaskIdPatchRequestFilesInner, WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder> {
  /// Index of the file in file list of the task props.
  @BuiltValueField(wireName: r'index')
  int get index;

  /// Whether to download this file.
  @BuiltValueField(wireName: r'download')
  bool? get download;

  WorkflowDownloadTaskIdPatchRequestFilesInner._();

  factory WorkflowDownloadTaskIdPatchRequestFilesInner([void updates(WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder b)]) = _$WorkflowDownloadTaskIdPatchRequestFilesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkflowDownloadTaskIdPatchRequestFilesInner> get serializer => _$WorkflowDownloadTaskIdPatchRequestFilesInnerSerializer();
}

class _$WorkflowDownloadTaskIdPatchRequestFilesInnerSerializer implements PrimitiveSerializer<WorkflowDownloadTaskIdPatchRequestFilesInner> {
  @override
  final Iterable<Type> types = const [WorkflowDownloadTaskIdPatchRequestFilesInner, _$WorkflowDownloadTaskIdPatchRequestFilesInner];

  @override
  final String wireName = r'WorkflowDownloadTaskIdPatchRequestFilesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkflowDownloadTaskIdPatchRequestFilesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'index';
    yield serializers.serialize(
      object.index,
      specifiedType: const FullType(int),
    );
    if (object.download != null) {
      yield r'download';
      yield serializers.serialize(
        object.download,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkflowDownloadTaskIdPatchRequestFilesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'index':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.index = valueDes;
          break;
        case r'download':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.download = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkflowDownloadTaskIdPatchRequestFilesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkflowDownloadTaskIdPatchRequestFilesInnerBuilder();
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

