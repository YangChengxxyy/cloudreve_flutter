//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/file_metadata_patch_request_patches_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_metadata_patch_request.g.dart';

/// FileMetadataPatchRequest
///
/// Properties:
/// * [uris] - List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files.
/// * [patches] - List of metadata patches.
@BuiltValue()
abstract class FileMetadataPatchRequest implements Built<FileMetadataPatchRequest, FileMetadataPatchRequestBuilder> {
  /// List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files.
  @BuiltValueField(wireName: r'uris')
  BuiltList<String> get uris;

  /// List of metadata patches.
  @BuiltValueField(wireName: r'patches')
  BuiltList<FileMetadataPatchRequestPatchesInner> get patches;

  FileMetadataPatchRequest._();

  factory FileMetadataPatchRequest([void updates(FileMetadataPatchRequestBuilder b)]) = _$FileMetadataPatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileMetadataPatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileMetadataPatchRequest> get serializer => _$FileMetadataPatchRequestSerializer();
}

class _$FileMetadataPatchRequestSerializer implements PrimitiveSerializer<FileMetadataPatchRequest> {
  @override
  final Iterable<Type> types = const [FileMetadataPatchRequest, _$FileMetadataPatchRequest];

  @override
  final String wireName = r'FileMetadataPatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileMetadataPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'uris';
    yield serializers.serialize(
      object.uris,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'patches';
    yield serializers.serialize(
      object.patches,
      specifiedType: const FullType(BuiltList, [FullType(FileMetadataPatchRequestPatchesInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FileMetadataPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileMetadataPatchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'uris':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(String)]),
          ) as BuiltList<String>;
          result.uris.replace(valueDes);
          break;
        case r'patches':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FileMetadataPatchRequestPatchesInner)]),
          ) as BuiltList<FileMetadataPatchRequestPatchesInner>;
          result.patches.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileMetadataPatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileMetadataPatchRequestBuilder();
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

