//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:cloudreve_api_client/src/model/storage_policy.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:one_of/any_of.dart';

part 'extended_info_storage_policy.g.dart';

/// Preferred storage policy of this file or folder. Note that it might not be the one used by this file's blobs.
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
abstract class ExtendedInfoStoragePolicy
    implements
        Built<ExtendedInfoStoragePolicy, ExtendedInfoStoragePolicyBuilder> {
  /// Any Of [StoragePolicy]
  AnyOf get anyOf;

  ExtendedInfoStoragePolicy._();

  factory ExtendedInfoStoragePolicy(
          [void updates(ExtendedInfoStoragePolicyBuilder b)]) =
      _$ExtendedInfoStoragePolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(ExtendedInfoStoragePolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<ExtendedInfoStoragePolicy> get serializer =>
      _$ExtendedInfoStoragePolicySerializer();
}

class _$ExtendedInfoStoragePolicySerializer
    implements PrimitiveSerializer<ExtendedInfoStoragePolicy> {
  @override
  final Iterable<Type> types = const [
    ExtendedInfoStoragePolicy,
    _$ExtendedInfoStoragePolicy
  ];

  @override
  final String wireName = r'ExtendedInfoStoragePolicy';

  Iterable<Object?> _serializeProperties(
      Serializers serializers, ExtendedInfoStoragePolicy object) sync* {}

  @override
  Object serialize(
    Serializers serializers,
    ExtendedInfoStoragePolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final anyOf = object.anyOf;
    return serializers.serialize(anyOf,
        specifiedType: FullType(
            AnyOf, anyOf.valueTypes.map((type) => FullType(type)).toList()))!;
  }

  @override
  ExtendedInfoStoragePolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = ExtendedInfoStoragePolicyBuilder();
    Object? anyOfDataSrc;
    final targetType = const FullType(AnyOf, [
      FullType(StoragePolicy),
      FullType(StoragePolicy),
    ]);
    anyOfDataSrc = serialized;
    result.anyOf = serializers.deserialize(anyOfDataSrc,
        specifiedType: targetType) as AnyOf;
    return result.build();
  }
}

class ExtendedInfoStoragePolicyTypeEnum extends EnumClass {
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'local')
  static const ExtendedInfoStoragePolicyTypeEnum local =
      _$extendedInfoStoragePolicyTypeEnum_local;

  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'qiniu')
  static const ExtendedInfoStoragePolicyTypeEnum qiniu =
      _$extendedInfoStoragePolicyTypeEnum_qiniu;

  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'upyun')
  static const ExtendedInfoStoragePolicyTypeEnum upyun =
      _$extendedInfoStoragePolicyTypeEnum_upyun;

  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'oss')
  static const ExtendedInfoStoragePolicyTypeEnum oss =
      _$extendedInfoStoragePolicyTypeEnum_oss;

  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'cos')
  static const ExtendedInfoStoragePolicyTypeEnum cos =
      _$extendedInfoStoragePolicyTypeEnum_cos;

  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r's3')
  static const ExtendedInfoStoragePolicyTypeEnum s3 =
      _$extendedInfoStoragePolicyTypeEnum_s3;

  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'onedrive')
  static const ExtendedInfoStoragePolicyTypeEnum onedrive =
      _$extendedInfoStoragePolicyTypeEnum_onedrive;

  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'remote')
  static const ExtendedInfoStoragePolicyTypeEnum remote =
      _$extendedInfoStoragePolicyTypeEnum_remote;

  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'obs')
  static const ExtendedInfoStoragePolicyTypeEnum obs =
      _$extendedInfoStoragePolicyTypeEnum_obs;

  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'load_balance')
  static const ExtendedInfoStoragePolicyTypeEnum loadBalance =
      _$extendedInfoStoragePolicyTypeEnum_loadBalance;

  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'ks3')
  static const ExtendedInfoStoragePolicyTypeEnum ks3 =
      _$extendedInfoStoragePolicyTypeEnum_ks3;

  static Serializer<ExtendedInfoStoragePolicyTypeEnum> get serializer =>
      _$extendedInfoStoragePolicyTypeEnumSerializer;

  const ExtendedInfoStoragePolicyTypeEnum._(String name) : super(name);

  static BuiltSet<ExtendedInfoStoragePolicyTypeEnum> get values =>
      _$extendedInfoStoragePolicyTypeEnumValues;
  static ExtendedInfoStoragePolicyTypeEnum valueOf(String name) =>
      _$extendedInfoStoragePolicyTypeEnumValueOf(name);
}
