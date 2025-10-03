//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_permission_delete_request.g.dart';

/// FilePermissionDeleteRequest
///
/// Properties:
/// * [uris] - List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files.
@BuiltValue()
abstract class FilePermissionDeleteRequest implements Built<FilePermissionDeleteRequest, FilePermissionDeleteRequestBuilder> {
  /// List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files.
  @BuiltValueField(wireName: r'uris')
  BuiltList<String> get uris;

  FilePermissionDeleteRequest._();

  factory FilePermissionDeleteRequest([void updates(FilePermissionDeleteRequestBuilder b)]) = _$FilePermissionDeleteRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FilePermissionDeleteRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FilePermissionDeleteRequest> get serializer => _$FilePermissionDeleteRequestSerializer();
}

class _$FilePermissionDeleteRequestSerializer implements PrimitiveSerializer<FilePermissionDeleteRequest> {
  @override
  final Iterable<Type> types = const [FilePermissionDeleteRequest, _$FilePermissionDeleteRequest];

  @override
  final String wireName = r'FilePermissionDeleteRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FilePermissionDeleteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'uris';
    yield serializers.serialize(
      object.uris,
      specifiedType: const FullType(BuiltList, [FullType(String)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FilePermissionDeleteRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FilePermissionDeleteRequestBuilder result,
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FilePermissionDeleteRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FilePermissionDeleteRequestBuilder();
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

