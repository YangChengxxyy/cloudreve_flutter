//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_create_post_request.g.dart';

/// FileCreatePostRequest
///
/// Properties:
/// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the file to be created.
/// * [type] - Type of the new file.
/// * [metadata] - Key-value map of metadata for the new file.
/// * [errOnConflict] - Define the behavior when there's conflict (object already existed) for given `uri`:  * If `true`, an error will be returned; * If `false`, no mutation is performed, the existing file in `uri` will be returned.
@BuiltValue()
abstract class FileCreatePostRequest
    implements Built<FileCreatePostRequest, FileCreatePostRequestBuilder> {
  /// [URI](https://docs.cloudreve.org/api/file-uri) of the file to be created.
  @BuiltValueField(wireName: r'uri')
  String? get uri;

  /// Type of the new file.
  @BuiltValueField(wireName: r'type')
  FileCreatePostRequestTypeEnum? get type;
  // enum typeEnum {  file,  folder,  };

  /// Key-value map of metadata for the new file.
  @BuiltValueField(wireName: r'metadata')
  BuiltMap<String, String>? get metadata;

  /// Define the behavior when there's conflict (object already existed) for given `uri`:  * If `true`, an error will be returned; * If `false`, no mutation is performed, the existing file in `uri` will be returned.
  @BuiltValueField(wireName: r'err_on_conflict')
  bool? get errOnConflict;

  FileCreatePostRequest._();

  factory FileCreatePostRequest(
      [void updates(FileCreatePostRequestBuilder b)]) = _$FileCreatePostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileCreatePostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileCreatePostRequest> get serializer =>
      _$FileCreatePostRequestSerializer();
}

class _$FileCreatePostRequestSerializer
    implements PrimitiveSerializer<FileCreatePostRequest> {
  @override
  final Iterable<Type> types = const [
    FileCreatePostRequest,
    _$FileCreatePostRequest
  ];

  @override
  final String wireName = r'FileCreatePostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileCreatePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uri != null) {
      yield r'uri';
      yield serializers.serialize(
        object.uri,
        specifiedType: const FullType(String),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(FileCreatePostRequestTypeEnum),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(
            BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.errOnConflict != null) {
      yield r'err_on_conflict';
      yield serializers.serialize(
        object.errOnConflict,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileCreatePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileCreatePostRequestBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FileCreatePostRequestTypeEnum),
          ) as FileCreatePostRequestTypeEnum;
          result.type = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(
                BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.metadata.replace(valueDes);
          break;
        case r'err_on_conflict':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.errOnConflict = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileCreatePostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileCreatePostRequestBuilder();
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

class FileCreatePostRequestTypeEnum extends EnumClass {
  /// Type of the new file.
  @BuiltValueEnumConst(wireName: r'file')
  static const FileCreatePostRequestTypeEnum file =
      _$fileCreatePostRequestTypeEnum_file;

  /// Type of the new file.
  @BuiltValueEnumConst(wireName: r'folder')
  static const FileCreatePostRequestTypeEnum folder =
      _$fileCreatePostRequestTypeEnum_folder;

  static Serializer<FileCreatePostRequestTypeEnum> get serializer =>
      _$fileCreatePostRequestTypeEnumSerializer;

  const FileCreatePostRequestTypeEnum._(String name) : super(name);

  static BuiltSet<FileCreatePostRequestTypeEnum> get values =>
      _$fileCreatePostRequestTypeEnumValues;
  static FileCreatePostRequestTypeEnum valueOf(String name) =>
      _$fileCreatePostRequestTypeEnumValueOf(name);
}
