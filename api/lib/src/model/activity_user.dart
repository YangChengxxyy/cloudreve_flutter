//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/activity_user_group.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'activity_user.g.dart';

/// The user who triggered the activity (if any). `null` value indicates this operation is executed by system or an anonymous visitor.
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
abstract class ActivityUser implements Built<ActivityUser, ActivityUserBuilder> {
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
  ActivityUserGroup get group;

  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueField(wireName: r'avatar')
  ActivityUserAvatarEnum? get avatar;
  // enum avatarEnum {  file,  gravatar,  };

  /// What type of share link is visable in user's profile.
  @BuiltValueField(wireName: r'share_links_in_profile')
  ActivityUserShareLinksInProfileEnum? get shareLinksInProfile;
  // enum shareLinksInProfileEnum {  [Empty string],  all_share,  hide_share,  };

  ActivityUser._();

  factory ActivityUser([void updates(ActivityUserBuilder b)]) = _$ActivityUser;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ActivityUserBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ActivityUser> get serializer => _$ActivityUserSerializer();
}

class _$ActivityUserSerializer implements PrimitiveSerializer<ActivityUser> {
  @override
  final Iterable<Type> types = const [ActivityUser, _$ActivityUser];

  @override
  final String wireName = r'ActivityUser';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ActivityUser object, {
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
      specifiedType: const FullType(ActivityUserGroup),
    );
    yield r'avatar';
    yield object.avatar == null ? null : serializers.serialize(
      object.avatar,
      specifiedType: const FullType.nullable(ActivityUserAvatarEnum),
    );
    if (object.shareLinksInProfile != null) {
      yield r'share_links_in_profile';
      yield serializers.serialize(
        object.shareLinksInProfile,
        specifiedType: const FullType.nullable(ActivityUserShareLinksInProfileEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ActivityUser object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ActivityUserBuilder result,
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
            specifiedType: const FullType(ActivityUserGroup),
          ) as ActivityUserGroup;
          result.group.replace(valueDes);
          break;
        case r'avatar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ActivityUserAvatarEnum),
          ) as ActivityUserAvatarEnum?;
          if (valueDes == null) continue;
          result.avatar = valueDes;
          break;
        case r'share_links_in_profile':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ActivityUserShareLinksInProfileEnum),
          ) as ActivityUserShareLinksInProfileEnum?;
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
  ActivityUser deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ActivityUserBuilder();
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

class ActivityUserAvatarEnum extends EnumClass {

  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueEnumConst(wireName: r'file')
  static const ActivityUserAvatarEnum file = _$activityUserAvatarEnum_file;
  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueEnumConst(wireName: r'gravatar')
  static const ActivityUserAvatarEnum gravatar = _$activityUserAvatarEnum_gravatar;

  static Serializer<ActivityUserAvatarEnum> get serializer => _$activityUserAvatarEnumSerializer;

  const ActivityUserAvatarEnum._(String name): super(name);

  static BuiltSet<ActivityUserAvatarEnum> get values => _$activityUserAvatarEnumValues;
  static ActivityUserAvatarEnum valueOf(String name) => _$activityUserAvatarEnumValueOf(name);
}

class ActivityUserShareLinksInProfileEnum extends EnumClass {

  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'[Empty string]')
  static const ActivityUserShareLinksInProfileEnum leftSquareBracketEmptyStringRightSquareBracket = _$activityUserShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket;
  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'all_share')
  static const ActivityUserShareLinksInProfileEnum allShare = _$activityUserShareLinksInProfileEnum_allShare;
  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'hide_share')
  static const ActivityUserShareLinksInProfileEnum hideShare = _$activityUserShareLinksInProfileEnum_hideShare;

  static Serializer<ActivityUserShareLinksInProfileEnum> get serializer => _$activityUserShareLinksInProfileEnumSerializer;

  const ActivityUserShareLinksInProfileEnum._(String name): super(name);

  static BuiltSet<ActivityUserShareLinksInProfileEnum> get values => _$activityUserShareLinksInProfileEnumValues;
  static ActivityUserShareLinksInProfileEnum valueOf(String name) => _$activityUserShareLinksInProfileEnumValueOf(name);
}

