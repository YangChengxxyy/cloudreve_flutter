//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/group.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user.g.dart';

/// User
///
/// Properties:
/// * [id] - ID of the user.
/// * [email] - Email of the user. For anonymous session, it is empty.
/// * [nickname] - Display name of the user.
/// * [createdAt] - Time at which the user is created. For anonymous session, this value is invalid.
/// * [anonymous] - Indicating whether the session is anonymous.
/// * [group] 
/// * [status] 
/// * [avatar] - Source type of the profile picture. Empty value indicates no profile picture.
/// * [preferredTheme] - Primary color of preferred theme.
/// * [credit] - Credit balance.
/// * [language] - Primary language.
/// * [disableViewSync] - Whether syncing view setting to server is enabled.
/// * [shareLinksInProfile] - What type of share link is visable in user's profile.
@BuiltValue()
abstract class User implements Built<User, UserBuilder> {
  /// ID of the user.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Email of the user. For anonymous session, it is empty.
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Display name of the user.
  @BuiltValueField(wireName: r'nickname')
  String? get nickname;

  /// Time at which the user is created. For anonymous session, this value is invalid.
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  /// Indicating whether the session is anonymous.
  @BuiltValueField(wireName: r'anonymous')
  bool? get anonymous;

  @BuiltValueField(wireName: r'group')
  Group? get group;

  @BuiltValueField(wireName: r'status')
  UserStatusEnum? get status;
  // enum statusEnum {  active,  inactive,  manual_banned,  sys_banned,  };

  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueField(wireName: r'avatar')
  UserAvatarEnum? get avatar;
  // enum avatarEnum {  file,  gravatar,  };

  /// Primary color of preferred theme.
  @BuiltValueField(wireName: r'preferred_theme')
  String? get preferredTheme;

  /// Credit balance.
  @BuiltValueField(wireName: r'credit')
  int? get credit;

  /// Primary language.
  @BuiltValueField(wireName: r'language')
  String? get language;

  /// Whether syncing view setting to server is enabled.
  @BuiltValueField(wireName: r'disable_view_sync')
  String? get disableViewSync;

  /// What type of share link is visable in user's profile.
  @BuiltValueField(wireName: r'share_links_in_profile')
  UserShareLinksInProfileEnum? get shareLinksInProfile;
  // enum shareLinksInProfileEnum {  [Empty string],  all_share,  hide_share,  };

  User._();

  factory User([void updates(UserBuilder b)]) = _$User;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<User> get serializer => _$UserSerializer();
}

class _$UserSerializer implements PrimitiveSerializer<User> {
  @override
  final Iterable<Type> types = const [User, _$User];

  @override
  final String wireName = r'User';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.nickname != null) {
      yield r'nickname';
      yield serializers.serialize(
        object.nickname,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.anonymous != null) {
      yield r'anonymous';
      yield serializers.serialize(
        object.anonymous,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType(Group),
      );
    }
    if (object.status != null) {
      yield r'status';
      yield serializers.serialize(
        object.status,
        specifiedType: const FullType.nullable(UserStatusEnum),
      );
    }
    if (object.avatar != null) {
      yield r'avatar';
      yield serializers.serialize(
        object.avatar,
        specifiedType: const FullType.nullable(UserAvatarEnum),
      );
    }
    if (object.preferredTheme != null) {
      yield r'preferred_theme';
      yield serializers.serialize(
        object.preferredTheme,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.credit != null) {
      yield r'credit';
      yield serializers.serialize(
        object.credit,
        specifiedType: const FullType.nullable(int),
      );
    }
    if (object.language != null) {
      yield r'language';
      yield serializers.serialize(
        object.language,
        specifiedType: const FullType(String),
      );
    }
    if (object.disableViewSync != null) {
      yield r'disable_view_sync';
      yield serializers.serialize(
        object.disableViewSync,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.shareLinksInProfile != null) {
      yield r'share_links_in_profile';
      yield serializers.serialize(
        object.shareLinksInProfile,
        specifiedType: const FullType.nullable(UserShareLinksInProfileEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    User object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'id':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.id = valueDes;
          break;
        case r'email':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.email = valueDes;
          break;
        case r'nickname':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.nickname = valueDes;
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'anonymous':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.anonymous = valueDes;
          break;
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(Group),
          ) as Group;
          result.group.replace(valueDes);
          break;
        case r'status':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UserStatusEnum),
          ) as UserStatusEnum?;
          if (valueDes == null) continue;
          result.status = valueDes;
          break;
        case r'avatar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UserAvatarEnum),
          ) as UserAvatarEnum?;
          if (valueDes == null) continue;
          result.avatar = valueDes;
          break;
        case r'preferred_theme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.preferredTheme = valueDes;
          break;
        case r'credit':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.credit = valueDes;
          break;
        case r'language':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.language = valueDes;
          break;
        case r'disable_view_sync':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.disableViewSync = valueDes;
          break;
        case r'share_links_in_profile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UserShareLinksInProfileEnum),
          ) as UserShareLinksInProfileEnum?;
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
  User deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserBuilder();
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

class UserStatusEnum extends EnumClass {

  @BuiltValueEnumConst(wireName: r'active')
  static const UserStatusEnum active = _$userStatusEnum_active;
  @BuiltValueEnumConst(wireName: r'inactive')
  static const UserStatusEnum inactive = _$userStatusEnum_inactive;
  @BuiltValueEnumConst(wireName: r'manual_banned')
  static const UserStatusEnum manualBanned = _$userStatusEnum_manualBanned;
  @BuiltValueEnumConst(wireName: r'sys_banned')
  static const UserStatusEnum sysBanned = _$userStatusEnum_sysBanned;

  static Serializer<UserStatusEnum> get serializer => _$userStatusEnumSerializer;

  const UserStatusEnum._(String name): super(name);

  static BuiltSet<UserStatusEnum> get values => _$userStatusEnumValues;
  static UserStatusEnum valueOf(String name) => _$userStatusEnumValueOf(name);
}

class UserAvatarEnum extends EnumClass {

  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueEnumConst(wireName: r'file')
  static const UserAvatarEnum file = _$userAvatarEnum_file;
  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueEnumConst(wireName: r'gravatar')
  static const UserAvatarEnum gravatar = _$userAvatarEnum_gravatar;

  static Serializer<UserAvatarEnum> get serializer => _$userAvatarEnumSerializer;

  const UserAvatarEnum._(String name): super(name);

  static BuiltSet<UserAvatarEnum> get values => _$userAvatarEnumValues;
  static UserAvatarEnum valueOf(String name) => _$userAvatarEnumValueOf(name);
}

class UserShareLinksInProfileEnum extends EnumClass {

  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'[Empty string]')
  static const UserShareLinksInProfileEnum leftSquareBracketEmptyStringRightSquareBracket = _$userShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket;
  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'all_share')
  static const UserShareLinksInProfileEnum allShare = _$userShareLinksInProfileEnum_allShare;
  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'hide_share')
  static const UserShareLinksInProfileEnum hideShare = _$userShareLinksInProfileEnum_hideShare;

  static Serializer<UserShareLinksInProfileEnum> get serializer => _$userShareLinksInProfileEnumSerializer;

  const UserShareLinksInProfileEnum._(String name): super(name);

  static BuiltSet<UserShareLinksInProfileEnum> get values => _$userShareLinksInProfileEnumValues;
  static UserShareLinksInProfileEnum valueOf(String name) => _$userShareLinksInProfileEnumValueOf(name);
}

