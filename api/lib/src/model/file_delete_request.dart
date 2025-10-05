//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_delete_request.g.dart';

/// FileDeleteRequest
///
/// Properties:
/// * [uris] - List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files.
/// * [unlink] - Whether to keep physical files while recycling file blobs. This option only works if the user group have \"Advanced delete option` enabed.
/// * [skipSoftDelete] - Whether to skip trash bin, directly delete those files. This option only works file file owner or administrators.
@BuiltValue()
abstract class FileDeleteRequest implements Built<FileDeleteRequest, FileDeleteRequestBuilder> {
  /// List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files.
  @BuiltValueField(wireName: r'uris')
  BuiltList<String>? get uris;

  /// Whether to keep physical files while recycling file blobs. This option only works if the user group have \"Advanced delete option` enabed.
  @BuiltValueField(wireName: r'unlink')
  bool? get unlink;

  /// Whether to skip trash bin, directly delete those files. This option only works file file owner or administrators.
  @BuiltValueField(wireName: r'skip_soft_delete')
  bool? get skipSoftDelete;

  FileDeleteRequest._();

  factory FileDeleteRequest([void updates(FileDeleteRequestBuilder b)]) = _$FileDeleteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileDeleteRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileDeleteRequest> get serializer => _$FileDeleteRequestSerializer();
}

class _$FileDeleteRequestSerializer implements PrimitiveSerializer<FileDeleteRequest> {
  @override
  final Iterable<Type> types = const [FileDeleteRequest, _$FileDeleteRequest];

  @override
  final String wireName = r'FileDeleteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileDeleteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uris != null) {
      yield r'uris';
      yield serializers.serialize(
        object.uris,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.unlink != null) {
      yield r'unlink';
      yield serializers.serialize(
        object.unlink,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.skipSoftDelete != null) {
      yield r'skip_soft_delete';
      yield serializers.serialize(
        object.skipSoftDelete,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileDeleteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileDeleteRequestBuilder result,
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
        case r'unlink':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.unlink = valueDes;
          break;
        case r'skip_soft_delete':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.skipSoftDelete = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileDeleteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileDeleteRequestBuilder();
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

