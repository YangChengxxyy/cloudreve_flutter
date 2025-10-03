//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_setting_get200_response_data_login_activity_inner.g.dart';

/// UserSettingGet200ResponseDataLoginActivityInner
///
/// Properties:
/// * [createdAt] - When the login activity initiated.
/// * [ip] - IP address of the client.
/// * [browser] - Name of the browser, parsed from user agent.
/// * [device] - Name of the device, parsed from user agent.
/// * [os] - Name of the operating system, parsed from user agent.
/// * [loginWith] - Method for sign in. Empty string means sign in using password.
/// * [openIdProvider] - Type of the 3rd party identity provider. Only valid if `login_with` is `openid`.
/// * [success] - Whether this sign in succeed.
/// * [webdav] - Whether this request is from WebDAV client. Currently we only record failed sign in activities for WebDAV requests.
@BuiltValue()
abstract class UserSettingGet200ResponseDataLoginActivityInner implements Built<UserSettingGet200ResponseDataLoginActivityInner, UserSettingGet200ResponseDataLoginActivityInnerBuilder> {
  /// When the login activity initiated.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  /// IP address of the client.
  @BuiltValueField(wireName: r'ip')
  String get ip;

  /// Name of the browser, parsed from user agent.
  @BuiltValueField(wireName: r'browser')
  String get browser;

  /// Name of the device, parsed from user agent.
  @BuiltValueField(wireName: r'device')
  String get device;

  /// Name of the operating system, parsed from user agent.
  @BuiltValueField(wireName: r'os')
  String get os;

  /// Method for sign in. Empty string means sign in using password.
  @BuiltValueField(wireName: r'login_with')
  UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum get loginWith;
  // enum loginWithEnum {  passkey,  openid,  };

  /// Type of the 3rd party identity provider. Only valid if `login_with` is `openid`.
  @BuiltValueField(wireName: r'open_id_provider')
  int get openIdProvider;

  /// Whether this sign in succeed.
  @BuiltValueField(wireName: r'success')
  bool get success;

  /// Whether this request is from WebDAV client. Currently we only record failed sign in activities for WebDAV requests.
  @BuiltValueField(wireName: r'webdav')
  bool get webdav;

  UserSettingGet200ResponseDataLoginActivityInner._();

  factory UserSettingGet200ResponseDataLoginActivityInner([void updates(UserSettingGet200ResponseDataLoginActivityInnerBuilder b)]) = _$UserSettingGet200ResponseDataLoginActivityInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSettingGet200ResponseDataLoginActivityInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSettingGet200ResponseDataLoginActivityInner> get serializer => _$UserSettingGet200ResponseDataLoginActivityInnerSerializer();
}

class _$UserSettingGet200ResponseDataLoginActivityInnerSerializer implements PrimitiveSerializer<UserSettingGet200ResponseDataLoginActivityInner> {
  @override
  final Iterable<Type> types = const [UserSettingGet200ResponseDataLoginActivityInner, _$UserSettingGet200ResponseDataLoginActivityInner];

  @override
  final String wireName = r'UserSettingGet200ResponseDataLoginActivityInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSettingGet200ResponseDataLoginActivityInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'ip';
    yield serializers.serialize(
      object.ip,
      specifiedType: const FullType(String),
    );
    yield r'browser';
    yield serializers.serialize(
      object.browser,
      specifiedType: const FullType(String),
    );
    yield r'device';
    yield serializers.serialize(
      object.device,
      specifiedType: const FullType(String),
    );
    yield r'os';
    yield serializers.serialize(
      object.os,
      specifiedType: const FullType(String),
    );
    yield r'login_with';
    yield serializers.serialize(
      object.loginWith,
      specifiedType: const FullType(UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum),
    );
    yield r'open_id_provider';
    yield serializers.serialize(
      object.openIdProvider,
      specifiedType: const FullType(int),
    );
    yield r'success';
    yield serializers.serialize(
      object.success,
      specifiedType: const FullType(bool),
    );
    yield r'webdav';
    yield serializers.serialize(
      object.webdav,
      specifiedType: const FullType(bool),
    );
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSettingGet200ResponseDataLoginActivityInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserSettingGet200ResponseDataLoginActivityInnerBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'ip':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.ip = valueDes;
          break;
        case r'browser':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.browser = valueDes;
          break;
        case r'device':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.device = valueDes;
          break;
        case r'os':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.os = valueDes;
          break;
        case r'login_with':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum),
          ) as UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum;
          result.loginWith = valueDes;
          break;
        case r'open_id_provider':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.openIdProvider = valueDes;
          break;
        case r'success':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.success = valueDes;
          break;
        case r'webdav':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.webdav = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserSettingGet200ResponseDataLoginActivityInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSettingGet200ResponseDataLoginActivityInnerBuilder();
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

class UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum extends EnumClass {

  /// Method for sign in. Empty string means sign in using password.
  @BuiltValueEnumConst(wireName: r'passkey')
  static const UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum passkey = _$userSettingGet200ResponseDataLoginActivityInnerLoginWithEnum_passkey;
  /// Method for sign in. Empty string means sign in using password.
  @BuiltValueEnumConst(wireName: r'openid')
  static const UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum openid = _$userSettingGet200ResponseDataLoginActivityInnerLoginWithEnum_openid;

  static Serializer<UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum> get serializer => _$userSettingGet200ResponseDataLoginActivityInnerLoginWithEnumSerializer;

  const UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum._(String name): super(name);

  static BuiltSet<UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum> get values => _$userSettingGet200ResponseDataLoginActivityInnerLoginWithEnumValues;
  static UserSettingGet200ResponseDataLoginActivityInnerLoginWithEnum valueOf(String name) => _$userSettingGet200ResponseDataLoginActivityInnerLoginWithEnumValueOf(name);
}

