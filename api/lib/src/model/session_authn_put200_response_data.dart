//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_authn_put200_response_data.g.dart';

/// Response content
///
/// Properties:
/// * [sessionId] - ID of the login session.
/// * [options] - A `CredentialAssertion` object that can be used by browser to initiate a authentification.
@BuiltValue()
abstract class SessionAuthnPut200ResponseData implements Built<SessionAuthnPut200ResponseData, SessionAuthnPut200ResponseDataBuilder> {
  /// ID of the login session.
  @BuiltValueField(wireName: r'session_id')
  String get sessionId;

  /// A `CredentialAssertion` object that can be used by browser to initiate a authentification.
  @BuiltValueField(wireName: r'options')
  BuiltMap<String, JsonObject?> get options;

  SessionAuthnPut200ResponseData._();

  factory SessionAuthnPut200ResponseData([void updates(SessionAuthnPut200ResponseDataBuilder b)]) = _$SessionAuthnPut200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SessionAuthnPut200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SessionAuthnPut200ResponseData> get serializer => _$SessionAuthnPut200ResponseDataSerializer();
}

class _$SessionAuthnPut200ResponseDataSerializer implements PrimitiveSerializer<SessionAuthnPut200ResponseData> {
  @override
  final Iterable<Type> types = const [SessionAuthnPut200ResponseData, _$SessionAuthnPut200ResponseData];

  @override
  final String wireName = r'SessionAuthnPut200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SessionAuthnPut200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'session_id';
    yield serializers.serialize(
      object.sessionId,
      specifiedType: const FullType(String),
    );
    yield r'options';
    yield serializers.serialize(
      object.options,
      specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SessionAuthnPut200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SessionAuthnPut200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'session_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sessionId = valueDes;
          break;
        case r'options':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltMap, [FullType(String), FullType.nullable(JsonObject)]),
          ) as BuiltMap<String, JsonObject?>;
          result.options.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SessionAuthnPut200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SessionAuthnPut200ResponseDataBuilder();
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

