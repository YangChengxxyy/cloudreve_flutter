//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_policy_patch_request.g.dart';

/// FilePolicyPatchRequest
///
/// Properties:
/// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the folder.
/// * [policyId] - ID of the storage policy. List of available storage policies can be get from [List available storage policies ](./list-available-storage-policies-308312707e0)
@BuiltValue()
abstract class FilePolicyPatchRequest implements Built<FilePolicyPatchRequest, FilePolicyPatchRequestBuilder> {
  /// [URI](https://docs.cloudreve.org/api/file-uri) of the folder.
  @BuiltValueField(wireName: r'uri')
  String get uri;

  /// ID of the storage policy. List of available storage policies can be get from [List available storage policies ](./list-available-storage-policies-308312707e0)
  @BuiltValueField(wireName: r'policy_id')
  String get policyId;

  FilePolicyPatchRequest._();

  factory FilePolicyPatchRequest([void updates(FilePolicyPatchRequestBuilder b)]) = _$FilePolicyPatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilePolicyPatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilePolicyPatchRequest> get serializer => _$FilePolicyPatchRequestSerializer();
}

class _$FilePolicyPatchRequestSerializer implements PrimitiveSerializer<FilePolicyPatchRequest> {
  @override
  final Iterable<Type> types = const [FilePolicyPatchRequest, _$FilePolicyPatchRequest];

  @override
  final String wireName = r'FilePolicyPatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilePolicyPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'uri';
    yield serializers.serialize(
      object.uri,
      specifiedType: const FullType(String),
    );
    yield r'policy_id';
    yield serializers.serialize(
      object.policyId,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FilePolicyPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilePolicyPatchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uri = valueDes;
          break;
        case r'policy_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  FilePolicyPatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilePolicyPatchRequestBuilder();
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

