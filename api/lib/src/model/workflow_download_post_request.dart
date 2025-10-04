//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_download_post_request.g.dart';

/// WorkflowDownloadPostRequest
///
/// Properties:
/// * [dst] - URI of the destination folder.
/// * [srcFile] - URI of the source torrent file. If this field is empty, `src` is required.
/// * [src] - List of URL to be download. Can be HTTP or magnet link, depending on the configured downloader. If this field is empty, `src_file` is required.
/// * [preferredNodeId] - ID of preferred node to process
@BuiltValue()
abstract class WorkflowDownloadPostRequest implements Built<WorkflowDownloadPostRequest, WorkflowDownloadPostRequestBuilder> {
  /// URI of the destination folder.
  @BuiltValueField(wireName: r'dst')
  String get dst;

  /// URI of the source torrent file. If this field is empty, `src` is required.
  @BuiltValueField(wireName: r'src_file')
  String? get srcFile;

  /// List of URL to be download. Can be HTTP or magnet link, depending on the configured downloader. If this field is empty, `src_file` is required.
  @BuiltValueField(wireName: r'src')
  BuiltList<String>? get src;

  /// ID of preferred node to process
  @BuiltValueField(wireName: r'preferred_node_id')
  String? get preferredNodeId;

  WorkflowDownloadPostRequest._();

  factory WorkflowDownloadPostRequest([void updates(WorkflowDownloadPostRequestBuilder b)]) = _$WorkflowDownloadPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkflowDownloadPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkflowDownloadPostRequest> get serializer => _$WorkflowDownloadPostRequestSerializer();
}

class _$WorkflowDownloadPostRequestSerializer implements PrimitiveSerializer<WorkflowDownloadPostRequest> {
  @override
  final Iterable<Type> types = const [WorkflowDownloadPostRequest, _$WorkflowDownloadPostRequest];

  @override
  final String wireName = r'WorkflowDownloadPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkflowDownloadPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'dst';
    yield serializers.serialize(
      object.dst,
      specifiedType: const FullType(String),
    );
    if (object.srcFile != null) {
      yield r'src_file';
      yield serializers.serialize(
        object.srcFile,
        specifiedType: const FullType(String),
      );
    }
    if (object.src != null) {
      yield r'src';
      yield serializers.serialize(
        object.src,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.preferredNodeId != null) {
      yield r'preferred_node_id';
      yield serializers.serialize(
        object.preferredNodeId,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkflowDownloadPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkflowDownloadPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'dst':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dst = valueDes;
          break;
        case r'src_file':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.srcFile = valueDes;
          break;
        case r'src':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.src.replace(valueDes);
          break;
        case r'preferred_node_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.preferredNodeId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkflowDownloadPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkflowDownloadPostRequestBuilder();
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

