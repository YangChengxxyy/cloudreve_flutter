//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_url_post_request.g.dart';

/// FileUrlPostRequest
///
/// Properties:
/// * [uris] - List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files.
/// * [download] - Whether the desired URL is for downloading files. For supported storage policy, browser will download file instead of previewing it directly if this field is set to  `true`.
/// * [redirect] - Only works if only 1 items presented in `uris`.  If set to `true`, the HTTP response will use 302 status code to redirect to target URL instead of returning result in JSON response.
/// * [entity] - Only works if only 1 items presented in `uris` and `archive` is `false`. Specify preferred ID of the file blob. By default, latest version blob will be selected.
/// * [usePrimarySiteUrl] - By default, the host domain of file URL will try to accommodate the actual `Host` that the client site requesting the API (If the `Host` is presented in primary/secondary site URL setting in dashboard). If you wish to force using primary site URL, please set this to `true`.
/// * [skipError] - Whether to skip errors and return partial successful file URLs. If set to `false` or omited, the whole request will fail if errors occurs for any items in `uris`.
/// * [archive] - Whether to use server-side batch download. If set to `true`, only one URl will be returned for multiple target files. This URL will trigger server-side archving for target files, resulting in one `.zip` file containing all target files.
/// * [noCache] - Whether to disable blob URL cache.
@BuiltValue()
abstract class FileUrlPostRequest implements Built<FileUrlPostRequest, FileUrlPostRequestBuilder> {
  /// List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files.
  @BuiltValueField(wireName: r'uris')
  BuiltList<String> get uris;

  /// Whether the desired URL is for downloading files. For supported storage policy, browser will download file instead of previewing it directly if this field is set to  `true`.
  @BuiltValueField(wireName: r'download')
  bool? get download;

  /// Only works if only 1 items presented in `uris`.  If set to `true`, the HTTP response will use 302 status code to redirect to target URL instead of returning result in JSON response.
  @BuiltValueField(wireName: r'redirect')
  bool? get redirect;

  /// Only works if only 1 items presented in `uris` and `archive` is `false`. Specify preferred ID of the file blob. By default, latest version blob will be selected.
  @BuiltValueField(wireName: r'entity')
  String? get entity;

  /// By default, the host domain of file URL will try to accommodate the actual `Host` that the client site requesting the API (If the `Host` is presented in primary/secondary site URL setting in dashboard). If you wish to force using primary site URL, please set this to `true`.
  @BuiltValueField(wireName: r'use_primary_site_url')
  bool? get usePrimarySiteUrl;

  /// Whether to skip errors and return partial successful file URLs. If set to `false` or omited, the whole request will fail if errors occurs for any items in `uris`.
  @BuiltValueField(wireName: r'skip_error')
  bool? get skipError;

  /// Whether to use server-side batch download. If set to `true`, only one URl will be returned for multiple target files. This URL will trigger server-side archving for target files, resulting in one `.zip` file containing all target files.
  @BuiltValueField(wireName: r'archive')
  bool? get archive;

  /// Whether to disable blob URL cache.
  @BuiltValueField(wireName: r'no_cache')
  bool? get noCache;

  FileUrlPostRequest._();

  factory FileUrlPostRequest([void updates(FileUrlPostRequestBuilder b)]) = _$FileUrlPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileUrlPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileUrlPostRequest> get serializer => _$FileUrlPostRequestSerializer();
}

class _$FileUrlPostRequestSerializer implements PrimitiveSerializer<FileUrlPostRequest> {
  @override
  final Iterable<Type> types = const [FileUrlPostRequest, _$FileUrlPostRequest];

  @override
  final String wireName = r'FileUrlPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileUrlPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'uris';
    yield serializers.serialize(
      object.uris,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    if (object.download != null) {
      yield r'download';
      yield serializers.serialize(
        object.download,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.redirect != null) {
      yield r'redirect';
      yield serializers.serialize(
        object.redirect,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.entity != null) {
      yield r'entity';
      yield serializers.serialize(
        object.entity,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.usePrimarySiteUrl != null) {
      yield r'use_primary_site_url';
      yield serializers.serialize(
        object.usePrimarySiteUrl,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.skipError != null) {
      yield r'skip_error';
      yield serializers.serialize(
        object.skipError,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.archive != null) {
      yield r'archive';
      yield serializers.serialize(
        object.archive,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.noCache != null) {
      yield r'no_cache';
      yield serializers.serialize(
        object.noCache,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileUrlPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileUrlPostRequestBuilder result,
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
        case r'download':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.download = valueDes;
          break;
        case r'redirect':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.redirect = valueDes;
          break;
        case r'entity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.entity = valueDes;
          break;
        case r'use_primary_site_url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.usePrimarySiteUrl = valueDes;
          break;
        case r'skip_error':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.skipError = valueDes;
          break;
        case r'archive':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.archive = valueDes;
          break;
        case r'no_cache':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.noCache = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileUrlPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileUrlPostRequestBuilder();
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

