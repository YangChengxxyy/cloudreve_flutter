//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_nav_item.g.dart';

/// CustomNavItem
///
/// Properties:
/// * [icon] - Iconify icon name.
/// * [name] - Display name.
/// * [url] - URL to reidrect to after user clicked this item.
@BuiltValue()
abstract class CustomNavItem implements Built<CustomNavItem, CustomNavItemBuilder> {
  /// Iconify icon name.
  @BuiltValueField(wireName: r'icon')
  String get icon;

  /// Display name.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// URL to reidrect to after user clicked this item.
  @BuiltValueField(wireName: r'url')
  String get url;

  CustomNavItem._();

  factory CustomNavItem([void updates(CustomNavItemBuilder b)]) = _$CustomNavItem;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomNavItemBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomNavItem> get serializer => _$CustomNavItemSerializer();
}

class _$CustomNavItemSerializer implements PrimitiveSerializer<CustomNavItem> {
  @override
  final Iterable<Type> types = const [CustomNavItem, _$CustomNavItem];

  @override
  final String wireName = r'CustomNavItem';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomNavItem object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'icon';
    yield serializers.serialize(
      object.icon,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'url';
    yield serializers.serialize(
      object.url,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomNavItem object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomNavItemBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'icon':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.icon = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomNavItem deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomNavItemBuilder();
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

