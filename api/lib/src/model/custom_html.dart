//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'custom_html.g.dart';

/// CustomHTML
///
/// Properties:
/// * [headlessFooter] - Custom HTML to inject at the footer of landing page.
/// * [headlessBottom] - Custom HTML to inject at the bottom of landing page, stil within the white border.
/// * [sidebarBottom] - Custom HTML to inject at the footer of the sidebar navigation.
@BuiltValue()
abstract class CustomHTML implements Built<CustomHTML, CustomHTMLBuilder> {
  /// Custom HTML to inject at the footer of landing page.
  @BuiltValueField(wireName: r'headless_footer')
  String? get headlessFooter;

  /// Custom HTML to inject at the bottom of landing page, stil within the white border.
  @BuiltValueField(wireName: r'headless_bottom')
  String? get headlessBottom;

  /// Custom HTML to inject at the footer of the sidebar navigation.
  @BuiltValueField(wireName: r'sidebar_bottom')
  String? get sidebarBottom;

  CustomHTML._();

  factory CustomHTML([void updates(CustomHTMLBuilder b)]) = _$CustomHTML;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CustomHTMLBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CustomHTML> get serializer => _$CustomHTMLSerializer();
}

class _$CustomHTMLSerializer implements PrimitiveSerializer<CustomHTML> {
  @override
  final Iterable<Type> types = const [CustomHTML, _$CustomHTML];

  @override
  final String wireName = r'CustomHTML';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CustomHTML object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.headlessFooter != null) {
      yield r'headless_footer';
      yield serializers.serialize(
        object.headlessFooter,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.headlessBottom != null) {
      yield r'headless_bottom';
      yield serializers.serialize(
        object.headlessBottom,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.sidebarBottom != null) {
      yield r'sidebar_bottom';
      yield serializers.serialize(
        object.sidebarBottom,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    CustomHTML object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CustomHTMLBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'headless_footer':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.headlessFooter = valueDes;
          break;
        case r'headless_bottom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.headlessBottom = valueDes;
          break;
        case r'sidebar_bottom':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.sidebarBottom = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  CustomHTML deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CustomHTMLBuilder();
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

