//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/user_search_get200_response_data_inner_group.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'user_search_get200_response_data_inner.g.dart';

/// UserSearchGet200ResponseDataInner
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
abstract class UserSearchGet200ResponseDataInner implements Built<UserSearchGet200ResponseDataInner, UserSearchGet200ResponseDataInnerBuilder> {
  /// ID of the user.
  @BuiltValueField(wireName: r'id')
  String get id;

  /// Email of the user. For anonymous session, it is empty.
  @BuiltValueField(wireName: r'email')
  String? get email;

  /// Display name of the user.
  @BuiltValueField(wireName: r'nickname')
  String? get nickname;

  /// Time at which the user is created. For anonymous session, this value is invalid.
  @BuiltValueField(wireName: r'created_at')
  DateTime get createdAt;

  @BuiltValueField(wireName: r'group')
  UserSearchGet200ResponseDataInnerGroup get group;

  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueField(wireName: r'avatar')
  UserSearchGet200ResponseDataInnerAvatarEnum? get avatar;
  // enum avatarEnum {  file,  gravatar,  };

  /// What type of share link is visable in user's profile.
  @BuiltValueField(wireName: r'share_links_in_profile')
  UserSearchGet200ResponseDataInnerShareLinksInProfileEnum? get shareLinksInProfile;
  // enum shareLinksInProfileEnum {  [Empty string],  all_share,  hide_share,  };

  UserSearchGet200ResponseDataInner._();

  factory UserSearchGet200ResponseDataInner([void updates(UserSearchGet200ResponseDataInnerBuilder b)]) = _$UserSearchGet200ResponseDataInner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(UserSearchGet200ResponseDataInnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<UserSearchGet200ResponseDataInner> get serializer => _$UserSearchGet200ResponseDataInnerSerializer();
}

class _$UserSearchGet200ResponseDataInnerSerializer implements PrimitiveSerializer<UserSearchGet200ResponseDataInner> {
  @override
  final Iterable<Type> types = const [UserSearchGet200ResponseDataInner, _$UserSearchGet200ResponseDataInner];

  @override
  final String wireName = r'UserSearchGet200ResponseDataInner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    UserSearchGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    yield r'id';
    yield serializers.serialize(
      object.id,
      specifiedType: const FullType(String),
    );
    if (object.email != null) {
      yield r'email';
      yield serializers.serialize(
        object.email,
        specifiedType: const FullType.nullable(String),
      );
    }
    yield r'nickname';
    yield object.nickname == null ? null : serializers.serialize(
      object.nickname,
      specifiedType: const FullType.nullable(String),
    );
    yield r'created_at';
    yield serializers.serialize(
      object.createdAt,
      specifiedType: const FullType(DateTime),
    );
    yield r'group';
    yield serializers.serialize(
      object.group,
      specifiedType: const FullType(UserSearchGet200ResponseDataInnerGroup),
    );
    yield r'avatar';
    yield object.avatar == null ? null : serializers.serialize(
      object.avatar,
      specifiedType: const FullType.nullable(UserSearchGet200ResponseDataInnerAvatarEnum),
    );
    if (object.shareLinksInProfile != null) {
      yield r'share_links_in_profile';
      yield serializers.serialize(
        object.shareLinksInProfile,
        specifiedType: const FullType.nullable(UserSearchGet200ResponseDataInnerShareLinksInProfileEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    UserSearchGet200ResponseDataInner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required UserSearchGet200ResponseDataInnerBuilder result,
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
            specifiedType: const FullType(UserSearchGet200ResponseDataInnerGroup),
          ) as UserSearchGet200ResponseDataInnerGroup;
          result.group.replace(valueDes);
          break;
        case r'avatar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UserSearchGet200ResponseDataInnerAvatarEnum),
          ) as UserSearchGet200ResponseDataInnerAvatarEnum?;
          if (valueDes == null) continue;
          result.avatar = valueDes;
          break;
        case r'share_links_in_profile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(UserSearchGet200ResponseDataInnerShareLinksInProfileEnum),
          ) as UserSearchGet200ResponseDataInnerShareLinksInProfileEnum?;
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
  UserSearchGet200ResponseDataInner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = UserSearchGet200ResponseDataInnerBuilder();
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

class UserSearchGet200ResponseDataInnerAvatarEnum extends EnumClass {

  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueEnumConst(wireName: r'file')
  static const UserSearchGet200ResponseDataInnerAvatarEnum file = _$userSearchGet200ResponseDataInnerAvatarEnum_file;
  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueEnumConst(wireName: r'gravatar')
  static const UserSearchGet200ResponseDataInnerAvatarEnum gravatar = _$userSearchGet200ResponseDataInnerAvatarEnum_gravatar;

  static Serializer<UserSearchGet200ResponseDataInnerAvatarEnum> get serializer => _$userSearchGet200ResponseDataInnerAvatarEnumSerializer;

  const UserSearchGet200ResponseDataInnerAvatarEnum._(String name): super(name);

  static BuiltSet<UserSearchGet200ResponseDataInnerAvatarEnum> get values => _$userSearchGet200ResponseDataInnerAvatarEnumValues;
  static UserSearchGet200ResponseDataInnerAvatarEnum valueOf(String name) => _$userSearchGet200ResponseDataInnerAvatarEnumValueOf(name);
}

class UserSearchGet200ResponseDataInnerShareLinksInProfileEnum extends EnumClass {

  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'[Empty string]')
  static const UserSearchGet200ResponseDataInnerShareLinksInProfileEnum leftSquareBracketEmptyStringRightSquareBracket = _$userSearchGet200ResponseDataInnerShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket;
  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'all_share')
  static const UserSearchGet200ResponseDataInnerShareLinksInProfileEnum allShare = _$userSearchGet200ResponseDataInnerShareLinksInProfileEnum_allShare;
  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'hide_share')
  static const UserSearchGet200ResponseDataInnerShareLinksInProfileEnum hideShare = _$userSearchGet200ResponseDataInnerShareLinksInProfileEnum_hideShare;

  static Serializer<UserSearchGet200ResponseDataInnerShareLinksInProfileEnum> get serializer => _$userSearchGet200ResponseDataInnerShareLinksInProfileEnumSerializer;

  const UserSearchGet200ResponseDataInnerShareLinksInProfileEnum._(String name): super(name);

  static BuiltSet<UserSearchGet200ResponseDataInnerShareLinksInProfileEnum> get values => _$userSearchGet200ResponseDataInnerShareLinksInProfileEnumValues;
  static UserSearchGet200ResponseDataInnerShareLinksInProfileEnum valueOf(String name) => _$userSearchGet200ResponseDataInnerShareLinksInProfileEnumValueOf(name);
}

