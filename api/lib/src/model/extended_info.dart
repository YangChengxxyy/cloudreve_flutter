//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/share.dart';
import 'package:cloudreve_api_client/src/model/extended_info_direct_links_inner.dart';
import 'package:built_collection/built_collection.dart';
import 'package:cloudreve_api_client/src/model/permission_setting.dart';
import 'package:cloudreve_api_client/src/model/entity.dart';
import 'package:cloudreve_api_client/src/model/extended_info_storage_policy.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'extended_info.g.dart';

/// ExtendedInfo
///
/// Properties:
/// * [storagePolicy] 
/// * [storagePolicyInherited] - Only applies to folders. Indicating whether this storage policy setting is inherited from parent folders.
/// * [storageUsed] - Storage used by this file, equals to sum of size for all referred blobs.
/// * [shares] - List of share links for this file.
/// * [entities] 
/// * [permissions] 
/// * [directLinks] - List of redirected direct links. Only visable to file owners or administrators.
@BuiltValue()
abstract class ExtendedInfo implements Built<ExtendedInfo, ExtendedInfoBuilder> {
  @BuiltValueField(wireName: r'storage_policy')
  ExtendedInfoStoragePolicy? get storagePolicy;

  /// Only applies to folders. Indicating whether this storage policy setting is inherited from parent folders.
  @BuiltValueField(wireName: r'storage_policy_inherited')
  bool? get storagePolicyInherited;

  /// Storage used by this file, equals to sum of size for all referred blobs.
  @BuiltValueField(wireName: r'storage_used')
  int? get storageUsed;

  /// List of share links for this file.
  @BuiltValueField(wireName: r'shares')
  BuiltList<Share>? get shares;

  @BuiltValueField(wireName: r'entities')
  BuiltList<Entity>? get entities;

  @BuiltValueField(wireName: r'permissions')
  PermissionSetting? get permissions;

  /// List of redirected direct links. Only visable to file owners or administrators.
  @BuiltValueField(wireName: r'direct_links')
  BuiltList<ExtendedInfoDirectLinksInner>? get directLinks;

  ExtendedInfo._();

  factory ExtendedInfo([void updates(ExtendedInfoBuilder b)]) = _$ExtendedInfo;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtendedInfoBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtendedInfo> get serializer => _$ExtendedInfoSerializer();
}

class _$ExtendedInfoSerializer implements PrimitiveSerializer<ExtendedInfo> {
  @override
  final Iterable<Type> types = const [ExtendedInfo, _$ExtendedInfo];

  @override
  final String wireName = r'ExtendedInfo';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    ExtendedInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
    if (object.storagePolicy != null) {
      yield r'storage_policy';
      yield serializers.serialize(
        object.storagePolicy,
        specifiedType: const FullType.nullable(ExtendedInfoStoragePolicy),
      );
    }
    if (object.storagePolicyInherited != null) {
      yield r'storage_policy_inherited';
      yield serializers.serialize(
        object.storagePolicyInherited,
        specifiedType: const FullType(bool),
      );
    }
    if (object.storageUsed != null) {
      yield r'storage_used';
      yield serializers.serialize(
        object.storageUsed,
        specifiedType: const FullType(int),
      );
    }
    if (object.shares != null) {
      yield r'shares';
      yield serializers.serialize(
        object.shares,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Share)]),
      );
    }
    if (object.entities != null) {
      yield r'entities';
      yield serializers.serialize(
        object.entities,
        specifiedType: const FullType.nullable(BuiltList, [FullType(Entity)]),
      );
    }
    if (object.permissions != null) {
      yield r'permissions';
      yield serializers.serialize(
        object.permissions,
        specifiedType: const FullType.nullable(PermissionSetting),
      );
    }
    if (object.directLinks != null) {
      yield r'direct_links';
      yield serializers.serialize(
        object.directLinks,
        specifiedType: const FullType.nullable(BuiltList, [FullType(ExtendedInfoDirectLinksInner)]),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    ExtendedInfo object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required ExtendedInfoBuilder result,
    required List<Object?> unhandled,
  }) {
    for (var i = 0; i < serializedList.length; i += 2) {
      final key = serializedList[i] as String;
      final value = serializedList[i + 1];
      switch (key) {
        case r'storage_policy':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(ExtendedInfoStoragePolicy),
          ) as ExtendedInfoStoragePolicy?;
          if (valueDes == null) continue;
          result.storagePolicy.replace(valueDes);
          break;
        case r'storage_policy_inherited':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(bool),
          ) as bool;
          result.storagePolicyInherited = valueDes;
          break;
        case r'storage_used':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(int),
          ) as int;
          result.storageUsed = valueDes;
          break;
        case r'shares':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(Share)]),
          ) as BuiltList<Share>?;
          if (valueDes == null) continue;
          result.shares.replace(valueDes);
          break;
        case r'entities':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(Entity)]),
          ) as BuiltList<Entity>?;
          if (valueDes == null) continue;
          result.entities.replace(valueDes);
          break;
        case r'permissions':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(PermissionSetting),
          ) as PermissionSetting?;
          if (valueDes == null) continue;
          result.permissions.replace(valueDes);
          break;
        case r'direct_links':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(ExtendedInfoDirectLinksInner)]),
          ) as BuiltList<ExtendedInfoDirectLinksInner>?;
          if (valueDes == null) continue;
          result.directLinks.replace(valueDes);
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  ExtendedInfo deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtendedInfoBuilder();
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

