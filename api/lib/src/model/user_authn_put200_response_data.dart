//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_authn_put200_response_data.g.dart';

/// Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
///
/// Properties:
/// * [publicKey] - A [PublicKeyCredentialCreationOptions](https://www.w3.org/TR/webauthn/#dictionary-makecredentialoptions) object that can be used to invoke passkey registration from browser.
@BuiltValue()
abstract class UserAuthnPut200ResponseData implements Built<UserAuthnPut200ResponseData, UserAuthnPut200ResponseDataBuilder> {
  /// A [PublicKeyCredentialCreationOptions](https://www.w3.org/TR/webauthn/#dictionary-makecredentialoptions) object that can be used to invoke passkey registration from browser.
  @BuiltValueField(wireName: r'publicKey')
  JsonObject? get publicKey;

  UserAuthnPut200ResponseData._();

  factory UserAuthnPut200ResponseData([void updates(UserAuthnPut200ResponseDataBuilder b)]) = _$UserAuthnPut200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserAuthnPut200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserAuthnPut200ResponseData> get serializer => _$UserAuthnPut200ResponseDataSerializer();
}

class _$UserAuthnPut200ResponseDataSerializer implements PrimitiveSerializer<UserAuthnPut200ResponseData> {
  @override
  final Iterable<Type> types = const [UserAuthnPut200ResponseData, _$UserAuthnPut200ResponseData];

  @override
  final String wireName = r'UserAuthnPut200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserAuthnPut200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.publicKey != null) {
      yield r'publicKey';
      yield serializers.serialize(
        object.publicKey,
        specifiedType: const FullType(JsonObject),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserAuthnPut200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserAuthnPut200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'publicKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.publicKey = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserAuthnPut200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserAuthnPut200ResponseDataBuilder();
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

