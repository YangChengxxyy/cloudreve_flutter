//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_restore_post_request.g.dart';

/// FileRestorePostRequest
///
/// Properties:
/// * [uris] - List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files. Filesystem must be `trash`.
@BuiltValue()
abstract class FileRestorePostRequest implements Built<FileRestorePostRequest, FileRestorePostRequestBuilder> {
  /// List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files. Filesystem must be `trash`.
  @BuiltValueField(wireName: r'uris')
  BuiltList<String>? get uris;

  FileRestorePostRequest._();

  factory FileRestorePostRequest([void updates(FileRestorePostRequestBuilder b)]) = _$FileRestorePostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileRestorePostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileRestorePostRequest> get serializer => _$FileRestorePostRequestSerializer();
}

class _$FileRestorePostRequestSerializer implements PrimitiveSerializer<FileRestorePostRequest> {
  @override
  final Iterable<Type> types = const [FileRestorePostRequest, _$FileRestorePostRequest];

  @override
  final String wireName = r'FileRestorePostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileRestorePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uris != null) {
      yield r'uris';
      yield serializers.serialize(
        object.uris,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileRestorePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileRestorePostRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileRestorePostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileRestorePostRequestBuilder();
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

