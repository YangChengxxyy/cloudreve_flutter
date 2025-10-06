//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/file_url_post200_response_data_urls_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_url_post200_response_data.g.dart';

/// Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
///
/// Properties:
/// * [urls] - List of file URL.
/// * [expires] - Unix timestamp of the expiration date for this uplaod session. Client must finish the uploading before this time.
@BuiltValue()
abstract class FileUrlPost200ResponseData implements Built<FileUrlPost200ResponseData, FileUrlPost200ResponseDataBuilder> {
  /// List of file URL.
  @BuiltValueField(wireName: r'urls')
  BuiltList<FileUrlPost200ResponseDataUrlsInner>? get urls;

  /// Unix timestamp of the expiration date for this uplaod session. Client must finish the uploading before this time.
  @BuiltValueField(wireName: r'expires')
  int? get expires;

  FileUrlPost200ResponseData._();

  factory FileUrlPost200ResponseData([void updates(FileUrlPost200ResponseDataBuilder b)]) = _$FileUrlPost200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileUrlPost200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileUrlPost200ResponseData> get serializer => _$FileUrlPost200ResponseDataSerializer();
}

class _$FileUrlPost200ResponseDataSerializer implements PrimitiveSerializer<FileUrlPost200ResponseData> {
  @override
  final Iterable<Type> types = const [FileUrlPost200ResponseData, _$FileUrlPost200ResponseData];

  @override
  final String wireName = r'FileUrlPost200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileUrlPost200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.urls != null) {
      yield r'urls';
      yield serializers.serialize(
        object.urls,
        specifiedType: const FullType(BuiltList, [FullType(FileUrlPost200ResponseDataUrlsInner)]),
      );
    }
    if (object.expires != null) {
      yield r'expires';
      yield serializers.serialize(
        object.expires,
        specifiedType: const FullType(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileUrlPost200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileUrlPost200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'urls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FileUrlPost200ResponseDataUrlsInner)]),
          ) as BuiltList<FileUrlPost200ResponseDataUrlsInner>;
          result.urls.replace(valueDes);
          break;
        case r'expires':
          int? parsed;
          if (value is int) {
            parsed = value;
          } else if (value is num) {
            parsed = value.toInt();
          } else if (value is String) {
            parsed = int.tryParse(value);
            if (parsed == null) {
              final parsedDate = DateTime.tryParse(value);
              if (parsedDate != null) {
                parsed = parsedDate.millisecondsSinceEpoch ~/ 1000;
              }
            }
          }
          if (parsed != null) {
            result.expires = parsed;
          }
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileUrlPost200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileUrlPost200ResponseDataBuilder();
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
