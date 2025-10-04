//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_source_put200_response_data_inner.g.dart';

/// FileSourcePut200ResponseDataInner
///
/// Properties:
/// * [link] - URL of the direct link.
/// * [fileUrl] - [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
@BuiltValue()
abstract class FileSourcePut200ResponseDataInner implements Built<FileSourcePut200ResponseDataInner, FileSourcePut200ResponseDataInnerBuilder> {
  /// URL of the direct link.
  @BuiltValueField(wireName: r'link')
  String get link;

  /// [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
  @BuiltValueField(wireName: r'file_url')
  String get fileUrl;

  FileSourcePut200ResponseDataInner._();

  factory FileSourcePut200ResponseDataInner([void updates(FileSourcePut200ResponseDataInnerBuilder b)]) = _$FileSourcePut200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileSourcePut200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileSourcePut200ResponseDataInner> get serializer => _$FileSourcePut200ResponseDataInnerSerializer();
}

class _$FileSourcePut200ResponseDataInnerSerializer implements PrimitiveSerializer<FileSourcePut200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [FileSourcePut200ResponseDataInner, _$FileSourcePut200ResponseDataInner];

  @override
  final String wireName = r'FileSourcePut200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileSourcePut200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'link';
    yield serializers.serialize(
      object.link,
      specifiedType: const FullType(String),
    );
    yield r'file_url';
    yield serializers.serialize(
      object.fileUrl,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FileSourcePut200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileSourcePut200ResponseDataInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'link':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.link = valueDes;
          break;
        case r'file_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.fileUrl = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileSourcePut200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileSourcePut200ResponseDataInnerBuilder();
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

