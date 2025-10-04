//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/storage_policy.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'entity_storage_policy.g.dart';

/// EntityStoragePolicy
///
/// Properties:
/// * [id] - ID of the storage policy.
/// * [name] - Display name of the storage policy.
/// * [allowedSuffix] - List of file extensions allowed in this storage policy. Empty list means no limit on allowed extensions.
/// * [deniedSuffix] - List of file extensions denied in this storage policy. Empty list means no limit on denied extensions.
/// * [type] - Storage provider type.
/// * [allowedNameRegexp] - If not empty, file name must match this regex.
/// * [deniedNameRegexp] - If not empty, file name must NOT match this regex.
/// * [maxSize] - Max allowed size of a single file. `0` means no limit.
/// * [relay] - Indicates whether upload needs to be proxyed by Cloudreve. If `true`, the client should treat it as a `local` storage policy to process uploading.
/// * [weight] - Load balance weight of this storage policy. Only presented if this storage policy is child of a load balance storage policy.
/// * [children] - Child storage policies, only presented if policy type equals `load_balance`.
/// * [chunkConcurrency] - Number of threads to use for concurrent chunk uploading.
@BuiltValue()
abstract class EntityStoragePolicy implements Built<EntityStoragePolicy, EntityStoragePolicyBuilder> {
  /// Any Of [StoragePolicy]
  AnyOf get anyOf;

  EntityStoragePolicy._();

  factory EntityStoragePolicy([void updates(EntityStoragePolicyBuilder b)]) = _$EntityStoragePolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(EntityStoragePolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<EntityStoragePolicy> get serializer => _$EntityStoragePolicySerializer();
}

class _$EntityStoragePolicySerializer implements PrimitiveSerializer<EntityStoragePolicy> {
  @override
  final Iterable<Type> types = const [EntityStoragePolicy, _$EntityStoragePolicy];

  @override
  final String wireName = r'EntityStoragePolicy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    EntityStoragePolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) sync* {
  }

  @override
  Object serialize(
    Serializers serializers,
    EntityStoragePolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf, specifiedType: FullType(AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  EntityStoragePolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = EntityStoragePolicyBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [FullType(StoragePolicy), FullType(StoragePolicy), ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc, specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

class EntityStoragePolicyTypeEnum extends EnumClass {

  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'local')
  static const EntityStoragePolicyTypeEnum local = _$entityStoragePolicyTypeEnum_local;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'qiniu')
  static const EntityStoragePolicyTypeEnum qiniu = _$entityStoragePolicyTypeEnum_qiniu;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'upyun')
  static const EntityStoragePolicyTypeEnum upyun = _$entityStoragePolicyTypeEnum_upyun;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'oss')
  static const EntityStoragePolicyTypeEnum oss = _$entityStoragePolicyTypeEnum_oss;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'cos')
  static const EntityStoragePolicyTypeEnum cos = _$entityStoragePolicyTypeEnum_cos;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r's3')
  static const EntityStoragePolicyTypeEnum s3 = _$entityStoragePolicyTypeEnum_s3;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'onedrive')
  static const EntityStoragePolicyTypeEnum onedrive = _$entityStoragePolicyTypeEnum_onedrive;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'remote')
  static const EntityStoragePolicyTypeEnum remote = _$entityStoragePolicyTypeEnum_remote;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'obs')
  static const EntityStoragePolicyTypeEnum obs = _$entityStoragePolicyTypeEnum_obs;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'load_balance')
  static const EntityStoragePolicyTypeEnum loadBalance = _$entityStoragePolicyTypeEnum_loadBalance;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'ks3')
  static const EntityStoragePolicyTypeEnum ks3 = _$entityStoragePolicyTypeEnum_ks3;

  static Serializer<EntityStoragePolicyTypeEnum> get serializer => _$entityStoragePolicyTypeEnumSerializer;

  const EntityStoragePolicyTypeEnum._(String name): super(name);

  static BuiltSet<EntityStoragePolicyTypeEnum> get values => _$entityStoragePolicyTypeEnumValues;
  static EntityStoragePolicyTypeEnum valueOf(String name) => _$entityStoragePolicyTypeEnumValueOf(name);
}

