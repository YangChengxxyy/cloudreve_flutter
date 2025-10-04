//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'vas_giftcode_code_get200_response_data.g.dart';

/// Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
///
/// Properties:
/// * [name] - Name of the product.
/// * [qyt] - Quantity of the product included in the gift code.
/// * [duration] - Duration of the group or storage pack product in one `qyt`.
@BuiltValue()
abstract class VasGiftcodeCodeGet200ResponseData implements Built<VasGiftcodeCodeGet200ResponseData, VasGiftcodeCodeGet200ResponseDataBuilder> {
  /// Name of the product.
  @BuiltValueField(wireName: r'name')
  String get name;

  /// Quantity of the product included in the gift code.
  @BuiltValueField(wireName: r'qyt')
  num get qyt;

  /// Duration of the group or storage pack product in one `qyt`.
  @BuiltValueField(wireName: r'duration')
  int? get duration;

  VasGiftcodeCodeGet200ResponseData._();

  factory VasGiftcodeCodeGet200ResponseData([void updates(VasGiftcodeCodeGet200ResponseDataBuilder b)]) = _$VasGiftcodeCodeGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(VasGiftcodeCodeGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<VasGiftcodeCodeGet200ResponseData> get serializer => _$VasGiftcodeCodeGet200ResponseDataSerializer();
}

class _$VasGiftcodeCodeGet200ResponseDataSerializer implements PrimitiveSerializer<VasGiftcodeCodeGet200ResponseData> {
  @override
  final Iterable<Type> types = const [VasGiftcodeCodeGet200ResponseData, _$VasGiftcodeCodeGet200ResponseData];

  @override
  final String wireName = r'VasGiftcodeCodeGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    VasGiftcodeCodeGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'name';
    yield serializers.serialize(
      object.name,
      specifiedType: const FullType(String),
    );
    yield r'qyt';
    yield serializers.serialize(
      object.qyt,
      specifiedType: const FullType(num),
    );
    if (object.duration != null) {
      yield r'duration';
      yield serializers.serialize(
        object.duration,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    VasGiftcodeCodeGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required VasGiftcodeCodeGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'qyt':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.qyt = valueDes;
          break;
        case r'duration':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.duration = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  VasGiftcodeCodeGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = VasGiftcodeCodeGet200ResponseDataBuilder();
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

