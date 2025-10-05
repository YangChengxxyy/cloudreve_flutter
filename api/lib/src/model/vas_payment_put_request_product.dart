//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vas_payment_put_request_product.g.dart';

/// Target product.
///
/// Properties:
/// * [type] - Type of the product.
/// * [shareLinkId] - ID of the paid share link. Only required if `type` is `3`.
/// * [skuId] - SKU ID for user group or storage packs. Only required if `type` is `2` or `3`.
@BuiltValue()
abstract class VasPaymentPutRequestProduct implements Built<VasPaymentPutRequestProduct, VasPaymentPutRequestProductBuilder> {
  /// Type of the product.
  @BuiltValueField(wireName: r'type')
  VasPaymentPutRequestProductTypeEnum? get type;
  // enum typeEnum {  1,  2,  3,  4,  };

  /// ID of the paid share link. Only required if `type` is `3`.
  @BuiltValueField(wireName: r'share_link_id')
  String? get shareLinkId;

  /// SKU ID for user group or storage packs. Only required if `type` is `2` or `3`.
  @BuiltValueField(wireName: r'sku_id')
  String? get skuId;

  VasPaymentPutRequestProduct._();

  factory VasPaymentPutRequestProduct([void updates(VasPaymentPutRequestProductBuilder b)]) = _$VasPaymentPutRequestProduct;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VasPaymentPutRequestProductBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VasPaymentPutRequestProduct> get serializer => _$VasPaymentPutRequestProductSerializer();
}

class _$VasPaymentPutRequestProductSerializer implements PrimitiveSerializer<VasPaymentPutRequestProduct> {
  @override
  final Iterable<Type> types = const [VasPaymentPutRequestProduct, _$VasPaymentPutRequestProduct];

  @override
  final String wireName = r'VasPaymentPutRequestProduct';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VasPaymentPutRequestProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(VasPaymentPutRequestProductTypeEnum),
      );
    }
    if (object.shareLinkId != null) {
      yield r'share_link_id';
      yield serializers.serialize(
        object.shareLinkId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.skuId != null) {
      yield r'sku_id';
      yield serializers.serialize(
        object.skuId,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VasPaymentPutRequestProduct object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VasPaymentPutRequestProductBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VasPaymentPutRequestProductTypeEnum),
          ) as VasPaymentPutRequestProductTypeEnum;
          result.type = valueDes;
          break;
        case r'share_link_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.shareLinkId = valueDes;
          break;
        case r'sku_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.skuId = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VasPaymentPutRequestProduct deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VasPaymentPutRequestProductBuilder();
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

class VasPaymentPutRequestProductTypeEnum extends EnumClass {

  /// Type of the product.
  @BuiltValueEnumConst(wireNumber: 1)
  static const VasPaymentPutRequestProductTypeEnum number1 = _$vasPaymentPutRequestProductTypeEnum_number1;
  /// Type of the product.
  @BuiltValueEnumConst(wireNumber: 2)
  static const VasPaymentPutRequestProductTypeEnum number2 = _$vasPaymentPutRequestProductTypeEnum_number2;
  /// Type of the product.
  @BuiltValueEnumConst(wireNumber: 3)
  static const VasPaymentPutRequestProductTypeEnum number3 = _$vasPaymentPutRequestProductTypeEnum_number3;
  /// Type of the product.
  @BuiltValueEnumConst(wireNumber: 4)
  static const VasPaymentPutRequestProductTypeEnum number4 = _$vasPaymentPutRequestProductTypeEnum_number4;

  static Serializer<VasPaymentPutRequestProductTypeEnum> get serializer => _$vasPaymentPutRequestProductTypeEnumSerializer;

  const VasPaymentPutRequestProductTypeEnum._(String name): super(name);

  static BuiltSet<VasPaymentPutRequestProductTypeEnum> get values => _$vasPaymentPutRequestProductTypeEnumValues;
  static VasPaymentPutRequestProductTypeEnum valueOf(String name) => _$vasPaymentPutRequestProductTypeEnumValueOf(name);
}

