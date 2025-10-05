//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'workflow_import_post_request.g.dart';

/// WorkflowImportPostRequest
///
/// Properties:
/// * [src] - Path of the folder to be imported in external storage provider.
/// * [dst] - Path of the folder to store imported files in user's `my` filesystem.
/// * [extractMediaMeta] - Whether to extract media metadata right after a file is imported.
/// * [userId] - ID of the user that files are imported to.
/// * [recursive] - Whether to recursively import child folders.
/// * [policyId] - ID of the storage policy which have to be imported files.
@BuiltValue()
abstract class WorkflowImportPostRequest implements Built<WorkflowImportPostRequest, WorkflowImportPostRequestBuilder> {
  /// Path of the folder to be imported in external storage provider.
  @BuiltValueField(wireName: r'src')
  String? get src;

  /// Path of the folder to store imported files in user's `my` filesystem.
  @BuiltValueField(wireName: r'dst')
  String? get dst;

  /// Whether to extract media metadata right after a file is imported.
  @BuiltValueField(wireName: r'extract_media_meta')
  bool? get extractMediaMeta;

  /// ID of the user that files are imported to.
  @BuiltValueField(wireName: r'user_id')
  String? get userId;

  /// Whether to recursively import child folders.
  @BuiltValueField(wireName: r'recursive')
  bool? get recursive;

  /// ID of the storage policy which have to be imported files.
  @BuiltValueField(wireName: r'policy_id')
  int? get policyId;

  WorkflowImportPostRequest._();

  factory WorkflowImportPostRequest([void updates(WorkflowImportPostRequestBuilder b)]) = _$WorkflowImportPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(WorkflowImportPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<WorkflowImportPostRequest> get serializer => _$WorkflowImportPostRequestSerializer();
}

class _$WorkflowImportPostRequestSerializer implements PrimitiveSerializer<WorkflowImportPostRequest> {
  @override
  final Iterable<Type> types = const [WorkflowImportPostRequest, _$WorkflowImportPostRequest];

  @override
  final String wireName = r'WorkflowImportPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    WorkflowImportPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.src != null) {
      yield r'src';
      yield serializers.serialize(
        object.src,
        specifiedType: const FullType(String),
      );
    }
    if (object.dst != null) {
      yield r'dst';
      yield serializers.serialize(
        object.dst,
        specifiedType: const FullType(String),
      );
    }
    if (object.extractMediaMeta != null) {
      yield r'extract_media_meta';
      yield serializers.serialize(
        object.extractMediaMeta,
        specifiedType: const FullType(bool),
      );
    }
    if (object.userId != null) {
      yield r'user_id';
      yield serializers.serialize(
        object.userId,
        specifiedType: const FullType(String),
      );
    }
    if (object.recursive != null) {
      yield r'recursive';
      yield serializers.serialize(
        object.recursive,
        specifiedType: const FullType(bool),
      );
    }
    if (object.policyId != null) {
      yield r'policy_id';
      yield serializers.serialize(
        object.policyId,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    WorkflowImportPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required WorkflowImportPostRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'src':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.src = valueDes;
          break;
        case r'dst':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dst = valueDes;
          break;
        case r'extract_media_meta':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.extractMediaMeta = valueDes;
          break;
        case r'user_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.userId = valueDes;
          break;
        case r'recursive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.recursive = valueDes;
          break;
        case r'policy_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.policyId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  WorkflowImportPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = WorkflowImportPostRequestBuilder();
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

