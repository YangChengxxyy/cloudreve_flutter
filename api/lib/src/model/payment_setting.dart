//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/payment_provider.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'payment_setting.g.dart';

/// PaymentSetting
///
/// Properties:
/// * [currencyCode] - Currency code.
/// * [currencyMark] - Currency symbol.
/// * [currencyUnit] - Minimum currency unit (e.g., 100 for dollars/cents)
/// * [providers] - List of available payment method.
@BuiltValue()
abstract class PaymentSetting implements Built<PaymentSetting, PaymentSettingBuilder> {
  /// Currency code.
  @BuiltValueField(wireName: r'currency_code')
  String? get currencyCode;

  /// Currency symbol.
  @BuiltValueField(wireName: r'currency_mark')
  String? get currencyMark;

  /// Minimum currency unit (e.g., 100 for dollars/cents)
  @BuiltValueField(wireName: r'currency_unit')
  int? get currencyUnit;

  /// List of available payment method.
  @BuiltValueField(wireName: r'providers')
  BuiltList<PaymentProvider>? get providers;

  PaymentSetting._();

  factory PaymentSetting([void updates(PaymentSettingBuilder b)]) = _$PaymentSetting;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(PaymentSettingBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<PaymentSetting> get serializer => _$PaymentSettingSerializer();
}

class _$PaymentSettingSerializer implements PrimitiveSerializer<PaymentSetting> {
  @override
  final Iterable<Type> types = const [PaymentSetting, _$PaymentSetting];

  @override
  final String wireName = r'PaymentSetting';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    PaymentSetting object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.currencyCode != null) {
      yield r'currency_code';
      yield serializers.serialize(
        object.currencyCode,
        specifiedType: const FullType(String),
      );
    }
    if (object.currencyMark != null) {
      yield r'currency_mark';
      yield serializers.serialize(
        object.currencyMark,
        specifiedType: const FullType(String),
      );
    }
    if (object.currencyUnit != null) {
      yield r'currency_unit';
      yield serializers.serialize(
        object.currencyUnit,
        specifiedType: const FullType(int),
      );
    }
    if (object.providers != null) {
      yield r'providers';
      yield serializers.serialize(
        object.providers,
        specifiedType: const FullType(BuiltList, [FullType(PaymentProvider)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    PaymentSetting object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required PaymentSettingBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'currency_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currencyCode = valueDes;
          break;
        case r'currency_mark':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.currencyMark = valueDes;
          break;
        case r'currency_unit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.currencyUnit = valueDes;
          break;
        case r'providers':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(PaymentProvider)]),
          ) as BuiltList<PaymentProvider>;
          result.providers.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  PaymentSetting deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = PaymentSettingBuilder();
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

