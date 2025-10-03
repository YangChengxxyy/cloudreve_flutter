//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_openid_put_request.g.dart';

/// SessionOpenidPutRequest
///
/// Properties:
/// * [hint] - Email of preferred 3rd party account. Only Logto supports it.
/// * [linking] - Whether this sign in is for linking existing account in Cloudreve. If `true`, a valid session is required.
/// * [provider] - OpenID provider type ID.
@BuiltValue()
abstract class SessionOpenidPutRequest implements Built<SessionOpenidPutRequest, SessionOpenidPutRequestBuilder> {
  /// Email of preferred 3rd party account. Only Logto supports it.
  @BuiltValueField(wireName: r'hint')
  String? get hint;

  /// Whether this sign in is for linking existing account in Cloudreve. If `true`, a valid session is required.
  @BuiltValueField(wireName: r'linking')
  bool? get linking;

  /// OpenID provider type ID.
  @BuiltValueField(wireName: r'provider')
  SessionOpenidPutRequestProviderEnum? get provider;
  // enum providerEnum {  0,  1,  2,  };

  SessionOpenidPutRequest._();

  factory SessionOpenidPutRequest([void updates(SessionOpenidPutRequestBuilder b)]) = _$SessionOpenidPutRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SessionOpenidPutRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SessionOpenidPutRequest> get serializer => _$SessionOpenidPutRequestSerializer();
}

class _$SessionOpenidPutRequestSerializer implements PrimitiveSerializer<SessionOpenidPutRequest> {
  @override
  final Iterable<Type> types = const [SessionOpenidPutRequest, _$SessionOpenidPutRequest];

  @override
  final String wireName = r'SessionOpenidPutRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SessionOpenidPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.hint != null) {
      yield r'hint';
      yield serializers.serialize(
        object.hint,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.linking != null) {
      yield r'linking';
      yield serializers.serialize(
        object.linking,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.provider != null) {
      yield r'provider';
      yield serializers.serialize(
        object.provider,
        specifiedType: const FullType(SessionOpenidPutRequestProviderEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SessionOpenidPutRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SessionOpenidPutRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'hint':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.hint = valueDes;
          break;
        case r'linking':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.linking = valueDes;
          break;
        case r'provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SessionOpenidPutRequestProviderEnum),
          ) as SessionOpenidPutRequestProviderEnum;
          result.provider = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SessionOpenidPutRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SessionOpenidPutRequestBuilder();
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

class SessionOpenidPutRequestProviderEnum extends EnumClass {

  /// OpenID provider type ID.
  @BuiltValueEnumConst(wireNumber: 0)
  static const SessionOpenidPutRequestProviderEnum number0 = _$sessionOpenidPutRequestProviderEnum_number0;
  /// OpenID provider type ID.
  @BuiltValueEnumConst(wireNumber: 1)
  static const SessionOpenidPutRequestProviderEnum number1 = _$sessionOpenidPutRequestProviderEnum_number1;
  /// OpenID provider type ID.
  @BuiltValueEnumConst(wireNumber: 2)
  static const SessionOpenidPutRequestProviderEnum number2 = _$sessionOpenidPutRequestProviderEnum_number2;

  static Serializer<SessionOpenidPutRequestProviderEnum> get serializer => _$sessionOpenidPutRequestProviderEnumSerializer;

  const SessionOpenidPutRequestProviderEnum._(String name): super(name);

  static BuiltSet<SessionOpenidPutRequestProviderEnum> get values => _$sessionOpenidPutRequestProviderEnumValues;
  static SessionOpenidPutRequestProviderEnum valueOf(String name) => _$sessionOpenidPutRequestProviderEnumValueOf(name);
}

