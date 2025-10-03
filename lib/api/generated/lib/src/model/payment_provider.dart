//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_provider.g.dart';

/// PaymentProvider
///
/// Properties:
/// * [id] - UUID of the payment provider.
/// * [type] - Type of the payment provider.
/// * [name] - Display name of the payment method.
@BuiltValue()
abstract class PaymentProvider implements Built<PaymentProvider, PaymentProviderBuilder> {
  /// UUID of the payment provider.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Type of the payment provider.
  @BuiltValueField(wireName: r'type')
  PaymentProviderTypeEnum? get type;
  // enum typeEnum {  stripe,  alipay,  weixin,  points,  custom,  };

  /// Display name of the payment method.
  @BuiltValueField(wireName: r'name')
  String get name;

  PaymentProvider._();

  factory PaymentProvider([void updates(PaymentProviderBuilder b)]) = _$PaymentProvider;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentProviderBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentProvider> get serializer => _$PaymentProviderSerializer();
}

class _$PaymentProviderSerializer implements PrimitiveSerializer<PaymentProvider> {
  @override
  final Iterable<Type> types = const [PaymentProvider, _$PaymentProvider];

  @override
  final String wireName = r'PaymentProvider';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentProvider object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(PaymentProviderTypeEnum),
      );
    }
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentProvider object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentProviderBuilder result,
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
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(PaymentProviderTypeEnum),
          ) as PaymentProviderTypeEnum;
          result.type = valueDes;
          break;
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  PaymentProvider deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentProviderBuilder();
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

class PaymentProviderTypeEnum extends EnumClass {

  /// Type of the payment provider.
  @BuiltValueEnumConst(wireName: r'stripe')
  static const PaymentProviderTypeEnum stripe = _$paymentProviderTypeEnum_stripe;
  /// Type of the payment provider.
  @BuiltValueEnumConst(wireName: r'alipay')
  static const PaymentProviderTypeEnum alipay = _$paymentProviderTypeEnum_alipay;
  /// Type of the payment provider.
  @BuiltValueEnumConst(wireName: r'weixin')
  static const PaymentProviderTypeEnum weixin = _$paymentProviderTypeEnum_weixin;
  /// Type of the payment provider.
  @BuiltValueEnumConst(wireName: r'points')
  static const PaymentProviderTypeEnum points = _$paymentProviderTypeEnum_points;
  /// Type of the payment provider.
  @BuiltValueEnumConst(wireName: r'custom')
  static const PaymentProviderTypeEnum custom = _$paymentProviderTypeEnum_custom;

  static Serializer<PaymentProviderTypeEnum> get serializer => _$paymentProviderTypeEnumSerializer;

  const PaymentProviderTypeEnum._(String name): super(name);

  static BuiltSet<PaymentProviderTypeEnum> get values => _$paymentProviderTypeEnumValues;
  static PaymentProviderTypeEnum valueOf(String name) => _$paymentProviderTypeEnumValueOf(name);
}

