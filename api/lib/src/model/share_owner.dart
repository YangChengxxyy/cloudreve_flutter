//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/group.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'share_owner.g.dart';

/// Owner of this share link.
///
/// Properties:
/// * [id] - ID of the user.
/// * [email] - Email of the user. For anonymous session, it is empty.
/// * [nickname] - Display name of the user.
/// * [createdAt] - Time at which the user is created. For anonymous session, this value is invalid.
/// * [group] 
/// * [disableViewSync] - Whether syncing view setting to server is enabled.
/// * [shareLinksInProfile] - What type of share link is visable in user's profile.
@BuiltValue()
abstract class ShareOwner implements Built<ShareOwner, ShareOwnerBuilder> {
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
  Group? get group;

  /// Whether syncing view setting to server is enabled.
  @BuiltValueField(wireName: r'disable_view_sync')
  String? get disableViewSync;

  /// What type of share link is visable in user's profile.
  @BuiltValueField(wireName: r'share_links_in_profile')
  ShareOwnerShareLinksInProfileEnum? get shareLinksInProfile;
  // enum shareLinksInProfileEnum {  [Empty string],  all_share,  hide_share,  };

  ShareOwner._();

  factory ShareOwner([void updates(ShareOwnerBuilder b)]) = _$ShareOwner;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShareOwnerBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ShareOwner> get serializer => _$ShareOwnerSerializer();
}

class _$ShareOwnerSerializer implements PrimitiveSerializer<ShareOwner> {
  @override
  final Iterable<Type> types = const [ShareOwner, _$ShareOwner];

  @override
  final String wireName = r'ShareOwner';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ShareOwner object, {
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
        specifiedType: const FullType(Group),
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
        specifiedType: const FullType.nullable(ShareOwnerShareLinksInProfileEnum),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ShareOwner object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ShareOwnerBuilder result,
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
            specifiedType: const FullType(Group),
          ) as Group;
          result.group.replace(valueDes);
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
            specifiedType: const FullType.nullable(ShareOwnerShareLinksInProfileEnum),
          ) as ShareOwnerShareLinksInProfileEnum?;
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
  ShareOwner deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShareOwnerBuilder();
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

class ShareOwnerShareLinksInProfileEnum extends EnumClass {

  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'[Empty string]')
  static const ShareOwnerShareLinksInProfileEnum leftSquareBracketEmptyStringRightSquareBracket = _$shareOwnerShareLinksInProfileEnum_leftSquareBracketEmptyStringRightSquareBracket;
  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'all_share')
  static const ShareOwnerShareLinksInProfileEnum allShare = _$shareOwnerShareLinksInProfileEnum_allShare;
  /// What type of share link is visable in user's profile.
  @BuiltValueEnumConst(wireName: r'hide_share')
  static const ShareOwnerShareLinksInProfileEnum hideShare = _$shareOwnerShareLinksInProfileEnum_hideShare;

  static Serializer<ShareOwnerShareLinksInProfileEnum> get serializer => _$shareOwnerShareLinksInProfileEnumSerializer;

  const ShareOwnerShareLinksInProfileEnum._(String name): super(name);

  static BuiltSet<ShareOwnerShareLinksInProfileEnum> get values => _$shareOwnerShareLinksInProfileEnumValues;
  static ShareOwnerShareLinksInProfileEnum valueOf(String name) => _$shareOwnerShareLinksInProfileEnumValueOf(name);
}

