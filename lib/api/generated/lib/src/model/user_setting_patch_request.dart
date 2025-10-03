//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_setting_patch_request.g.dart';

/// UserSettingPatchRequest
///
/// Properties:
/// * [nick] - Display name.
/// * [groupExpires] - Set this to `true` to manually cancel membership before expiration. Only appliable to Pro edition.
/// * [language] - Preferred UI and Email language.
/// * [preferredTheme] - Set preferred theme color. Available options can be get from [Get site settings](./get-site-settings-289489676e0).
/// * [versionRetentionEnabled] - Whether file version retention is enabled.
/// * [versionRetentionExt] - List of file extensions enabling file version retention. For null or empty list, all extensions are enabled.
/// * [versionRetentionMax] - Max preserved version. For value `0`, all version will be preserved.
/// * [currentPassword] - Current user password, required for updating password.
/// * [newPassword] - New password. If set, `current_password` is required.
/// * [twoFaEnabled] - Whether 2FA is enabled.
/// * [twoFaCode] - Required if `two_fa_enabled` is not `null`.   If `two_fa_enabled` is `true`, this is the 6-digts code for the [new 2FA secret](./prepare-enabling-2fa-308379967e0). If two_fa_enabled` is `false`, this is the 6-digts code for current enabled secret.
/// * [disableViewSync] - Whether explorer view setting sync is disabled.
@BuiltValue()
abstract class UserSettingPatchRequest implements Built<UserSettingPatchRequest, UserSettingPatchRequestBuilder> {
  /// Display name.
  @BuiltValueField(wireName: r'nick')
  String? get nick;

  /// Set this to `true` to manually cancel membership before expiration. Only appliable to Pro edition.
  @BuiltValueField(wireName: r'group_expires')
  bool? get groupExpires;

  /// Preferred UI and Email language.
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// Set preferred theme color. Available options can be get from [Get site settings](./get-site-settings-289489676e0).
  @BuiltValueField(wireName: r'preferred_theme')
  String? get preferredTheme;

  /// Whether file version retention is enabled.
  @BuiltValueField(wireName: r'version_retention_enabled')
  bool? get versionRetentionEnabled;

  /// List of file extensions enabling file version retention. For null or empty list, all extensions are enabled.
  @BuiltValueField(wireName: r'version_retention_ext')
  BuiltList<String>? get versionRetentionExt;

  /// Max preserved version. For value `0`, all version will be preserved.
  @BuiltValueField(wireName: r'version_retention_max')
  int? get versionRetentionMax;

  /// Current user password, required for updating password.
  @BuiltValueField(wireName: r'current_password')
  String? get currentPassword;

  /// New password. If set, `current_password` is required.
  @BuiltValueField(wireName: r'new_password')
  String? get newPassword;

  /// Whether 2FA is enabled.
  @BuiltValueField(wireName: r'two_fa_enabled')
  bool? get twoFaEnabled;

  /// Required if `two_fa_enabled` is not `null`.   If `two_fa_enabled` is `true`, this is the 6-digts code for the [new 2FA secret](./prepare-enabling-2fa-308379967e0). If two_fa_enabled` is `false`, this is the 6-digts code for current enabled secret.
  @BuiltValueField(wireName: r'two_fa_code')
  String? get twoFaCode;

  /// Whether explorer view setting sync is disabled.
  @BuiltValueField(wireName: r'disable_view_sync')
  bool? get disableViewSync;

  UserSettingPatchRequest._();

  factory UserSettingPatchRequest([void updates(UserSettingPatchRequestBuilder b)]) = _$UserSettingPatchRequest;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSettingPatchRequestBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSettingPatchRequest> get serializer => _$UserSettingPatchRequestSerializer();
}

class _$UserSettingPatchRequestSerializer implements PrimitiveSerializer<UserSettingPatchRequest> {
  @override
  final Iterable<Type> types = const [UserSettingPatchRequest, _$UserSettingPatchRequest];

  @override
  final String wireName = r'UserSettingPatchRequest';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSettingPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.nick != null) {
      yield r'nick';
      yield serializers.serialize(
        object.nick,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.groupExpires != null) {
      yield r'group_expires';
      yield serializers.serialize(
        object.groupExpires,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.preferredTheme != null) {
      yield r'preferred_theme';
      yield serializers.serialize(
        object.preferredTheme,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.versionRetentionEnabled != null) {
      yield r'version_retention_enabled';
      yield serializers.serialize(
        object.versionRetentionEnabled,
        specifiedType: const FullType.nullable(bool),
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
    if (object.currentPassword != null) {
      yield r'current_password';
      yield serializers.serialize(
        object.currentPassword,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.newPassword != null) {
      yield r'new_password';
      yield serializers.serialize(
        object.newPassword,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.twoFaEnabled != null) {
      yield r'two_fa_enabled';
      yield serializers.serialize(
        object.twoFaEnabled,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.twoFaCode != null) {
      yield r'two_fa_code';
      yield serializers.serialize(
        object.twoFaCode,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.disableViewSync != null) {
      yield r'disable_view_sync';
      yield serializers.serialize(
        object.disableViewSync,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSettingPatchRequest object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserSettingPatchRequestBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'nick':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nick = valueDes;
          break;
        case r'group_expires':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.groupExpires = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.language = valueDes;
          break;
        case r'preferred_theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.preferredTheme = valueDes;
          break;
        case r'version_retention_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
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
        case r'current_password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.currentPassword = valueDes;
          break;
        case r'new_password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.newPassword = valueDes;
          break;
        case r'two_fa_enabled':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.twoFaEnabled = valueDes;
          break;
        case r'two_fa_code':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.twoFaCode = valueDes;
          break;
        case r'disable_view_sync':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.disableViewSync = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  UserSettingPatchRequest deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSettingPatchRequestBuilder();
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

