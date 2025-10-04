//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/payment.dart';
import 'package:cloudreve_api_client/src/model/vas_payment_put200_response_data_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vas_payment_put200_response_data.g.dart';

/// Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
///
/// Properties:
/// * [payment] 
/// * [request] 
@BuiltValue()
abstract class VasPaymentPut200ResponseData implements Built<VasPaymentPut200ResponseData, VasPaymentPut200ResponseDataBuilder> {
  @BuiltValueField(wireName: r'payment')
  Payment get payment;

  @BuiltValueField(wireName: r'request')
  VasPaymentPut200ResponseDataRequest get request;

  VasPaymentPut200ResponseData._();

  factory VasPaymentPut200ResponseData([void updates(VasPaymentPut200ResponseDataBuilder b)]) = _$VasPaymentPut200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VasPaymentPut200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VasPaymentPut200ResponseData> get serializer => _$VasPaymentPut200ResponseDataSerializer();
}

class _$VasPaymentPut200ResponseDataSerializer implements PrimitiveSerializer<VasPaymentPut200ResponseData> {
  @override
  final Iterable<Type> types = const [VasPaymentPut200ResponseData, _$VasPaymentPut200ResponseData];

  @override
  final String wireName = r'VasPaymentPut200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VasPaymentPut200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'payment';
    yield serializers.serialize(
      object.payment,
      specifiedType: const FullType(Payment),
    );
    yield r'request';
    yield serializers.serialize(
      object.request,
      specifiedType: const FullType(VasPaymentPut200ResponseDataRequest),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    VasPaymentPut200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VasPaymentPut200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payment':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Payment),
          ) as Payment;
          result.payment.replace(valueDes);
          break;
        case r'request':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(VasPaymentPut200ResponseDataRequest),
          ) as VasPaymentPut200ResponseDataRequest;
          result.request.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VasPaymentPut200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VasPaymentPut200ResponseDataBuilder();
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

