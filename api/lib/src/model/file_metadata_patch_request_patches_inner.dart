//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_metadata_patch_request_patches_inner.g.dart';

/// FileMetadataPatchRequestPatchesInner
///
/// Properties:
/// * [key] - Metadata key. For patch operation, only a set of selected key prefixs are allowed: `sys:*`,`dav:*`, `customize:*`, `tag:*`.
/// * [value] - Value of the metadata.
/// * [remove] - If set to `true`, metadata with given key will be removed.
@BuiltValue()
abstract class FileMetadataPatchRequestPatchesInner implements Built<FileMetadataPatchRequestPatchesInner, FileMetadataPatchRequestPatchesInnerBuilder> {
  /// Metadata key. For patch operation, only a set of selected key prefixs are allowed: `sys:*`,`dav:*`, `customize:*`, `tag:*`.
  @BuiltValueField(wireName: r'key')
  String? get key;

  /// Value of the metadata.
  @BuiltValueField(wireName: r'value')
  String? get value;

  /// If set to `true`, metadata with given key will be removed.
  @BuiltValueField(wireName: r'remove')
  bool? get remove;

  FileMetadataPatchRequestPatchesInner._();

  factory FileMetadataPatchRequestPatchesInner([void updates(FileMetadataPatchRequestPatchesInnerBuilder b)]) = _$FileMetadataPatchRequestPatchesInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileMetadataPatchRequestPatchesInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileMetadataPatchRequestPatchesInner> get serializer => _$FileMetadataPatchRequestPatchesInnerSerializer();
}

class _$FileMetadataPatchRequestPatchesInnerSerializer implements PrimitiveSerializer<FileMetadataPatchRequestPatchesInner> {
  @override
  final Iterable<Type> types = const [FileMetadataPatchRequestPatchesInner, _$FileMetadataPatchRequestPatchesInner];

  @override
  final String wireName = r'FileMetadataPatchRequestPatchesInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileMetadataPatchRequestPatchesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.key != null) {
      yield r'key';
      yield serializers.serialize(
        object.key,
        specifiedType: const FullType(String),
      );
    }
    if (object.value != null) {
      yield r'value';
      yield serializers.serialize(
        object.value,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.remove != null) {
      yield r'remove';
      yield serializers.serialize(
        object.remove,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileMetadataPatchRequestPatchesInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileMetadataPatchRequestPatchesInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.key = valueDes;
          break;
        case r'value':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.value = valueDes;
          break;
        case r'remove':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.remove = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileMetadataPatchRequestPatchesInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileMetadataPatchRequestPatchesInnerBuilder();
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

