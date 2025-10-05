//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/user_setting_get200_response_data_login_activity_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/user_setting_get200_response_data_storage_packs_inner.dart';
import 'package:cloudreve_api_client/src/model/passkey.dart';
import 'package:cloudreve_api_client/src/model/user_setting_get200_response_data_open_id_inner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_setting_get200_response_data.g.dart';

/// Response content. In some error type, e.g. lock conflicting errors, this field wil present details of the error, e.g. who is locking the current file.
///
/// Properties:
/// * [groupExpires] - Datetime when the cuurent membership expired. Empty value means no active membership. Only presented in Pro edition.
/// * [openId] - List of linked external identity providers. Only presented in Pro edition.
/// * [versionRetentionEnabled] - Whether file version retention is enabled.
/// * [versionRetentionExt] - List of file extensions enabling file version retention. For null or empty list, all extensions are enabled.
/// * [versionRetentionMax] - Max preserved version. For `0` or null, all version will be preserved.
/// * [passwordless] - Whether this account is passwordless (sign in via 3rd party identity provider).
/// * [twoFaEnabled] - Whether 2FA is enabled.
/// * [passkeys] - List of registered passkeys.
/// * [loginActivity] - List of recent login activities. Only presented in Pro edition.
/// * [storagePacks] - List of available extra storage packs
/// * [credit] - Available points balance.
/// * [disableViewSync] - Whether explorer view setting sync is disabled.
/// * [shareLinksInProfile] - What type of share link is visable in user's profile.
@BuiltValue()
abstract class UserSettingGet200ResponseData implements Built<UserSettingGet200ResponseData, UserSettingGet200ResponseDataBuilder> {
  /// Datetime when the cuurent membership expired. Empty value means no active membership. Only presented in Pro edition.
  @BuiltValueField(wireName: r'group_expires')
  DateTime? get groupExpires;

  /// List of linked external identity providers. Only presented in Pro edition.
  @BuiltValueField(wireName: r'open_id')
  BuiltList<UserSettingGet200ResponseDataOpenIdInner>? get openId;

  /// Whether file version retention is enabled.
  @BuiltValueField(wireName: r'version_retention_enabled')
  bool? get versionRetentionEnabled;

  /// List of file extensions enabling file version retention. For null or empty list, all extensions are enabled.
  @BuiltValueField(wireName: r'version_retention_ext')
  BuiltList<String>? get versionRetentionExt;

  /// Max preserved version. For `0` or null, all version will be preserved.
  @BuiltValueField(wireName: r'version_retention_max')
  int? get versionRetentionMax;

  /// Whether this account is passwordless (sign in via 3rd party identity provider).
  @BuiltValueField(wireName: r'passwordless')
  bool? get passwordless;

  /// Whether 2FA is enabled.
  @BuiltValueField(wireName: r'two_fa_enabled')
  bool? get twoFaEnabled;

  /// List of registered passkeys.
  @BuiltValueField(wireName: r'passkeys')
  BuiltList<Passkey>? get passkeys;

  /// List of recent login activities. Only presented in Pro edition.
  @BuiltValueField(wireName: r'login_activity')
  BuiltList<UserSettingGet200ResponseDataLoginActivityInner>? get loginActivity;

  /// List of available extra storage packs
  @BuiltValueField(wireName: r'storage_packs')
  BuiltList<UserSettingGet200ResponseDataStoragePacksInner>? get storagePacks;

  /// Available points balance.
  @BuiltValueField(wireName: r'credit')
  int? get credit;

  /// Whether explorer view setting sync is disabled.
  @BuiltValueField(wireName: r'disable_view_sync')
  bool? get disableViewSync;

  /// What type of share link is visable in user's profile.
  @BuiltValueField(wireName: r'share_links_in_profile')
  UserSettingGet200ResponseDataShareLinksInProfileEnum? get shareLinksInProfile;
  // enum shareLinksInProfileEnum {  [Empty string],  all_share,  hide_share,  };

  UserSettingGet200ResponseData._();

  factory UserSettingGet200ResponseData([void updates(UserSettingGet200ResponseDataBuilder b)]) = _$UserSettingGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSettingGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSettingGet200ResponseData> get serializer => _$UserSettingGet200ResponseDataSerializer();
}

class _$UserSettingGet200ResponseDataSerializer implements PrimitiveSerializer<UserSettingGet200ResponseData> {
  @override
  final Iterable<Type> types = const [UserSettingGet200ResponseData, _$UserSettingGet200ResponseData];

  @override
  final String wireName = r'UserSettingGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSettingGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.groupExpires != null) {
      yield r'group_expires';
      yield serializers.serialize(
        object.groupExpires,
        specifiedType: const FullType.nullable(DateTime),
      );
    }
    if (object.openId != null) {
      yield r'open_id';
      yield serializers.serialize(
        object.openId,
        specifiedType: const FullType.nullable(BuiltList, [FullType(UserSettingGet200ResponseDataOpenIdInner)]),
      );
    }
    if (object.versionRetentionEnabled != null) {
      yield r'version_retention_enabled';
      yield serializers.serialize(
        object.versionRetentionEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.versionRetentionExt != null) {
      yield r'version_retention_ext';
      yield serializers.serialize(
        object.versionRetentionExt,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.versionRetentionMax != null) {
      yield r'version_retention_max';
      yield serializers.serialize(
        object.versionRetentionMax,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.passwordless != null) {
      yield r'passwordless';
      yield serializers.serialize(
        object.passwordless,
        specifiedType: const FullType(bool),
      );
    }
    if (object.twoFaEnabled != null) {
      yield r'two_fa_enabled';
      yield serializers.serialize(
        object.twoFaEnabled,
        specifiedType: const FullType(bool),
      );
    }
    if (object.passkeys != null) {
      yield r'passkeys';
      yield serializers.serialize(
        object.passkeys,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Passkey)]),
      );
    }
    if (object.loginActivity != null) {
      yield r'login_activity';
      yield serializers.serialize(
        object.loginActivity,
        specifiedType: const FullType.nullable(BuiltList, [FullType(UserSettingGet200ResponseDataLoginActivityInner)]),
      );
    }
    if (object.storagePacks != null) {
      yield r'storage_packs';
      yield serializers.serialize(
        object.storagePacks,
        specifiedType: const FullType(BuiltList, [FullType(UserSettingGet200ResponseDataStoragePacksInner)]),
      );
    }
    if (object.credit != null) {
      yield r'credit';
      yield serializers.serialize(
        object.credit,
        specifiedType: const FullType(int),
      );
    }
    if (object.disableViewSync != null) {
      yield r'disable_view_sync';
      yield serializers.serialize(
        object.disableViewSync,
        specifiedType: const FullType(bool),
      );
    }
    if (object.shareLinksInProfile != null) {
      yield r'share_links_in_profile';
      yield serializers.serialize(
        object.shareLinksInProfile,
        specifiedType: const FullType.nullable(UserSettingGet200ResponseDataShareLinksInProfileEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSettingGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserSettingGet200ResponseDataBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'group_expires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(DateTime),
          ) as DateTime?;
          if (valueDes == null) continue;
          result.groupExpires = valueDes;
          break;
        case r'open_id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(UserSettingGet200ResponseDataOpenIdInner)]),
          ) as BuiltList<UserSettingGet200ResponseDataOpenIdInner>?;
          if (valueDes == null) continue;
          result.openId.replace(valueDes);
          break;
        case r'version_retention_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.versionRetentionEnabled = valueDes;
          break;
        case r'version_retention_ext':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.versionRetentionExt.replace(valueDes);
          break;
        case r'version_retention_max':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.versionRetentionMax = valueDes;
          break;
        case r'passwordless':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.passwordless = valueDes;
          break;
        case r'two_fa_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.twoFaEnabled = valueDes;
          break;
        case r'passkeys':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(Passkey)]),
          ) as BuiltList<Passkey>?;
          if (valueDes == null) continue;
          result.passkeys.replace(valueDes);
          break;
        case r'login_activity':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(UserSettingGet200ResponseDataLoginActivityInner)]),
          ) as BuiltList<UserSettingGet200ResponseDataLoginActivityInner>?;
          if (valueDes == null) continue;
          result.loginActivity.replace(valueDes);
          break;
        case r'storage_packs':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(BuiltList, [FullType(UserSettingGet200ResponseDataStoragePacksInner)]),
          ) as BuiltList<UserSettingGet200ResponseDataStoragePacksInner>;
          result.storagePacks.replace(valueDes);
          break;
        case r'credit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.credit = valueDes;
          break;
        case r'disable_view_sync':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.disableViewSync = valueDes;
          break;
        case r'share_links_in_profile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UserSettingGet200ResponseDataShareLinksInProfileEnum),
          ) as UserSettingGet200ResponseDataShareLinksInProfileEnum?;
          if (valueDes == null) continue;
          result.shareLinksInProfile = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserSettingGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSettingGet200ResponseDataBuilder();
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

class UserSettingGet200ResponseDataShareLinksInProfileEnum extends EnumClass {

  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'[Empty string]')
  static const UserSettingGet200ResponseDataShareLinksInProfileEnum leftSquareBracketEmptyStringRightSquareBracket = _$userSettingGet200ResponseDataShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket;
  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'all_share')
  static const UserSettingGet200ResponseDataShareLinksInProfileEnum allShare = _$userSettingGet200ResponseDataShareLinksInProfileEnum_allShare;
  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'hide_share')
  static const UserSettingGet200ResponseDataShareLinksInProfileEnum hideShare = _$userSettingGet200ResponseDataShareLinksInProfileEnum_hideShare;

  static Serializer<UserSettingGet200ResponseDataShareLinksInProfileEnum> get serializer => _$userSettingGet200ResponseDataShareLinksInProfileEnumSerializer;

  const UserSettingGet200ResponseDataShareLinksInProfileEnum._(String name): super(name);

  static BuiltSet<UserSettingGet200ResponseDataShareLinksInProfileEnum> get values => _$userSettingGet200ResponseDataShareLinksInProfileEnumValues;
  static UserSettingGet200ResponseDataShareLinksInProfileEnum valueOf(String name) => _$userSettingGet200ResponseDataShareLinksInProfileEnumValueOf(name);
}

