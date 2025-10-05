//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_upload_put_request.g.dart';

/// FileUploadPutRequest
///
/// Properties:
/// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
/// * [size] - Size of the file.
/// * [lastModified] - Optional Unix milliseconds timestamp of when the file is last modified.
/// * [mimeType] - Optional mime type of the file. If not set, will try to guess from file extension name.
/// * [policyId] - ID of the storage policy to use.
/// * [metadata] - Optional key-value of file metadata.
/// * [entityType] - Optional blob type.  By default (omit this field), request will fail if file name conflict with exsting file. If set to `version`, exsiting file will be overwritten. If set to `live_photo`, the file specified in `uri` must be an existing file.
@BuiltValue()
abstract class FileUploadPutRequest implements Built<FileUploadPutRequest, FileUploadPutRequestBuilder> {
  /// [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
  @BuiltValueField(wireName: r'uri')
  String? get uri;

  /// Size of the file.
  @BuiltValueField(wireName: r'size')
  int? get size;

  /// Optional Unix milliseconds timestamp of when the file is last modified.
  @BuiltValueField(wireName: r'last_modified')
  int? get lastModified;

  /// Optional mime type of the file. If not set, will try to guess from file extension name.
  @BuiltValueField(wireName: r'mime_type')
  String? get mimeType;

  /// ID of the storage policy to use.
  @BuiltValueField(wireName: r'policy_id')
  String? get policyId;

  /// Optional key-value of file metadata.
  @BuiltValueField(wireName: r'metadata')
  BuiltMap<String, String>? get metadata;

  /// Optional blob type.  By default (omit this field), request will fail if file name conflict with exsting file. If set to `version`, exsiting file will be overwritten. If set to `live_photo`, the file specified in `uri` must be an existing file.
  @BuiltValueField(wireName: r'entity_type')
  FileUploadPutRequestEntityTypeEnum? get entityType;
  // enum entityTypeEnum {  live_photo,  version,  };

  FileUploadPutRequest._();

  factory FileUploadPutRequest([void updates(FileUploadPutRequestBuilder b)]) = _$FileUploadPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileUploadPutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileUploadPutRequest> get serializer => _$FileUploadPutRequestSerializer();
}

class _$FileUploadPutRequestSerializer implements PrimitiveSerializer<FileUploadPutRequest> {
  @override
  final Iterable<Type> types = const [FileUploadPutRequest, _$FileUploadPutRequest];

  @override
  final String wireName = r'FileUploadPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileUploadPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uri != null) {
      yield r'uri';
      yield serializers.serialize(
        object.uri,
        specifiedType: const FullType(String),
      );
    }
    if (object.size != null) {
      yield r'size';
      yield serializers.serialize(
        object.size,
        specifiedType: const FullType(int),
      );
    }
    if (object.lastModified != null) {
      yield r'last_modified';
      yield serializers.serialize(
        object.lastModified,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.mimeType != null) {
      yield r'mime_type';
      yield serializers.serialize(
        object.mimeType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.policyId != null) {
      yield r'policy_id';
      yield serializers.serialize(
        object.policyId,
        specifiedType: const FullType(String),
      );
    }
    if (object.metadata != null) {
      yield r'metadata';
      yield serializers.serialize(
        object.metadata,
        specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(String)]),
      );
    }
    if (object.entityType != null) {
      yield r'entity_type';
      yield serializers.serialize(
        object.entityType,
        specifiedType: const FullType.nullable(FileUploadPutRequestEntityTypeEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileUploadPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileUploadPutRequestBuilder result,
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
        case r'size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.size = valueDes;
          break;
        case r'last_modified':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.lastModified = valueDes;
          break;
        case r'mime_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mimeType = valueDes;
          break;
        case r'policy_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.policyId = valueDes;
          break;
        case r'metadata':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltMap, [FullType(String), FullType(String)]),
          ) as BuiltMap<String, String>?;
          if (valueDes == null) continue;
          result.metadata.replace(valueDes);
          break;
        case r'entity_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(FileUploadPutRequestEntityTypeEnum),
          ) as FileUploadPutRequestEntityTypeEnum?;
          if (valueDes == null) continue;
          result.entityType = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileUploadPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileUploadPutRequestBuilder();
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

class FileUploadPutRequestEntityTypeEnum extends EnumClass {

  /// Optional blob type.  By default (omit this field), request will fail if file name conflict with exsting file. If set to `version`, exsiting file will be overwritten. If set to `live_photo`, the file specified in `uri` must be an existing file.
  @BuiltValueEnumConst(wireName: r'live_photo')
  static const FileUploadPutRequestEntityTypeEnum livePhoto = _$fileUploadPutRequestEntityTypeEnum_livePhoto;
  /// Optional blob type.  By default (omit this field), request will fail if file name conflict with exsting file. If set to `version`, exsiting file will be overwritten. If set to `live_photo`, the file specified in `uri` must be an existing file.
  @BuiltValueEnumConst(wireName: r'version')
  static const FileUploadPutRequestEntityTypeEnum version = _$fileUploadPutRequestEntityTypeEnum_version;

  static Serializer<FileUploadPutRequestEntityTypeEnum> get serializer => _$fileUploadPutRequestEntityTypeEnumSerializer;

  const FileUploadPutRequestEntityTypeEnum._(String name): super(name);

  static BuiltSet<FileUploadPutRequestEntityTypeEnum> get values => _$fileUploadPutRequestEntityTypeEnumValues;
  static FileUploadPutRequestEntityTypeEnum valueOf(String name) => _$fileUploadPutRequestEntityTypeEnumValueOf(name);
}

