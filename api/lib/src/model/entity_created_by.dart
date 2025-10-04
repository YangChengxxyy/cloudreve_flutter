//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/entity_created_by_group.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'entity_created_by.g.dart';

/// EntityCreatedBy
///
/// Properties:
/// * [id] - ID of the user.
/// * [email] - Email of the user. For anonymous session, it is empty.
/// * [nickname] - Display name of the user.
/// * [createdAt] - Time at which the user is created. For anonymous session, this value is invalid.
/// * [group] 
/// * [avatar] - Source type of the profile picture. Empty value indicates no profile picture.
/// * [disableViewSync] - Whether syncing view setting to server is enabled.
/// * [shareLinksInProfile] - What type of share link is visable in user's profile.
@BuiltValue()
abstract class EntityCreatedBy implements Built<EntityCreatedBy, EntityCreatedByBuilder> {
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
  EntityCreatedByGroup get group;

  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueField(wireName: r'avatar')
  EntityCreatedByAvatarEnum? get avatar;
  // enum avatarEnum {  file,  gravatar,  };

  /// Whether syncing view setting to server is enabled.
  @BuiltValueField(wireName: r'disable_view_sync')
  String? get disableViewSync;

  /// What type of share link is visable in user's profile.
  @BuiltValueField(wireName: r'share_links_in_profile')
  EntityCreatedByShareLinksInProfileEnum? get shareLinksInProfile;
  // enum shareLinksInProfileEnum {  [Empty string],  all_share,  hide_share,  };

  EntityCreatedBy._();

  factory EntityCreatedBy([void updates(EntityCreatedByBuilder b)]) = _$EntityCreatedBy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityCreatedByBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityCreatedBy> get serializer => _$EntityCreatedBySerializer();
}

class _$EntityCreatedBySerializer implements PrimitiveSerializer<EntityCreatedBy> {
  @override
  final Iterable<Type> types = const [EntityCreatedBy, _$EntityCreatedBy];

  @override
  final String wireName = r'EntityCreatedBy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityCreatedBy object, {
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
      specifiedType: const FullType(EntityCreatedByGroup),
    );
    yield r'avatar';
    yield object.avatar == null ? null : serializers.serialize(
      object.avatar,
      specifiedType: const FullType.nullable(EntityCreatedByAvatarEnum),
    );
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
        specifiedType: const FullType.nullable(EntityCreatedByShareLinksInProfileEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityCreatedBy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required EntityCreatedByBuilder result,
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
            specifiedType: const FullType(EntityCreatedByGroup),
          ) as EntityCreatedByGroup;
          result.group.replace(valueDes);
          break;
        case r'avatar':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(EntityCreatedByAvatarEnum),
          ) as EntityCreatedByAvatarEnum?;
          if (valueDes == null) continue;
          result.avatar = valueDes;
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
            specifiedType: const FullType.nullable(EntityCreatedByShareLinksInProfileEnum),
          ) as EntityCreatedByShareLinksInProfileEnum?;
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
  EntityCreatedBy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityCreatedByBuilder();
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

class EntityCreatedByAvatarEnum extends EnumClass {

  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueEnumConst(wireName: r'file')
  static const EntityCreatedByAvatarEnum file = _$entityCreatedByAvatarEnum_file;
  /// Source type of the profile picture. Empty value indicates no profile picture.
  @BuiltValueEnumConst(wireName: r'gravatar')
  static const EntityCreatedByAvatarEnum gravatar = _$entityCreatedByAvatarEnum_gravatar;

  static Serializer<EntityCreatedByAvatarEnum> get serializer => _$entityCreatedByAvatarEnumSerializer;

  const EntityCreatedByAvatarEnum._(String name): super(name);

  static BuiltSet<EntityCreatedByAvatarEnum> get values => _$entityCreatedByAvatarEnumValues;
  static EntityCreatedByAvatarEnum valueOf(String name) => _$entityCreatedByAvatarEnumValueOf(name);
}

class EntityCreatedByShareLinksInProfileEnum extends EnumClass {

  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'[Empty string]')
  static const EntityCreatedByShareLinksInProfileEnum leftSquareBracketEmptyStringRightSquareBracket = _$entityCreatedByShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket;
  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'all_share')
  static const EntityCreatedByShareLinksInProfileEnum allShare = _$entityCreatedByShareLinksInProfileEnum_allShare;
  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'hide_share')
  static const EntityCreatedByShareLinksInProfileEnum hideShare = _$entityCreatedByShareLinksInProfileEnum_hideShare;

  static Serializer<EntityCreatedByShareLinksInProfileEnum> get serializer => _$entityCreatedByShareLinksInProfileEnumSerializer;

  const EntityCreatedByShareLinksInProfileEnum._(String name): super(name);

  static BuiltSet<EntityCreatedByShareLinksInProfileEnum> get values => _$entityCreatedByShareLinksInProfileEnumValues;
  static EntityCreatedByShareLinksInProfileEnum valueOf(String name) => _$entityCreatedByShareLinksInProfileEnumValueOf(name);
}

