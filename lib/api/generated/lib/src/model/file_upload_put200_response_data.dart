//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/storage_policy.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_upload_put200_response_data.g.dart';

/// Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
///
/// Properties:
/// * [sessionId] - ID of the upload session. Might be used in following upload requests.
/// * [uploadId] - ID of the multipart upload request. Only used by some storage policy. 
/// * [chunkSize] - Size of a chunk in multipart uplaod. `0` means multipart upload is disabled.
/// * [expires] - Unix timestamp of the expiration date for this uplaod session. Client must finish the uploading before this time.
/// * [uploadUrls] - List of URLs to upload each chunk. Some storage policy use only one URL for all chunks, in this case only one URL is included in the list.
/// * [credential] - Some storage policy (qiniu, upyun, remote) requires addition credential to upload.
/// * [completeURL] - URL to finish multipart upload. Used by cos, oss, s3 and obs.
/// * [storagePolicy] 
/// * [mimeType] - Desired value of content-type in uplaod requests. Only used by qiniu and upyun.
/// * [uploadPolicy] - Upyun upload policy.
@BuiltValue()
abstract class FileUploadPut200ResponseData implements Built<FileUploadPut200ResponseData, FileUploadPut200ResponseDataBuilder> {
  /// ID of the upload session. Might be used in following upload requests.
  @BuiltValueField(wireName: r'session_id')
  String get sessionId;

  /// ID of the multipart upload request. Only used by some storage policy. 
  @BuiltValueField(wireName: r'upload_id')
  String? get uploadId;

  /// Size of a chunk in multipart uplaod. `0` means multipart upload is disabled.
  @BuiltValueField(wireName: r'chunk_size')
  int get chunkSize;

  /// Unix timestamp of the expiration date for this uplaod session. Client must finish the uploading before this time.
  @BuiltValueField(wireName: r'expires')
  int get expires;

  /// List of URLs to upload each chunk. Some storage policy use only one URL for all chunks, in this case only one URL is included in the list.
  @BuiltValueField(wireName: r'upload_urls')
  BuiltList<String>? get uploadUrls;

  /// Some storage policy (qiniu, upyun, remote) requires addition credential to upload.
  @BuiltValueField(wireName: r'credential')
  String? get credential;

  /// URL to finish multipart upload. Used by cos, oss, s3 and obs.
  @BuiltValueField(wireName: r'completeURL')
  String? get completeURL;

  @BuiltValueField(wireName: r'storage_policy')
  StoragePolicy get storagePolicy;

  /// Desired value of content-type in uplaod requests. Only used by qiniu and upyun.
  @BuiltValueField(wireName: r'mime_type')
  String? get mimeType;

  /// Upyun upload policy.
  @BuiltValueField(wireName: r'upload_policy')
  String? get uploadPolicy;

  FileUploadPut200ResponseData._();

  factory FileUploadPut200ResponseData([void updates(FileUploadPut200ResponseDataBuilder b)]) = _$FileUploadPut200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileUploadPut200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileUploadPut200ResponseData> get serializer => _$FileUploadPut200ResponseDataSerializer();
}

class _$FileUploadPut200ResponseDataSerializer implements PrimitiveSerializer<FileUploadPut200ResponseData> {
  @override
  final Iterable<Type> types = const [FileUploadPut200ResponseData, _$FileUploadPut200ResponseData];

  @override
  final String wireName = r'FileUploadPut200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileUploadPut200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'session_id';
    yield serializers.serialize(
      object.sessionId,
      specifiedType: const FullType(String),
    );
    if (object.uploadId != null) {
      yield r'upload_id';
      yield serializers.serialize(
        object.uploadId,
        specifiedType: const FullType(String),
      );
    }
    yield r'chunk_size';
    yield serializers.serialize(
      object.chunkSize,
      specifiedType: const FullType(int),
    );
    yield r'expires';
    yield serializers.serialize(
      object.expires,
      specifiedType: const FullType(int),
    );
    if (object.uploadUrls != null) {
      yield r'upload_urls';
      yield serializers.serialize(
        object.uploadUrls,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.credential != null) {
      yield r'credential';
      yield serializers.serialize(
        object.credential,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.completeURL != null) {
      yield r'completeURL';
      yield serializers.serialize(
        object.completeURL,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'storage_policy';
    yield serializers.serialize(
      object.storagePolicy,
      specifiedType: const FullType(StoragePolicy),
    );
    if (object.mimeType != null) {
      yield r'mime_type';
      yield serializers.serialize(
        object.mimeType,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.uploadPolicy != null) {
      yield r'upload_policy';
      yield serializers.serialize(
        object.uploadPolicy,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileUploadPut200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileUploadPut200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'session_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sessionId = valueDes;
          break;
        case r'upload_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.uploadId = valueDes;
          break;
        case r'chunk_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.chunkSize = valueDes;
          break;
        case r'expires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.expires = valueDes;
          break;
        case r'upload_urls':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.uploadUrls.replace(valueDes);
          break;
        case r'credential':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.credential = valueDes;
          break;
        case r'completeURL':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.completeURL = valueDes;
          break;
        case r'storage_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StoragePolicy),
          ) as StoragePolicy;
          result.storagePolicy.replace(valueDes);
          break;
        case r'mime_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.mimeType = valueDes;
          break;
        case r'upload_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.uploadPolicy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileUploadPut200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileUploadPut200ResponseDataBuilder();
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

