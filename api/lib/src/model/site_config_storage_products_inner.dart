//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/storage_product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'site_config_storage_products_inner.g.dart';

/// SiteConfigStorageProductsInner
///
/// Properties:
/// * [id] - UUID of the storage SKU.
/// * [name] - Display name of the storage SKU.
/// * [size] - Contained storage in bytes.
/// * [time] - Valid duration in seconds.
/// * [price] - Price in minimum currency unit.
/// * [chip] - Chip text.
/// * [points] - Price in points. Empty value indicate paying with points is disabled.
@BuiltValue()
abstract class SiteConfigStorageProductsInner
    implements
        Built<SiteConfigStorageProductsInner,
            SiteConfigStorageProductsInnerBuilder> {
  /// Any Of [StorageProduct]
  AnyOf get anyOf;

  SiteConfigStorageProductsInner._();

  factory SiteConfigStorageProductsInner(
          [void updates(SiteConfigStorageProductsInnerBuilder b)]) =
      _$SiteConfigStorageProductsInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SiteConfigStorageProductsInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SiteConfigStorageProductsInner> get serializer =>
      _$SiteConfigStorageProductsInnerSerializer();
}

class _$SiteConfigStorageProductsInnerSerializer
    implements PrimitiveSerializer<SiteConfigStorageProductsInner> {
  @override
  final Iterable<Type> types = const [
    SiteConfigStorageProductsInner,
    _$SiteConfigStorageProductsInner
  ];

  @override
  final String wireName = r'SiteConfigStorageProductsInner';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, SiteConfigStorageProductsInner object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    SiteConfigStorageProductsInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf,
        specifiedType: FullType(
            AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  SiteConfigStorageProductsInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SiteConfigStorageProductsInnerBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [
      FullType.nullable(StorageProduct),
    ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc,
        specifiedType: targetType) as AnyOf;
    return result.build();
  }
}
