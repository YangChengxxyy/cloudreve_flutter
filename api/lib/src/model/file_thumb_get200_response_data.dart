//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_thumb_get200_response_data.g.dart';

/// Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
///
/// Properties:
/// * [url] - URL of the thumbnail image. Possibly be obfuscated if `obfuscated` is `true`. Please refer to the top of this document for how to decode it.
/// * [obfuscated] - Whether the `url` is obfuscated.
/// * [expires] - Expire date of the thumbnail image.
@BuiltValue()
abstract class FileThumbGet200ResponseData implements Built<FileThumbGet200ResponseData, FileThumbGet200ResponseDataBuilder> {
  /// URL of the thumbnail image. Possibly be obfuscated if `obfuscated` is `true`. Please refer to the top of this document for how to decode it.
  @BuiltValueField(wireName: r'url')
  String? get url;

  /// Whether the `url` is obfuscated.
  @BuiltValueField(wireName: r'obfuscated')
  bool? get obfuscated;

  /// Expire date of the thumbnail image.
  @BuiltValueField(wireName: r'expires')
  DateTime? get expires;

  FileThumbGet200ResponseData._();

  factory FileThumbGet200ResponseData([void updates(FileThumbGet200ResponseDataBuilder b)]) = _$FileThumbGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileThumbGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileThumbGet200ResponseData> get serializer => _$FileThumbGet200ResponseDataSerializer();
}

class _$FileThumbGet200ResponseDataSerializer implements PrimitiveSerializer<FileThumbGet200ResponseData> {
  @override
  final Iterable<Type> types = const [FileThumbGet200ResponseData, _$FileThumbGet200ResponseData];

  @override
  final String wireName = r'FileThumbGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileThumbGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.obfuscated != null) {
      yield r'obfuscated';
      yield serializers.serialize(
        object.obfuscated,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.expires != null) {
      yield r'expires';
      yield serializers.serialize(
        object.expires,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileThumbGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileThumbGet200ResponseDataBuilder result,
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
        case r'obfuscated':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.obfuscated = valueDes;
          break;
        case r'expires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.expires = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileThumbGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileThumbGet200ResponseDataBuilder();
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

