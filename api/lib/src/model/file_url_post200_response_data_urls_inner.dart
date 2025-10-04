//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_url_post200_response_data_urls_inner.g.dart';

/// FileUrlPost200ResponseDataUrlsInner
///
/// Properties:
/// * [url] - URL to get the file, without authorization header required.
/// * [streamSaverDisplayName] - In some cases, browser/client should process the download with preferred download name. This field will be set to the preferred file name.
@BuiltValue()
abstract class FileUrlPost200ResponseDataUrlsInner implements Built<FileUrlPost200ResponseDataUrlsInner, FileUrlPost200ResponseDataUrlsInnerBuilder> {
  /// URL to get the file, without authorization header required.
  @BuiltValueField(wireName: r'url')
  String get url;

  /// In some cases, browser/client should process the download with preferred download name. This field will be set to the preferred file name.
  @BuiltValueField(wireName: r'stream_saver_display_name')
  String? get streamSaverDisplayName;

  FileUrlPost200ResponseDataUrlsInner._();

  factory FileUrlPost200ResponseDataUrlsInner([void updates(FileUrlPost200ResponseDataUrlsInnerBuilder b)]) = _$FileUrlPost200ResponseDataUrlsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileUrlPost200ResponseDataUrlsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileUrlPost200ResponseDataUrlsInner> get serializer => _$FileUrlPost200ResponseDataUrlsInnerSerializer();
}

class _$FileUrlPost200ResponseDataUrlsInnerSerializer implements PrimitiveSerializer<FileUrlPost200ResponseDataUrlsInner> {
  @override
  final Iterable<Type> types = const [FileUrlPost200ResponseDataUrlsInner, _$FileUrlPost200ResponseDataUrlsInner];

  @override
  final String wireName = r'FileUrlPost200ResponseDataUrlsInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileUrlPost200ResponseDataUrlsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
    if (object.streamSaverDisplayName != null) {
      yield r'stream_saver_display_name';
      yield serializers.serialize(
        object.streamSaverDisplayName,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileUrlPost200ResponseDataUrlsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileUrlPost200ResponseDataUrlsInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'stream_saver_display_name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.streamSaverDisplayName = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileUrlPost200ResponseDataUrlsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileUrlPost200ResponseDataUrlsInnerBuilder();
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

