//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/site_ping_get200_response_data_options.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'site_ping_get200_response_data.g.dart';

/// Response content
///
/// Properties:
/// * [webauthnEnabled] - Whether this account can be logged in with Passkeys.
/// * [passwordEnabled] - Whether this account can be logged in with password.
/// * [qqEnabled] - Whether this account can be logged in with Tencent QQ.
/// * [ssoEnabled] - Whether this account can be logged in with Logto.
/// * [publicKey] - A [PublicKeyCredentialCreationOptions](https://www.w3.org/TR/webauthn/#dictionary-makecredentialoptions) object that can be used to invoke passkey registration from browser.
/// * [sessionId] - ID of the login session.
/// * [options] 
@BuiltValue()
abstract class SitePingGet200ResponseData implements Built<SitePingGet200ResponseData, SitePingGet200ResponseDataBuilder> {
  /// Whether this account can be logged in with Passkeys.
  @BuiltValueField(wireName: r'webauthn_enabled')
  bool? get webauthnEnabled;

  /// Whether this account can be logged in with password.
  @BuiltValueField(wireName: r'password_enabled')
  bool get passwordEnabled;

  /// Whether this account can be logged in with Tencent QQ.
  @BuiltValueField(wireName: r'qq_enabled')
  bool? get qqEnabled;

  /// Whether this account can be logged in with Logto.
  @BuiltValueField(wireName: r'sso_enabled')
  bool? get ssoEnabled;

  /// A [PublicKeyCredentialCreationOptions](https://www.w3.org/TR/webauthn/#dictionary-makecredentialoptions) object that can be used to invoke passkey registration from browser.
  @BuiltValueField(wireName: r'publicKey')
  JsonObject get publicKey;

  /// ID of the login session.
  @BuiltValueField(wireName: r'session_id')
  String get sessionId;

  @BuiltValueField(wireName: r'options')
  SitePingGet200ResponseDataOptions get options;

  SitePingGet200ResponseData._();

  factory SitePingGet200ResponseData([void updates(SitePingGet200ResponseDataBuilder b)]) = _$SitePingGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SitePingGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SitePingGet200ResponseData> get serializer => _$SitePingGet200ResponseDataSerializer();
}

class _$SitePingGet200ResponseDataSerializer implements PrimitiveSerializer<SitePingGet200ResponseData> {
  @override
  final Iterable<Type> types = const [SitePingGet200ResponseData, _$SitePingGet200ResponseData];

  @override
  final String wireName = r'SitePingGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SitePingGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.webauthnEnabled != null) {
      yield r'webauthn_enabled';
      yield serializers.serialize(
        object.webauthnEnabled,
        specifiedType: const FullType(bool),
      );
    }
    yield r'password_enabled';
    yield serializers.serialize(
      object.passwordEnabled,
      specifiedType: const FullType(bool),
    );
    if (object.qqEnabled != null) {
      yield r'qq_enabled';
      yield serializers.serialize(
        object.qqEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.ssoEnabled != null) {
      yield r'sso_enabled';
      yield serializers.serialize(
        object.ssoEnabled,
        specifiedType: const FullType(bool),
      );
    }
    yield r'publicKey';
    yield serializers.serialize(
      object.publicKey,
      specifiedType: const FullType(JsonObject),
    );
    yield r'session_id';
    yield serializers.serialize(
      object.sessionId,
      specifiedType: const FullType(String),
    );
    yield r'options';
    yield serializers.serialize(
      object.options,
      specifiedType: const FullType(SitePingGet200ResponseDataOptions),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    SitePingGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SitePingGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'webauthn_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.webauthnEnabled = valueDes;
          break;
        case r'password_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.passwordEnabled = valueDes;
          break;
        case r'qq_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.qqEnabled = valueDes;
          break;
        case r'sso_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ssoEnabled = valueDes;
          break;
        case r'publicKey':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(JsonObject),
          ) as JsonObject;
          result.publicKey = valueDes;
          break;
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
            specifiedType: const FullType(SitePingGet200ResponseDataOptions),
          ) as SitePingGet200ResponseDataOptions;
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
  SitePingGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SitePingGet200ResponseDataBuilder();
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
