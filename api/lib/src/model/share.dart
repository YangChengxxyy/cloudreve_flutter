//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/share_permission_setting.dart';
import 'package:cloudreve_api_client/src/model/share_owner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'share.g.dart';

/// If share link is not accessible to current user (`unlocked` is `false`), several fields wil be redacted.
///
/// Properties:
/// * [id] - ID of the share link.
/// * [name] - Name of the shared file/folder.
/// * [visited] - Count of views to this share link.
/// * [downloaded] - Count of downloads to this share link. Only appliable to share links with a file(not folder) as source type.
/// * [price] - Price of this share link, in points.
/// * [unlocked] - Whether this share link is accessible to current user.
/// * [sourceType] - Type of the shared source file.
/// * [owner] 
/// * [createdAt] - Create time.
/// * [expired] - Whether this link is already expired.
/// * [url] - URL of the share link.
/// * [permissionSetting] 
/// * [isPrivate] - Only visable to owner. Whether this link is private (with password).
/// * [password] - Only visable to owner. Password of this share.
/// * [sourceUri] - Only visable to owner, the [`File URI`](https://docs.cloudreve.org/api/file-uri) of the source file in owner's `my` filesystem.
/// * [shareView] - Only visable to owner, whether the explorer view setting is shared with others.
/// * [showReadme] - Whether client UI should automatically render and shoe `README.md` file. Only for share folder.
/// * [passwordProtected] - Whether this share link is private (password protected).
@BuiltValue()
abstract class Share implements Built<Share, ShareBuilder> {
  /// ID of the share link.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Name of the shared file/folder.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// Count of views to this share link.
  @BuiltValueField(wireName: r'visited')
  int? get visited;

  /// Count of downloads to this share link. Only appliable to share links with a file(not folder) as source type.
  @BuiltValueField(wireName: r'downloaded')
  int? get downloaded;

  /// Price of this share link, in points.
  @BuiltValueField(wireName: r'price')
  int? get price;

  /// Whether this share link is accessible to current user.
  @BuiltValueField(wireName: r'unlocked')
  bool? get unlocked;

  /// Type of the shared source file.
  @BuiltValueField(wireName: r'source_type')
  ShareSourceTypeEnum? get sourceType;
  // enum sourceTypeEnum {  0,  1,  };

  @BuiltValueField(wireName: r'owner')
  ShareOwner? get owner;

  /// Create time.
  @BuiltValueField(wireName: r'created_at')
  DateTime? get createdAt;

  /// Whether this link is already expired.
  @BuiltValueField(wireName: r'expired')
  bool? get expired;

  /// URL of the share link.
  @BuiltValueField(wireName: r'url')
  String? get url;

  @BuiltValueField(wireName: r'permission_setting')
  SharePermissionSetting? get permissionSetting;

  /// Only visable to owner. Whether this link is private (with password).
  @BuiltValueField(wireName: r'is_private')
  bool? get isPrivate;

  /// Only visable to owner. Password of this share.
  @BuiltValueField(wireName: r'password')
  String? get password;

  /// Only visable to owner, the [`File URI`](https://docs.cloudreve.org/api/file-uri) of the source file in owner's `my` filesystem.
  @BuiltValueField(wireName: r'source_uri')
  String? get sourceUri;

  /// Only visable to owner, whether the explorer view setting is shared with others.
  @BuiltValueField(wireName: r'share_view')
  bool? get shareView;

  /// Whether client UI should automatically render and shoe `README.md` file. Only for share folder.
  @BuiltValueField(wireName: r'show_readme')
  bool? get showReadme;

  /// Whether this share link is private (password protected).
  @BuiltValueField(wireName: r'password_protected')
  bool? get passwordProtected;

  Share._();

  factory Share([void updates(ShareBuilder b)]) = _$Share;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ShareBuilder b) => b
      ..sourceType = ShareSourceTypeEnum.number1;

  @BuiltValueSerializer(custom: true)
  static Serializer<Share> get serializer => _$ShareSerializer();
}

class _$ShareSerializer implements PrimitiveSerializer<Share> {
  @override
  final Iterable<Type> types = const [Share, _$Share];

  @override
  final String wireName = r'Share';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    Share object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.id != null) {
      yield r'id';
      yield serializers.serialize(
        object.id,
        specifiedType: const FullType(String),
      );
    }
    if (object.name != null) {
      yield r'name';
      yield serializers.serialize(
        object.name,
        specifiedType: const FullType(String),
      );
    }
    if (object.visited != null) {
      yield r'visited';
      yield serializers.serialize(
        object.visited,
        specifiedType: const FullType(int),
      );
    }
    if (object.downloaded != null) {
      yield r'downloaded';
      yield serializers.serialize(
        object.downloaded,
        specifiedType: const FullType(int),
      );
    }
    if (object.price != null) {
      yield r'price';
      yield serializers.serialize(
        object.price,
        specifiedType: const FullType(int),
      );
    }
    if (object.unlocked != null) {
      yield r'unlocked';
      yield serializers.serialize(
        object.unlocked,
        specifiedType: const FullType(bool),
      );
    }
    if (object.sourceType != null) {
      yield r'source_type';
      yield serializers.serialize(
        object.sourceType,
        specifiedType: const FullType(ShareSourceTypeEnum),
      );
    }
    if (object.owner != null) {
      yield r'owner';
      yield serializers.serialize(
        object.owner,
        specifiedType: const FullType(ShareOwner),
      );
    }
    if (object.createdAt != null) {
      yield r'created_at';
      yield serializers.serialize(
        object.createdAt,
        specifiedType: const FullType(DateTime),
      );
    }
    if (object.expired != null) {
      yield r'expired';
      yield serializers.serialize(
        object.expired,
        specifiedType: const FullType(bool),
      );
    }
    if (object.url != null) {
      yield r'url';
      yield serializers.serialize(
        object.url,
        specifiedType: const FullType(String),
      );
    }
    if (object.permissionSetting != null) {
      yield r'permission_setting';
      yield serializers.serialize(
        object.permissionSetting,
        specifiedType: const FullType(SharePermissionSetting),
      );
    }
    if (object.isPrivate != null) {
      yield r'is_private';
      yield serializers.serialize(
        object.isPrivate,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.password != null) {
      yield r'password';
      yield serializers.serialize(
        object.password,
        specifiedType: const FullType(String),
      );
    }
    if (object.sourceUri != null) {
      yield r'source_uri';
      yield serializers.serialize(
        object.sourceUri,
        specifiedType: const FullType(String),
      );
    }
    if (object.shareView != null) {
      yield r'share_view';
      yield serializers.serialize(
        object.shareView,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.showReadme != null) {
      yield r'show_readme';
      yield serializers.serialize(
        object.showReadme,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.passwordProtected != null) {
      yield r'password_protected';
      yield serializers.serialize(
        object.passwordProtected,
        specifiedType: const FullType.nullable(bool),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    Share object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ShareBuilder result,
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
        case r'name':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.name = valueDes;
          break;
        case r'visited':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.visited = valueDes;
          break;
        case r'downloaded':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.downloaded = valueDes;
          break;
        case r'price':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.price = valueDes;
          break;
        case r'unlocked':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.unlocked = valueDes;
          break;
        case r'source_type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ShareSourceTypeEnum),
          ) as ShareSourceTypeEnum;
          result.sourceType = valueDes;
          break;
        case r'owner':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(ShareOwner),
          ) as ShareOwner;
          result.owner.replace(valueDes);
          break;
        case r'created_at':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(DateTime),
          ) as DateTime;
          result.createdAt = valueDes;
          break;
        case r'expired':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.expired = valueDes;
          break;
        case r'url':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.url = valueDes;
          break;
        case r'permission_setting':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(SharePermissionSetting),
          ) as SharePermissionSetting;
          result.permissionSetting.replace(valueDes);
          break;
        case r'is_private':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.isPrivate = valueDes;
          break;
        case r'password':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.password = valueDes;
          break;
        case r'source_uri':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(String),
          ) as String;
          result.sourceUri = valueDes;
          break;
        case r'share_view':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.shareView = valueDes;
          break;
        case r'show_readme':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.showReadme = valueDes;
          break;
        case r'password_protected':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.passwordProtected = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  Share deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ShareBuilder();
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

class ShareSourceTypeEnum extends EnumClass {

  /// Type of the shared source file.
  @BuiltValueEnumConst(wireNumber: 0)
  static const ShareSourceTypeEnum number0 = _$shareSourceTypeEnum_number0;
  /// Type of the shared source file.
  @BuiltValueEnumConst(wireNumber: 1)
  static const ShareSourceTypeEnum number1 = _$shareSourceTypeEnum_number1;

  static Serializer<ShareSourceTypeEnum> get serializer => _$shareSourceTypeEnumSerializer;

  const ShareSourceTypeEnum._(String name): super(name);

  static BuiltSet<ShareSourceTypeEnum> get values => _$shareSourceTypeEnumValues;
  static ShareSourceTypeEnum valueOf(String name) => _$shareSourceTypeEnumValueOf(name);
}

