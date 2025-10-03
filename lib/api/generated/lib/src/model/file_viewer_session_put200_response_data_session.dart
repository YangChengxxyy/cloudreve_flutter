//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_viewer_session_put200_response_data_session.g.dart';

/// FileViewerSessionPut200ResponseDataSession
///
/// Properties:
/// * [id] - ID of the viewer session.
/// * [accessToken] - [AccessToken](https://learn.microsoft.com/en-us/microsoft-365/cloud-storage-partner-program/rest/concepts#access-token) that can be used to get/update the file via WOPI protocol.
/// * [expires] - Unix timestamp when the session is expired.
@BuiltValue()
abstract class FileViewerSessionPut200ResponseDataSession implements Built<FileViewerSessionPut200ResponseDataSession, FileViewerSessionPut200ResponseDataSessionBuilder> {
  /// ID of the viewer session.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// [AccessToken](https://learn.microsoft.com/en-us/microsoft-365/cloud-storage-partner-program/rest/concepts#access-token) that can be used to get/update the file via WOPI protocol.
  @BuiltValueField(wireName: r'access_token')
  String get accessToken;

  /// Unix timestamp when the session is expired.
  @BuiltValueField(wireName: r'expires')
  int get expires;

  FileViewerSessionPut200ResponseDataSession._();

  factory FileViewerSessionPut200ResponseDataSession([void updates(FileViewerSessionPut200ResponseDataSessionBuilder b)]) = _$FileViewerSessionPut200ResponseDataSession;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileViewerSessionPut200ResponseDataSessionBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileViewerSessionPut200ResponseDataSession> get serializer => _$FileViewerSessionPut200ResponseDataSessionSerializer();
}

class _$FileViewerSessionPut200ResponseDataSessionSerializer implements PrimitiveSerializer<FileViewerSessionPut200ResponseDataSession> {
  @override
  final Iterable<Type> types = const [FileViewerSessionPut200ResponseDataSession, _$FileViewerSessionPut200ResponseDataSession];

  @override
  final String wireName = r'FileViewerSessionPut200ResponseDataSession';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileViewerSessionPut200ResponseDataSession object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'access_token';
    yield serializers.serialize(
      object.accessToken,
      specifiedType: const FullType(String),
    );
    yield r'expires';
    yield serializers.serialize(
      object.expires,
      specifiedType: const FullType(int),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FileViewerSessionPut200ResponseDataSession object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileViewerSessionPut200ResponseDataSessionBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'access_token':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.accessToken = valueDes;
          break;
        case r'expires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
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
  FileViewerSessionPut200ResponseDataSession deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileViewerSessionPut200ResponseDataSessionBuilder();
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

