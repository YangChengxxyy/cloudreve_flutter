//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/permission_setting.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_permission_post_request.g.dart';

/// FilePermissionPostRequest
///
/// Properties:
/// * [uris] - List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files.
/// * [setting] 
@BuiltValue()
abstract class FilePermissionPostRequest implements Built<FilePermissionPostRequest, FilePermissionPostRequestBuilder> {
  /// List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files.
  @BuiltValueField(wireName: r'uris')
  BuiltList<String> get uris;

  @BuiltValueField(wireName: r'setting')
  PermissionSetting get setting;

  FilePermissionPostRequest._();

  factory FilePermissionPostRequest([void updates(FilePermissionPostRequestBuilder b)]) = _$FilePermissionPostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilePermissionPostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilePermissionPostRequest> get serializer => _$FilePermissionPostRequestSerializer();
}

class _$FilePermissionPostRequestSerializer implements PrimitiveSerializer<FilePermissionPostRequest> {
  @override
  final Iterable<Type> types = const [FilePermissionPostRequest, _$FilePermissionPostRequest];

  @override
  final String wireName = r'FilePermissionPostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilePermissionPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'uris';
    yield serializers.serialize(
      object.uris,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
    yield r'setting';
    yield serializers.serialize(
      object.setting,
      specifiedType: const FullType(PermissionSetting),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FilePermissionPostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilePermissionPostRequestBuilder result,
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
        case r'setting':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PermissionSetting),
          ) as PermissionSetting;
          result.setting.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilePermissionPostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilePermissionPostRequestBuilder();
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

