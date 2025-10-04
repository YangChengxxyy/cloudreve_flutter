//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment.g.dart';

/// Payment
///
/// Properties:
/// * [id] - ID of the payment.
/// * [tradeNo] - Trade number of the payment.
/// * [name] - Title of the payment.
/// * [status] - Status of the payment.
/// * [qyt] - Quantity of desired product.
/// * [priceUnit] - Price for one product, in the minimum currency unit, or in points.
/// * [priceId] - ISO [currency code](https://docs.cloudreve.org/en/payment/official#currency-symbol). Empty value means paying by points.
/// * [priceMark] - [Currency symbol](https://docs.cloudreve.org/en/payment/official#currency-symbol). Empty value means paying by points.
/// * [priceOneUnit] - Minimum [currency unit](https://docs.cloudreve.org/en/payment/official#currency-unit). Empty value means paying by points.
/// * [createdAt] - Datetime when the payment is created.
/// * [updatedAt] - Datetime when the payment is updated.
/// * [productType] - Type of the product.
/// * [ticket] - The access ticket for paid share. Only presented when an anonymous user purshaed a paid share link. It can be used in `X-Cr-Purchase-Ticket` to proof purchasing and access file related APIs.
@BuiltValue()
abstract class Payment implements Built<Payment, PaymentBuilder> {
  /// ID of the payment.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Trade number of the payment.
  @BuiltValueField(wireName: r'trade_no')
  String get tradeNo;

  /// Title of the payment.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Status of the payment.
  @BuiltValueField(wireName: r'status')
  PaymentStatusEnum get status;
  // enum statusEnum {  created,  paid,  fulfilled,  fulfill_failed,  canceled,  };

  /// Quantity of desired product.
  @BuiltValueField(wireName: r'qyt')
  int get qyt;

  /// Price for one product, in the minimum currency unit, or in points.
  @BuiltValueField(wireName: r'price_unit')
  int? get priceUnit;

  /// ISO [currency code](https://docs.cloudreve.org/en/payment/official#currency-symbol). Empty value means paying by points.
  @BuiltValueField(wireName: r'price_id')
  String? get priceId;

  /// [Currency symbol](https://docs.cloudreve.org/en/payment/official#currency-symbol). Empty value means paying by points.
  @BuiltValueField(wireName: r'price_mark')
  String? get priceMark;

  /// Minimum [currency unit](https://docs.cloudreve.org/en/payment/official#currency-unit). Empty value means paying by points.
  @BuiltValueField(wireName: r'price_one_unit')
  int get priceOneUnit;

  /// Datetime when the payment is created.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// Datetime when the payment is updated.
  @BuiltValueField(wireName: r'updated_at')
  DateTime get updatedAt;

  /// Type of the product.
  @BuiltValueField(wireName: r'product_type')
  PaymentProductTypeEnum get productType;
  // enum productTypeEnum {  1,  2,  3,  4,  };

  /// The access ticket for paid share. Only presented when an anonymous user purshaed a paid share link. It can be used in `X-Cr-Purchase-Ticket` to proof purchasing and access file related APIs.
  @BuiltValueField(wireName: r'ticket')
  String? get ticket;

  Payment._();

  factory Payment([void updates(PaymentBuilder b)]) = _$Payment;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<Payment> get serializer => _$PaymentSerializer();
}

class _$PaymentSerializer implements PrimitiveSerializer<Payment> {
  @override
  final Iterable<Type> types = const [Payment, _$Payment];

  @override
  final String wireName = r'Payment';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Payment object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    yield r'trade_no';
    yield serializers.serialize(
      object.tradeNo,
      specifiedType: const FullType(String),
    );
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'status';
    yield serializers.serialize(
      object.status,
      specifiedType: const FullType(PaymentStatusEnum),
    );
    yield r'qyt';
    yield serializers.serialize(
      object.qyt,
      specifiedType: const FullType(int),
    );
    if (object.priceUnit != null) {
      yield r'price_unit';
      yield serializers.serialize(
        object.priceUnit,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.priceId != null) {
      yield r'price_id';
      yield serializers.serialize(
        object.priceId,
        specifiedType: const FullType(String),
      );
    }
    if (object.priceMark != null) {
      yield r'price_mark';
      yield serializers.serialize(
        object.priceMark,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'price_one_unit';
    yield serializers.serialize(
      object.priceOneUnit,
      specifiedType: const FullType(int),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'updated_at';
    yield serializers.serialize(
      object.updatedAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'product_type';
    yield serializers.serialize(
      object.productType,
      specifiedType: const FullType(PaymentProductTypeEnum),
    );
    if (object.ticket != null) {
      yield r'ticket';
      yield serializers.serialize(
        object.ticket,
        specifiedType: const FullType.nullable(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Payment object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentBuilder result,
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
        case r'trade_no':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.tradeNo = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentStatusEnum),
          ) as PaymentStatusEnum;
          result.status = valueDes;
          break;
        case r'qyt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.qyt = valueDes;
          break;
        case r'price_unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.priceUnit = valueDes;
          break;
        case r'price_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.priceId = valueDes;
          break;
        case r'price_mark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.priceMark = valueDes;
          break;
        case r'price_one_unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.priceOneUnit = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'updated_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.updatedAt = valueDes;
          break;
        case r'product_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentProductTypeEnum),
          ) as PaymentProductTypeEnum;
          result.productType = valueDes;
          break;
        case r'ticket':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.ticket = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Payment deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentBuilder();
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

class PaymentStatusEnum extends EnumClass {

  /// Status of the payment.
  @BuiltValueEnumConst(wireName: r'created')
  static const PaymentStatusEnum created = _$paymentStatusEnum_created;
  /// Status of the payment.
  @BuiltValueEnumConst(wireName: r'paid')
  static const PaymentStatusEnum paid = _$paymentStatusEnum_paid;
  /// Status of the payment.
  @BuiltValueEnumConst(wireName: r'fulfilled')
  static const PaymentStatusEnum fulfilled = _$paymentStatusEnum_fulfilled;
  /// Status of the payment.
  @BuiltValueEnumConst(wireName: r'fulfill_failed')
  static const PaymentStatusEnum fulfillFailed = _$paymentStatusEnum_fulfillFailed;
  /// Status of the payment.
  @BuiltValueEnumConst(wireName: r'canceled')
  static const PaymentStatusEnum canceled = _$paymentStatusEnum_canceled;

  static Serializer<PaymentStatusEnum> get serializer => _$paymentStatusEnumSerializer;

  const PaymentStatusEnum._(String name): super(name);

  static BuiltSet<PaymentStatusEnum> get values => _$paymentStatusEnumValues;
  static PaymentStatusEnum valueOf(String name) => _$paymentStatusEnumValueOf(name);
}

class PaymentProductTypeEnum extends EnumClass {

  /// Type of the product.
  @BuiltValueEnumConst(wireNumber: 1)
  static const PaymentProductTypeEnum number1 = _$paymentProductTypeEnum_number1;
  /// Type of the product.
  @BuiltValueEnumConst(wireNumber: 2)
  static const PaymentProductTypeEnum number2 = _$paymentProductTypeEnum_number2;
  /// Type of the product.
  @BuiltValueEnumConst(wireNumber: 3)
  static const PaymentProductTypeEnum number3 = _$paymentProductTypeEnum_number3;
  /// Type of the product.
  @BuiltValueEnumConst(wireNumber: 4)
  static const PaymentProductTypeEnum number4 = _$paymentProductTypeEnum_number4;

  static Serializer<PaymentProductTypeEnum> get serializer => _$paymentProductTypeEnumSerializer;

  const PaymentProductTypeEnum._(String name): super(name);

  static BuiltSet<PaymentProductTypeEnum> get values => _$paymentProductTypeEnumValues;
  static PaymentProductTypeEnum valueOf(String name) => _$paymentProductTypeEnumValueOf(name);
}

