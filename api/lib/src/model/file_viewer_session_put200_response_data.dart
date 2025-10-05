//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/file_viewer_session_put200_response_data_session.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_viewer_session_put200_response_data.g.dart';

/// Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
///
/// Properties:
/// * [session] 
/// * [wopiSrc] - [WOPISrc](https://learn.microsoft.com/en-us/microsoft-365/cloud-storage-partner-program/rest/concepts#wopisrc) of the target WOPI viewer.
@BuiltValue()
abstract class FileViewerSessionPut200ResponseData implements Built<FileViewerSessionPut200ResponseData, FileViewerSessionPut200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'session')
  FileViewerSessionPut200ResponseDataSession? get session;

  /// [WOPISrc](https://learn.microsoft.com/en-us/microsoft-365/cloud-storage-partner-program/rest/concepts#wopisrc) of the target WOPI viewer.
  @BuiltValueField(wireName: r'wopi_src')
  String? get wopiSrc;

  FileViewerSessionPut200ResponseData._();

  factory FileViewerSessionPut200ResponseData([void updates(FileViewerSessionPut200ResponseDataBuilder b)]) = _$FileViewerSessionPut200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(FileViewerSessionPut200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<FileViewerSessionPut200ResponseData> get serializer => _$FileViewerSessionPut200ResponseDataSerializer();
}

class _$FileViewerSessionPut200ResponseDataSerializer implements PrimitiveSerializer<FileViewerSessionPut200ResponseData> {
  @override
  final Iterable<Type> types = const [FileViewerSessionPut200ResponseData, _$FileViewerSessionPut200ResponseData];

  @override
  final String wireName = r'FileViewerSessionPut200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    FileViewerSessionPut200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.session != null) {
      yield r'session';
      yield serializers.serialize(
        object.session,
        specifiedType: const FullType(FileViewerSessionPut200ResponseDataSession),
      );
    }
    if (object.wopiSrc != null) {
      yield r'wopi_src';
      yield serializers.serialize(
        object.wopiSrc,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    FileViewerSessionPut200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required FileViewerSessionPut200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'session':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(FileViewerSessionPut200ResponseDataSession),
          ) as FileViewerSessionPut200ResponseDataSession;
          result.session.replace(valueDes);
          break;
        case r'wopi_src':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.wopiSrc = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  FileViewerSessionPut200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = FileViewerSessionPut200ResponseDataBuilder();
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

