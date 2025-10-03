//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'list_view_column_props.g.dart';

/// ListViewColumnProps
///
/// Properties:
/// * [metadataKey] - Metadata key for metadata column (`type` equals `3`).
@BuiltValue()
abstract class ListViewColumnProps implements Built<ListViewColumnProps, ListViewColumnPropsBuilder> {
  /// Metadata key for metadata column (`type` equals `3`).
  @BuiltValueField(wireName: r'metadata_key')
  String? get metadataKey;

  ListViewColumnProps._();

  factory ListViewColumnProps([void updates(ListViewColumnPropsBuilder b)]) = _$ListViewColumnProps;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ListViewColumnPropsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ListViewColumnProps> get serializer => _$ListViewColumnPropsSerializer();
}

class _$ListViewColumnPropsSerializer implements PrimitiveSerializer<ListViewColumnProps> {
  @override
  final Iterable<Type> types = const [ListViewColumnProps, _$ListViewColumnProps];

  @override
  final String wireName = r'ListViewColumnProps';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ListViewColumnProps object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.metadataKey != null) {
      yield r'metadata_key';
      yield serializers.serialize(
        object.metadataKey,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ListViewColumnProps object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ListViewColumnPropsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'metadata_key':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.metadataKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ListViewColumnProps deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ListViewColumnPropsBuilder();
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

