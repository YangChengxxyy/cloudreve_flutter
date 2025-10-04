//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'captcha_fields.g.dart';

/// CaptchaFields
///
/// Properties:
/// * [captcha] - User input value of the graphical CAPTCHA. Required if graphic CAPTCHA enabled for current action.
/// * [ticket] - Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for current action. Can be obtained from [Get CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
@BuiltValue()
abstract class CaptchaFields implements Built<CaptchaFields, CaptchaFieldsBuilder> {
  /// User input value of the graphical CAPTCHA. Required if graphic CAPTCHA enabled for current action.
  @BuiltValueField(wireName: r'captcha')
  String? get captcha;

  /// Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for current action. Can be obtained from [Get CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
  @BuiltValueField(wireName: r'ticket')
  String? get ticket;

  CaptchaFields._();

  factory CaptchaFields([void updates(CaptchaFieldsBuilder b)]) = _$CaptchaFields;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(CaptchaFieldsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<CaptchaFields> get serializer => _$CaptchaFieldsSerializer();
}

class _$CaptchaFieldsSerializer implements PrimitiveSerializer<CaptchaFields> {
  @override
  final Iterable<Type> types = const [CaptchaFields, _$CaptchaFields];

  @override
  final String wireName = r'CaptchaFields';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    CaptchaFields object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.captcha != null) {
      yield r'captcha';
      yield serializers.serialize(
        object.captcha,
        specifiedType: const FullType.nullable(String),
      );
    }
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
    CaptchaFields object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required CaptchaFieldsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'captcha':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.captcha = valueDes;
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
  CaptchaFields deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = CaptchaFieldsBuilder();
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

