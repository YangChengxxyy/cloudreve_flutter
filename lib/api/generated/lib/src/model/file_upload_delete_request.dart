//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_upload_delete_request.g.dart';

/// FileUploadDeleteRequest
///
/// Properties:
/// * [id] - ID of the upload session.
/// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the target placeholder file, it should have been created during creating upload session.
@BuiltValue()
abstract class FileUploadDeleteRequest implements Built<FileUploadDeleteRequest, FileUploadDeleteRequestBuilder> {
  /// ID of the upload session.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// [URI](https://docs.cloudreve.org/api/file-uri) of the target placeholder file, it should have been created during creating upload session.
  @BuiltValueField(wireName: r'uri')
  String get uri;

  FileUploadDeleteRequest._();

  factory FileUploadDeleteRequest([void updates(FileUploadDeleteRequestBuilder b)]) = _$FileUploadDeleteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileUploadDeleteRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileUploadDeleteRequest> get serializer => _$FileUploadDeleteRequestSerializer();
}

class _$FileUploadDeleteRequestSerializer implements PrimitiveSerializer<FileUploadDeleteRequest> {
  @override
  final Iterable<Type> types = const [FileUploadDeleteRequest, _$FileUploadDeleteRequest];

  @override
  final String wireName = r'FileUploadDeleteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileUploadDeleteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'uri';
    yield serializers.serialize(
      object.uri,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FileUploadDeleteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileUploadDeleteRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uri = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileUploadDeleteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileUploadDeleteRequestBuilder();
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

