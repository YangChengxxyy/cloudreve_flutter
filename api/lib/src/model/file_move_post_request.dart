//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_move_post_request.g.dart';

/// FileMovePostRequest
///
/// Properties:
/// * [uris] - List of [URI](https://docs.cloudreve.org/api/file-uri) of the files to be moved or copied.
/// * [dst] - [URI](https://docs.cloudreve.org/api/file-uri) of thr destination folder.
/// * [copy] - Whether this is a copy operation. If set to `false` or `null`, move operation is performed.
@BuiltValue()
abstract class FileMovePostRequest implements Built<FileMovePostRequest, FileMovePostRequestBuilder> {
  /// List of [URI](https://docs.cloudreve.org/api/file-uri) of the files to be moved or copied.
  @BuiltValueField(wireName: r'uris')
  BuiltList<String>? get uris;

  /// [URI](https://docs.cloudreve.org/api/file-uri) of thr destination folder.
  @BuiltValueField(wireName: r'dst')
  String? get dst;

  /// Whether this is a copy operation. If set to `false` or `null`, move operation is performed.
  @BuiltValueField(wireName: r'copy')
  bool? get copy;

  FileMovePostRequest._();

  factory FileMovePostRequest([void updates(FileMovePostRequestBuilder b)]) = _$FileMovePostRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileMovePostRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileMovePostRequest> get serializer => _$FileMovePostRequestSerializer();
}

class _$FileMovePostRequestSerializer implements PrimitiveSerializer<FileMovePostRequest> {
  @override
  final Iterable<Type> types = const [FileMovePostRequest, _$FileMovePostRequest];

  @override
  final String wireName = r'FileMovePostRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileMovePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uris != null) {
      yield r'uris';
      yield serializers.serialize(
        object.uris,
        specifiedType: const FullType(BuiltList, [FullType(String)]),
      );
    }
    if (object.dst != null) {
      yield r'dst';
      yield serializers.serialize(
        object.dst,
        specifiedType: const FullType(String),
      );
    }
    if (object.copy != null) {
      yield r'copy';
      yield serializers.serialize(
        object.copy,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileMovePostRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileMovePostRequestBuilder result,
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
        case r'dst':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.dst = valueDes;
          break;
        case r'copy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.copy = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileMovePostRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileMovePostRequestBuilder();
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

