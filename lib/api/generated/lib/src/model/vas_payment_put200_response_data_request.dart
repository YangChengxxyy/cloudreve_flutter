//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vas_payment_put200_response_data_request.g.dart';

/// Additional info to initiate a payment.
///
/// Properties:
/// * [paymentNeeded] - Whether following payment is needed. For payments using points, this is `false`.
/// * [url] - URL to the payment page.
/// * [qrCodePreferred] - If `true`, a QR Code is preferred to be shown to users. The content of the QR Code is `url`.
@BuiltValue()
abstract class VasPaymentPut200ResponseDataRequest implements Built<VasPaymentPut200ResponseDataRequest, VasPaymentPut200ResponseDataRequestBuilder> {
  /// Whether following payment is needed. For payments using points, this is `false`.
  @BuiltValueField(wireName: r'payment_needed')
  bool? get paymentNeeded;

  /// URL to the payment page.
  @BuiltValueField(wireName: r'url')
  String? get url;

  /// If `true`, a QR Code is preferred to be shown to users. The content of the QR Code is `url`.
  @BuiltValueField(wireName: r'qr_code_preferred')
  bool? get qrCodePreferred;

  VasPaymentPut200ResponseDataRequest._();

  factory VasPaymentPut200ResponseDataRequest([void updates(VasPaymentPut200ResponseDataRequestBuilder b)]) = _$VasPaymentPut200ResponseDataRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VasPaymentPut200ResponseDataRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VasPaymentPut200ResponseDataRequest> get serializer => _$VasPaymentPut200ResponseDataRequestSerializer();
}

class _$VasPaymentPut200ResponseDataRequestSerializer implements PrimitiveSerializer<VasPaymentPut200ResponseDataRequest> {
  @override
  final Iterable<Type> types = const [VasPaymentPut200ResponseDataRequest, _$VasPaymentPut200ResponseDataRequest];

  @override
  final String wireName = r'VasPaymentPut200ResponseDataRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VasPaymentPut200ResponseDataRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.paymentNeeded != null) {
      yield r'payment_needed';
      yield serializers.serialize(
        object.paymentNeeded,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.qrCodePreferred != null) {
      yield r'qr_code_preferred';
      yield serializers.serialize(
        object.qrCodePreferred,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VasPaymentPut200ResponseDataRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VasPaymentPut200ResponseDataRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'payment_needed':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.paymentNeeded = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.url = valueDes;
          break;
        case r'qr_code_preferred':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.qrCodePreferred = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VasPaymentPut200ResponseDataRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VasPaymentPut200ResponseDataRequestBuilder();
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

