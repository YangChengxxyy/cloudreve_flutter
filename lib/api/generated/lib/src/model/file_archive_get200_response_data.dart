//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/archived_file.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_archive_get200_response_data.g.dart';

/// Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
///
/// Properties:
/// * [files] 
@BuiltValue()
abstract class FileArchiveGet200ResponseData implements Built<FileArchiveGet200ResponseData, FileArchiveGet200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'files')
  BuiltList<ArchivedFile> get files;

  FileArchiveGet200ResponseData._();

  factory FileArchiveGet200ResponseData([void updates(FileArchiveGet200ResponseDataBuilder b)]) = _$FileArchiveGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileArchiveGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileArchiveGet200ResponseData> get serializer => _$FileArchiveGet200ResponseDataSerializer();
}

class _$FileArchiveGet200ResponseDataSerializer implements PrimitiveSerializer<FileArchiveGet200ResponseData> {
  @override
  final Iterable<Type> types = const [FileArchiveGet200ResponseData, _$FileArchiveGet200ResponseData];

  @override
  final String wireName = r'FileArchiveGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileArchiveGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'files';
    yield serializers.serialize(
      object.files,
      specifiedType: const FullType(BuiltList, [FullType(ArchivedFile)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FileArchiveGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileArchiveGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'files':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(ArchivedFile)]),
          ) as BuiltList<ArchivedFile>;
          result.files.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileArchiveGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileArchiveGet200ResponseDataBuilder();
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

