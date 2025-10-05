//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'session_prepare_get200_response_data.g.dart';

/// Response content
///
/// Properties:
/// * [webauthnEnabled] - Whether this account can be logged in with Passkeys.
/// * [ssoEnabled] - Whether this account can be logged in with Logto.
/// * [passwordEnabled] - Whether this account can be logged in with password.
/// * [qqEnabled] - Whether this account can be logged in with Tencent QQ.
@BuiltValue()
abstract class SessionPrepareGet200ResponseData implements Built<SessionPrepareGet200ResponseData, SessionPrepareGet200ResponseDataBuilder> {
  /// Whether this account can be logged in with Passkeys.
  @BuiltValueField(wireName: r'webauthn_enabled')
  bool? get webauthnEnabled;

  /// Whether this account can be logged in with Logto.
  @BuiltValueField(wireName: r'sso_enabled')
  bool? get ssoEnabled;

  /// Whether this account can be logged in with password.
  @BuiltValueField(wireName: r'password_enabled')
  bool? get passwordEnabled;

  /// Whether this account can be logged in with Tencent QQ.
  @BuiltValueField(wireName: r'qq_enabled')
  bool? get qqEnabled;

  SessionPrepareGet200ResponseData._();

  factory SessionPrepareGet200ResponseData([void updates(SessionPrepareGet200ResponseDataBuilder b)]) = _$SessionPrepareGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(SessionPrepareGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<SessionPrepareGet200ResponseData> get serializer => _$SessionPrepareGet200ResponseDataSerializer();
}

class _$SessionPrepareGet200ResponseDataSerializer implements PrimitiveSerializer<SessionPrepareGet200ResponseData> {
  @override
  final Iterable<Type> types = const [SessionPrepareGet200ResponseData, _$SessionPrepareGet200ResponseData];

  @override
  final String wireName = r'SessionPrepareGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    SessionPrepareGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.webauthnEnabled != null) {
      yield r'webauthn_enabled';
      yield serializers.serialize(
        object.webauthnEnabled,
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
    if (object.passwordEnabled != null) {
      yield r'password_enabled';
      yield serializers.serialize(
        object.passwordEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.qqEnabled != null) {
      yield r'qq_enabled';
      yield serializers.serialize(
        object.qqEnabled,
        specifiedType: const FullType(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    SessionPrepareGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required SessionPrepareGet200ResponseDataBuilder result,
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
        case r'sso_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.ssoEnabled = valueDes;
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
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  SessionPrepareGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = SessionPrepareGet200ResponseDataBuilder();
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

