//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/vas_payment_put_request_product.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vas_payment_put_request.g.dart';

/// VasPaymentPutRequest
///
/// Properties:
/// * [product] 
/// * [quantity] - Quantity of the product. For points product, this is the count of purchasing points.
/// * [providerId] - ID of the payment provider. Empty value means paying using points.  List of available payment providers can be get from `payment` in the response of [Get site settings](./get-site-settings-289489676e0) under `vas` section.
/// * [email] - Email of the payment owner to send receipt. Only required when `Authorization` header is missing.
/// * [language] - Language code of the receipt email. Only appliable when `Authorization` header is missing.
@BuiltValue()
abstract class VasPaymentPutRequest implements Built<VasPaymentPutRequest, VasPaymentPutRequestBuilder> {
  @BuiltValueField(wireName: r'product')
  VasPaymentPutRequestProduct? get product;

  /// Quantity of the product. For points product, this is the count of purchasing points.
  @BuiltValueField(wireName: r'quantity')
  int? get quantity;

  /// ID of the payment provider. Empty value means paying using points.  List of available payment providers can be get from `payment` in the response of [Get site settings](./get-site-settings-289489676e0) under `vas` section.
  @BuiltValueField(wireName: r'provider_id')
  String? get providerId;

  /// Email of the payment owner to send receipt. Only required when `Authorization` header is missing.
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Language code of the receipt email. Only appliable when `Authorization` header is missing.
  @BuiltValueField(wireName: r'language')
  String? get language;

  VasPaymentPutRequest._();

  factory VasPaymentPutRequest([void updates(VasPaymentPutRequestBuilder b)]) = _$VasPaymentPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VasPaymentPutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VasPaymentPutRequest> get serializer => _$VasPaymentPutRequestSerializer();
}

class _$VasPaymentPutRequestSerializer implements PrimitiveSerializer<VasPaymentPutRequest> {
  @override
  final Iterable<Type> types = const [VasPaymentPutRequest, _$VasPaymentPutRequest];

  @override
  final String wireName = r'VasPaymentPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VasPaymentPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.product != null) {
      yield r'product';
      yield serializers.serialize(
        object.product,
        specifiedType: const FullType(VasPaymentPutRequestProduct),
      );
    }
    if (object.quantity != null) {
      yield r'quantity';
      yield serializers.serialize(
        object.quantity,
        specifiedType: const FullType(int),
      );
    }
    if (object.providerId != null) {
      yield r'provider_id';
      yield serializers.serialize(
        object.providerId,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType(String),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VasPaymentPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VasPaymentPutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'product':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VasPaymentPutRequestProduct),
          ) as VasPaymentPutRequestProduct;
          result.product.replace(valueDes);
          break;
        case r'quantity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.quantity = valueDes;
          break;
        case r'provider_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.providerId = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.email = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VasPaymentPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VasPaymentPutRequestBuilder();
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

