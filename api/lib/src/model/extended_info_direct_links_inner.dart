//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extended_info_direct_links_inner.g.dart';

/// ExtendedInfoDirectLinksInner
///
/// Properties:
/// * [id] - ID of the direct link.
/// * [url] - URL of the direct link.
/// * [downloaded] - Count of link views.
/// * [createdAt] - Datetime when the link is created.
@BuiltValue()
abstract class ExtendedInfoDirectLinksInner implements Built<ExtendedInfoDirectLinksInner, ExtendedInfoDirectLinksInnerBuilder> {
  /// ID of the direct link.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// URL of the direct link.
  @BuiltValueField(wireName: r'url')
  String? get url;

  /// Count of link views.
  @BuiltValueField(wireName: r'downloaded')
  num? get downloaded;

  /// Datetime when the link is created.
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  ExtendedInfoDirectLinksInner._();

  factory ExtendedInfoDirectLinksInner([void updates(ExtendedInfoDirectLinksInnerBuilder b)]) = _$ExtendedInfoDirectLinksInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtendedInfoDirectLinksInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtendedInfoDirectLinksInner> get serializer => _$ExtendedInfoDirectLinksInnerSerializer();
}

class _$ExtendedInfoDirectLinksInnerSerializer implements PrimitiveSerializer<ExtendedInfoDirectLinksInner> {
  @override
  final Iterable<Type> types = const [ExtendedInfoDirectLinksInner, _$ExtendedInfoDirectLinksInner];

  @override
  final String wireName = r'ExtendedInfoDirectLinksInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtendedInfoDirectLinksInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.downloaded != null) {
      yield r'downloaded';
      yield serializers.serialize(
        object.downloaded,
        specifiedType: const FullType(num),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExtendedInfoDirectLinksInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExtendedInfoDirectLinksInnerBuilder result,
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
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'downloaded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.downloaded = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExtendedInfoDirectLinksInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtendedInfoDirectLinksInnerBuilder();
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

