//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_source_put_request.g.dart';

/// FileSourcePutRequest
///
/// Properties:
/// * [uris] - List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files.
@BuiltValue()
abstract class FileSourcePutRequest implements Built<FileSourcePutRequest, FileSourcePutRequestBuilder> {
  /// List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files.
  @BuiltValueField(wireName: r'uris')
  BuiltList<String>? get uris;

  FileSourcePutRequest._();

  factory FileSourcePutRequest([void updates(FileSourcePutRequestBuilder b)]) = _$FileSourcePutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileSourcePutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileSourcePutRequest> get serializer => _$FileSourcePutRequestSerializer();
}

class _$FileSourcePutRequestSerializer implements PrimitiveSerializer<FileSourcePutRequest> {
  @override
  final Iterable<Type> types = const [FileSourcePutRequest, _$FileSourcePutRequest];

  @override
  final String wireName = r'FileSourcePutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileSourcePutRequest object, {
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
    FileSourcePutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileSourcePutRequestBuilder result,
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
  FileSourcePutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileSourcePutRequestBuilder();
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

