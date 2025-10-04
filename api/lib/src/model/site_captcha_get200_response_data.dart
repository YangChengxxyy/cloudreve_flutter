//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_captcha_get200_response_data.g.dart';

/// The version of the Cloudreve instance. For pro edition, a `-pro` suffix will be added.
///
/// Properties:
/// * [image] - Base64 encoded CAPTCHA image.
/// * [ticket] - Ticket of this CAPTCHA, need to be included in following request that requires CAPTCHA verification.
@BuiltValue()
abstract class SiteCaptchaGet200ResponseData implements Built<SiteCaptchaGet200ResponseData, SiteCaptchaGet200ResponseDataBuilder> {
  /// Base64 encoded CAPTCHA image.
  @BuiltValueField(wireName: r'image')
  String get image;

  /// Ticket of this CAPTCHA, need to be included in following request that requires CAPTCHA verification.
  @BuiltValueField(wireName: r'ticket')
  String get ticket;

  SiteCaptchaGet200ResponseData._();

  factory SiteCaptchaGet200ResponseData([void updates(SiteCaptchaGet200ResponseDataBuilder b)]) = _$SiteCaptchaGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SiteCaptchaGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SiteCaptchaGet200ResponseData> get serializer => _$SiteCaptchaGet200ResponseDataSerializer();
}

class _$SiteCaptchaGet200ResponseDataSerializer implements PrimitiveSerializer<SiteCaptchaGet200ResponseData> {
  @override
  final Iterable<Type> types = const [SiteCaptchaGet200ResponseData, _$SiteCaptchaGet200ResponseData];

  @override
  final String wireName = r'SiteCaptchaGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SiteCaptchaGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'image';
    yield serializers.serialize(
      object.image,
      specifiedType: const FullType(String),
    );
    yield r'ticket';
    yield serializers.serialize(
      object.ticket,
      specifiedType: const FullType(String),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SiteCaptchaGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SiteCaptchaGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'image':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.image = valueDes;
          break;
        case r'ticket':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
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
  SiteCaptchaGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SiteCaptchaGet200ResponseDataBuilder();
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

