//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pin_file_service.g.dart';

/// PinFileService
///
/// Properties:
/// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the target folder or search view.
/// * [name] - Option display name of the sidebar item. Default name will be used if this value is null.
@BuiltValue()
abstract class PinFileService implements Built<PinFileService, PinFileServiceBuilder> {
  /// [URI](https://docs.cloudreve.org/api/file-uri) of the target folder or search view.
  @BuiltValueField(wireName: r'uri')
  String? get uri;

  /// Option display name of the sidebar item. Default name will be used if this value is null.
  @BuiltValueField(wireName: r'name')
  String? get name;

  PinFileService._();

  factory PinFileService([void updates(PinFileServiceBuilder b)]) = _$PinFileService;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PinFileServiceBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PinFileService> get serializer => _$PinFileServiceSerializer();
}

class _$PinFileServiceSerializer implements PrimitiveSerializer<PinFileService> {
  @override
  final Iterable<Type> types = const [PinFileService, _$PinFileService];

  @override
  final String wireName = r'PinFileService';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PinFileService object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.uri != null) {
      yield r'uri';
      yield serializers.serialize(
        object.uri,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PinFileService object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PinFileServiceBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.name = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PinFileService deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PinFileServiceBuilder();
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

