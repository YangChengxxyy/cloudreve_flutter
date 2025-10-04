//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/explorer_view.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_view_patch_request.g.dart';

/// FileViewPatchRequest
///
/// Properties:
/// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the target folder.
/// * [view] 
@BuiltValue()
abstract class FileViewPatchRequest implements Built<FileViewPatchRequest, FileViewPatchRequestBuilder> {
  /// [URI](https://docs.cloudreve.org/api/file-uri) of the target folder.
  @BuiltValueField(wireName: r'uri')
  String get uri;

  @BuiltValueField(wireName: r'view')
  ExplorerView? get view;

  FileViewPatchRequest._();

  factory FileViewPatchRequest([void updates(FileViewPatchRequestBuilder b)]) = _$FileViewPatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileViewPatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileViewPatchRequest> get serializer => _$FileViewPatchRequestSerializer();
}

class _$FileViewPatchRequestSerializer implements PrimitiveSerializer<FileViewPatchRequest> {
  @override
  final Iterable<Type> types = const [FileViewPatchRequest, _$FileViewPatchRequest];

  @override
  final String wireName = r'FileViewPatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileViewPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'uri';
    yield serializers.serialize(
      object.uri,
      specifiedType: const FullType(String),
    );
    if (object.view != null) {
      yield r'view';
      yield serializers.serialize(
        object.view,
        specifiedType: const FullType.nullable(ExplorerView),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileViewPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileViewPatchRequestBuilder result,
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
        case r'view':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ExplorerView),
          ) as ExplorerView?;
          if (valueDes == null) continue;
          result.view.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileViewPatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileViewPatchRequestBuilder();
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

