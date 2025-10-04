//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/file_viewer_viewers_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_viewer.g.dart';

/// FileViewer
///
/// Properties:
/// * [viewers] 
@BuiltValue()
abstract class FileViewer implements Built<FileViewer, FileViewerBuilder> {
  @BuiltValueField(wireName: r'viewers')
  BuiltList<FileViewerViewersInner> get viewers;

  FileViewer._();

  factory FileViewer([void updates(FileViewerBuilder b)]) = _$FileViewer;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileViewerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileViewer> get serializer => _$FileViewerSerializer();
}

class _$FileViewerSerializer implements PrimitiveSerializer<FileViewer> {
  @override
  final Iterable<Type> types = const [FileViewer, _$FileViewer];

  @override
  final String wireName = r'FileViewer';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileViewer object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'viewers';
    yield serializers.serialize(
      object.viewers,
      specifiedType: const FullType(BuiltList, [FullType(FileViewerViewersInner)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    FileViewer object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileViewerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'viewers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(FileViewerViewersInner)]),
          ) as BuiltList<FileViewerViewersInner>;
          result.viewers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileViewer deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileViewerBuilder();
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

