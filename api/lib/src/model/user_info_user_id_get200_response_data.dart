//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/user_info_user_id_get200_response_data_group.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_info_user_id_get200_response_data.g.dart';

/// Response content
///
/// Properties:
/// * [id] - ID of the user.
/// * [email] - Email of the user. For anonymous session, it is empty.
/// * [nickname] - Display name of the user.
/// * [createdAt] - Time at which the user is created. For anonymous session, this value is invalid.
/// * [group] 
/// * [avatar] - Source type of the profile picture. Empty value indicates no profile picture.
/// * [shareLinksInProfile] - What type of share link is visable in user's profile.
@BuiltValue()
abstract class UserInfoUserIdGet200ResponseData implements Built<UserInfoUserIdGet200ResponseData, UserInfoUserIdGet200ResponseDataBuilder> {
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

  @BuiltValueField(wireName: r'group')
  UserInfoUserIdGet200ResponseDataGroup? get group;

  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueField(wireName: r'avatar')
  UserInfoUserIdGet200ResponseDataAvatarEnum? get avatar;
  // enum avatarEnum {  file,  gravatar,  };

  /// What type of share link is visable in user's profile.
  @BuiltValueField(wireName: r'share_links_in_profile')
  UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum? get shareLinksInProfile;
  // enum shareLinksInProfileEnum {  [Empty string],  all_share,  hide_share,  };

  UserInfoUserIdGet200ResponseData._();

  factory UserInfoUserIdGet200ResponseData([void updates(UserInfoUserIdGet200ResponseDataBuilder b)]) = _$UserInfoUserIdGet200ResponseData;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserInfoUserIdGet200ResponseDataBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserInfoUserIdGet200ResponseData> get serializer => _$UserInfoUserIdGet200ResponseDataSerializer();
}

class _$UserInfoUserIdGet200ResponseDataSerializer implements PrimitiveSerializer<UserInfoUserIdGet200ResponseData> {
  @override
  final Iterable<Type> types = const [UserInfoUserIdGet200ResponseData, _$UserInfoUserIdGet200ResponseData];

  @override
  final String wireName = r'UserInfoUserIdGet200ResponseData';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserInfoUserIdGet200ResponseData object, {
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
    if (object.group != null) {
      yield r'group';
      yield serializers.serialize(
        object.group,
        specifiedType: const FullType(UserInfoUserIdGet200ResponseDataGroup),
      );
    }
    if (object.avatar != null) {
      yield r'avatar';
      yield serializers.serialize(
        object.avatar,
        specifiedType: const FullType.nullable(UserInfoUserIdGet200ResponseDataAvatarEnum),
      );
    }
    if (object.shareLinksInProfile != null) {
      yield r'share_links_in_profile';
      yield serializers.serialize(
        object.shareLinksInProfile,
        specifiedType: const FullType.nullable(UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserInfoUserIdGet200ResponseData object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserInfoUserIdGet200ResponseDataBuilder result,
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
        case r'group':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(UserInfoUserIdGet200ResponseDataGroup),
          ) as UserInfoUserIdGet200ResponseDataGroup;
          result.group.replace(valueDes);
          break;
        case r'avatar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UserInfoUserIdGet200ResponseDataAvatarEnum),
          ) as UserInfoUserIdGet200ResponseDataAvatarEnum?;
          if (valueDes == null) continue;
          result.avatar = valueDes;
          break;
        case r'share_links_in_profile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum),
          ) as UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum?;
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
  UserInfoUserIdGet200ResponseData deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserInfoUserIdGet200ResponseDataBuilder();
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

class UserInfoUserIdGet200ResponseDataAvatarEnum extends EnumClass {

  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueEnumConst(wireName: r'file')
  static const UserInfoUserIdGet200ResponseDataAvatarEnum file = _$userInfoUserIdGet200ResponseDataAvatarEnum_file;
  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueEnumConst(wireName: r'gravatar')
  static const UserInfoUserIdGet200ResponseDataAvatarEnum gravatar = _$userInfoUserIdGet200ResponseDataAvatarEnum_gravatar;

  static Serializer<UserInfoUserIdGet200ResponseDataAvatarEnum> get serializer => _$userInfoUserIdGet200ResponseDataAvatarEnumSerializer;

  const UserInfoUserIdGet200ResponseDataAvatarEnum._(String name): super(name);

  static BuiltSet<UserInfoUserIdGet200ResponseDataAvatarEnum> get values => _$userInfoUserIdGet200ResponseDataAvatarEnumValues;
  static UserInfoUserIdGet200ResponseDataAvatarEnum valueOf(String name) => _$userInfoUserIdGet200ResponseDataAvatarEnumValueOf(name);
}

class UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum extends EnumClass {

  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'[Empty string]')
  static const UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum leftSquareBracketEmptyStringRightSquareBracket = _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket;
  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'all_share')
  static const UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum allShare = _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnum_allShare;
  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'hide_share')
  static const UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum hideShare = _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnum_hideShare;

  static Serializer<UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum> get serializer => _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnumSerializer;

  const UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum._(String name): super(name);

  static BuiltSet<UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum> get values => _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnumValues;
  static UserInfoUserIdGet200ResponseDataShareLinksInProfileEnum valueOf(String name) => _$userInfoUserIdGet200ResponseDataShareLinksInProfileEnumValueOf(name);
}

