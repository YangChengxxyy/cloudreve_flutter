//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_ping_get200_response_data_options.g.dart';

/// A `CredentialAssertion` object that can be used by browser to initiate a authentification.
///
/// Properties:
/// * [n01jSRK1R5F4NZ2CHDTQ44G3C82]
@BuiltValue()
abstract class SitePingGet200ResponseDataOptions
    implements
        Built<SitePingGet200ResponseDataOptions,
            SitePingGet200ResponseDataOptionsBuilder> {
  @BuiltValueField(wireName: r'01JSRK1R5F4NZ2CHDTQ44G3C82')
  String? get n01jSRK1R5F4NZ2CHDTQ44G3C82;

  SitePingGet200ResponseDataOptions._();

  factory SitePingGet200ResponseDataOptions(
          [void updates(SitePingGet200ResponseDataOptionsBuilder b)]) =
      _$SitePingGet200ResponseDataOptions;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SitePingGet200ResponseDataOptionsBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SitePingGet200ResponseDataOptions> get serializer =>
      _$SitePingGet200ResponseDataOptionsSerializer();
}

class _$SitePingGet200ResponseDataOptionsSerializer
    implements PrimitiveSerializer<SitePingGet200ResponseDataOptions> {
  @override
  final Iterable<Type> types = const [
    SitePingGet200ResponseDataOptions,
    _$SitePingGet200ResponseDataOptions
  ];

  @override
  final String wireName = r'SitePingGet200ResponseDataOptions';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SitePingGet200ResponseDataOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.n01jSRK1R5F4NZ2CHDTQ44G3C82 != null) {
      yield r'01JSRK1R5F4NZ2CHDTQ44G3C82';
      yield serializers.serialize(
        object.n01jSRK1R5F4NZ2CHDTQ44G3C82,
        specifiedType: const FullType(String),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SitePingGet200ResponseDataOptions object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object,
            specifiedType: specifiedType)
        .toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SitePingGet200ResponseDataOptionsBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'01JSRK1R5F4NZ2CHDTQ44G3C82':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.n01jSRK1R5F4NZ2CHDTQ44G3C82 = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SitePingGet200ResponseDataOptions deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SitePingGet200ResponseDataOptionsBuilder();
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
