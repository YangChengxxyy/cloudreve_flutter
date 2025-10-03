//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_archive_post_request.g.dart';

/// WorkflowArchivePostRequest
///
/// Properties:
/// * [src] - Source file URIs.
/// * [dst] - URI of destination archive file.
/// * [preferredNodeId] - Select preferred node to handle this task. Only available in pro edition. Option of nodes can be get from [List available nodes](./list-available-nodes-308315715e0).
/// * [password] - Optional paassword for `zip` or `7z` archive files.
/// * [fileMask] - List of files to select. If presented, only files in this list, or contains any of it as prefix will be extracted.
@BuiltValue()
abstract class WorkflowArchivePostRequest implements Built<WorkflowArchivePostRequest, WorkflowArchivePostRequestBuilder> {
  /// Source file URIs.
  @BuiltValueField(wireName: r'src')
  BuiltList<String> get src;

  /// URI of destination archive file.
  @BuiltValueField(wireName: r'dst')
  String get dst;

  /// Select preferred node to handle this task. Only available in pro edition. Option of nodes can be get from [List available nodes](./list-available-nodes-308315715e0).
  @BuiltValueField(wireName: r'preferred_node_id')
  String? get preferredNodeId;

  /// Optional paassword for `zip` or `7z` archive files.
  @BuiltValueField(wireName: r'password')
  String? get password;

  /// List of files to select. If presented, only files in this list, or contains any of it as prefix will be extracted.
  @BuiltValueField(wireName: r'file_mask')
  BuiltList<String>? get fileMask;

  WorkflowArchivePostRequest._();

  factory WorkflowArchivePostRequest([void updates(WorkflowArchivePostRequestBuilder b)]) = _$WorkflowArchivePostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkflowArchivePostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkflowArchivePostRequest> get serializer => _$WorkflowArchivePostRequestSerializer();
}

class _$WorkflowArchivePostRequestSerializer implements PrimitiveSerializer<WorkflowArchivePostRequest> {
  @override
  final Iterable<Type> types = const [WorkflowArchivePostRequest, _$WorkflowArchivePostRequest];

  @override
  final String wireName = r'WorkflowArchivePostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkflowArchivePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'src';
    yield serializers.serialize(
      object.src,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'dst';
    yield serializers.serialize(
      object.dst,
      specifiedType: const FullType(String),
    );
    if (object.preferredNodeId != null) {
      yield r'preferred_node_id';
      yield serializers.serialize(
        object.preferredNodeId,
        specifiedType: const FullType(String),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.fileMask != null) {
      yield r'file_mask';
      yield serializers.serialize(
        object.fileMask,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkflowArchivePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkflowArchivePostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'src':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.src.replace(valueDes);
          break;
        case r'dst':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dst = valueDes;
          break;
        case r'preferred_node_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.preferredNodeId = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.password = valueDes;
          break;
        case r'file_mask':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.fileMask.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkflowArchivePostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkflowArchivePostRequestBuilder();
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

