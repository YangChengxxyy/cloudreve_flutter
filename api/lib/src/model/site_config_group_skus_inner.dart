//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/group_sku.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'site_config_group_skus_inner.g.dart';

/// SiteConfigGroupSkusInner
///
/// Properties:
/// * [id] - UUID of the membership SKU.
/// * [name] - Name of the membership SKU.
/// * [time] - Valid duration of the membership SKU.
/// * [price] - Price in minimum currency unit.
/// * [chip] - Chip text.
/// * [points] - Price in points. Empty value indicate paying with points is disabled.
/// * [des] - Description texts.
@BuiltValue()
abstract class SiteConfigGroupSkusInner
    implements
        Built<SiteConfigGroupSkusInner, SiteConfigGroupSkusInnerBuilder> {
  /// Any Of [GroupSKU]
  AnyOf get anyOf;

  SiteConfigGroupSkusInner._();

  factory SiteConfigGroupSkusInner(
          [void updates(SiteConfigGroupSkusInnerBuilder b)]) =
      _$SiteConfigGroupSkusInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SiteConfigGroupSkusInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SiteConfigGroupSkusInner> get serializer =>
      _$SiteConfigGroupSkusInnerSerializer();
}

class _$SiteConfigGroupSkusInnerSerializer
    implements PrimitiveSerializer<SiteConfigGroupSkusInner> {
  @override
  final Iterable<Type> types = const [
    SiteConfigGroupSkusInner,
    _$SiteConfigGroupSkusInner
  ];

  @override
  final String wireName = r'SiteConfigGroupSkusInner';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, SiteConfigGroupSkusInner object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    SiteConfigGroupSkusInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf,
        specifiedType: FullType(
            AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  SiteConfigGroupSkusInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SiteConfigGroupSkusInnerBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [
      FullType.nullable(GroupSKU),
    ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc,
        specifiedType: targetType) as AnyOf;
    return result.build();
  }
}
