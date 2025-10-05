//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_version_current_post_request.g.dart';

/// FileVersionCurrentPostRequest
///
/// Properties:
/// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
/// * [version] - ID of the version to set as \"current version\". The version blob must be linked to current file. List of available versions can be retrieved via [Get file info](./get-file-info-306769225e0)
@BuiltValue()
abstract class FileVersionCurrentPostRequest implements Built<FileVersionCurrentPostRequest, FileVersionCurrentPostRequestBuilder> {
  /// [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
  @BuiltValueField(wireName: r'uri')
  String? get uri;

  /// ID of the version to set as \"current version\". The version blob must be linked to current file. List of available versions can be retrieved via [Get file info](./get-file-info-306769225e0)
  @BuiltValueField(wireName: r'version')
  String? get version;

  FileVersionCurrentPostRequest._();

  factory FileVersionCurrentPostRequest([void updates(FileVersionCurrentPostRequestBuilder b)]) = _$FileVersionCurrentPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileVersionCurrentPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileVersionCurrentPostRequest> get serializer => _$FileVersionCurrentPostRequestSerializer();
}

class _$FileVersionCurrentPostRequestSerializer implements PrimitiveSerializer<FileVersionCurrentPostRequest> {
  @override
  final Iterable<Type> types = const [FileVersionCurrentPostRequest, _$FileVersionCurrentPostRequest];

  @override
  final String wireName = r'FileVersionCurrentPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileVersionCurrentPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uri != null) {
      yield r'uri';
      yield serializers.serialize(
        object.uri,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileVersionCurrentPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileVersionCurrentPostRequestBuilder result,
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
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.version = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileVersionCurrentPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileVersionCurrentPostRequestBuilder();
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

