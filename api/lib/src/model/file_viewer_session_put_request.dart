//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_viewer_session_put_request.g.dart';

/// FileViewerSessionPutRequest
///
/// Properties:
/// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
/// * [version] - Desired version ID to open. Empty value indicating the current version.
/// * [viewerId] - ID of the file apps. List of available file apps can be get from `file_viewers` in [Get site settings](./get-site-settings-289489676e0) under `explorer` section.
/// * [preferredAction] - Preferred action for this session.
/// * [parentUri] - [URI](https://docs.cloudreve.org/api/file-uri) of the parent folder where the file is located. Usualy it can be calculated from `uri` field. But for single-file symbolic links, `uri` can be a different folder or filesystem from where the symbolic link is located.
@BuiltValue()
abstract class FileViewerSessionPutRequest implements Built<FileViewerSessionPutRequest, FileViewerSessionPutRequestBuilder> {
  /// [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
  @BuiltValueField(wireName: r'uri')
  String? get uri;

  /// Desired version ID to open. Empty value indicating the current version.
  @BuiltValueField(wireName: r'version')
  String? get version;

  /// ID of the file apps. List of available file apps can be get from `file_viewers` in [Get site settings](./get-site-settings-289489676e0) under `explorer` section.
  @BuiltValueField(wireName: r'viewer_id')
  String? get viewerId;

  /// Preferred action for this session.
  @BuiltValueField(wireName: r'preferred_action')
  FileViewerSessionPutRequestPreferredActionEnum? get preferredAction;
  // enum preferredActionEnum {  edit,  view,  };

  /// [URI](https://docs.cloudreve.org/api/file-uri) of the parent folder where the file is located. Usualy it can be calculated from `uri` field. But for single-file symbolic links, `uri` can be a different folder or filesystem from where the symbolic link is located.
  @BuiltValueField(wireName: r'parent_uri')
  String? get parentUri;

  FileViewerSessionPutRequest._();

  factory FileViewerSessionPutRequest([void updates(FileViewerSessionPutRequestBuilder b)]) = _$FileViewerSessionPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileViewerSessionPutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileViewerSessionPutRequest> get serializer => _$FileViewerSessionPutRequestSerializer();
}

class _$FileViewerSessionPutRequestSerializer implements PrimitiveSerializer<FileViewerSessionPutRequest> {
  @override
  final Iterable<Type> types = const [FileViewerSessionPutRequest, _$FileViewerSessionPutRequest];

  @override
  final String wireName = r'FileViewerSessionPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileViewerSessionPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uri != null) {
      yield r'uri';
      yield serializers.serialize(
        object.uri,
        specifiedType: const FullType(String),
      );
    }
    if (object.version != null) {
      yield r'version';
      yield serializers.serialize(
        object.version,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.viewerId != null) {
      yield r'viewer_id';
      yield serializers.serialize(
        object.viewerId,
        specifiedType: const FullType(String),
      );
    }
    if (object.preferredAction != null) {
      yield r'preferred_action';
      yield serializers.serialize(
        object.preferredAction,
        specifiedType: const FullType(FileViewerSessionPutRequestPreferredActionEnum),
      );
    }
    if (object.parentUri != null) {
      yield r'parent_uri';
      yield serializers.serialize(
        object.parentUri,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileViewerSessionPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileViewerSessionPutRequestBuilder result,
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
        case r'version':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.version = valueDes;
          break;
        case r'viewer_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.viewerId = valueDes;
          break;
        case r'preferred_action':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FileViewerSessionPutRequestPreferredActionEnum),
          ) as FileViewerSessionPutRequestPreferredActionEnum;
          result.preferredAction = valueDes;
          break;
        case r'parent_uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.parentUri = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileViewerSessionPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileViewerSessionPutRequestBuilder();
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

class FileViewerSessionPutRequestPreferredActionEnum extends EnumClass {

  /// Preferred action for this session.
  @BuiltValueEnumConst(wireName: r'edit')
  static const FileViewerSessionPutRequestPreferredActionEnum edit = _$fileViewerSessionPutRequestPreferredActionEnum_edit;
  /// Preferred action for this session.
  @BuiltValueEnumConst(wireName: r'view')
  static const FileViewerSessionPutRequestPreferredActionEnum view = _$fileViewerSessionPutRequestPreferredActionEnum_view;

  static Serializer<FileViewerSessionPutRequestPreferredActionEnum> get serializer => _$fileViewerSessionPutRequestPreferredActionEnumSerializer;

  const FileViewerSessionPutRequestPreferredActionEnum._(String name): super(name);

  static BuiltSet<FileViewerSessionPutRequestPreferredActionEnum> get values => _$fileViewerSessionPutRequestPreferredActionEnumValues;
  static FileViewerSessionPutRequestPreferredActionEnum valueOf(String name) => _$fileViewerSessionPutRequestPreferredActionEnumValueOf(name);
}

