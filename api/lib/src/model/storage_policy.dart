//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

// ignore_for_file: unused_element
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'storage_policy.g.dart';

/// StoragePolicy
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
abstract class StoragePolicy implements Built<StoragePolicy, StoragePolicyBuilder> {
  /// ID of the storage policy.
  @BuiltValueField(wireName: r'id')
  String? get id;

  /// Display name of the storage policy.
  @BuiltValueField(wireName: r'name')
  String? get name;

  /// List of file extensions allowed in this storage policy. Empty list means no limit on allowed extensions.
  @BuiltValueField(wireName: r'allowed_suffix')
  BuiltList<String>? get allowedSuffix;

  /// List of file extensions denied in this storage policy. Empty list means no limit on denied extensions.
  @BuiltValueField(wireName: r'denied_suffix')
  BuiltList<String>? get deniedSuffix;

  /// Storage provider type.
  @BuiltValueField(wireName: r'type')
  StoragePolicyTypeEnum? get type;
  // enum typeEnum {  local,  qiniu,  upyun,  oss,  cos,  s3,  onedrive,  remote,  obs,  load_balance,  ks3,  };

  /// If not empty, file name must match this regex.
  @BuiltValueField(wireName: r'allowed_name_regexp')
  String? get allowedNameRegexp;

  /// If not empty, file name must NOT match this regex.
  @BuiltValueField(wireName: r'denied_name_regexp')
  String? get deniedNameRegexp;

  /// Max allowed size of a single file. `0` means no limit.
  @BuiltValueField(wireName: r'max_size')
  num? get maxSize;

  /// Indicates whether upload needs to be proxyed by Cloudreve. If `true`, the client should treat it as a `local` storage policy to process uploading.
  @BuiltValueField(wireName: r'relay')
  bool? get relay;

  /// Load balance weight of this storage policy. Only presented if this storage policy is child of a load balance storage policy.
  @BuiltValueField(wireName: r'weight')
  num? get weight;

  /// Child storage policies, only presented if policy type equals `load_balance`.
  @BuiltValueField(wireName: r'children')
  BuiltList<StoragePolicy>? get children;

  /// Number of threads to use for concurrent chunk uploading.
  @BuiltValueField(wireName: r'chunk_concurrency')
  int? get chunkConcurrency;

  StoragePolicy._();

  factory StoragePolicy([void updates(StoragePolicyBuilder b)]) = _$StoragePolicy;

  @BuiltValueHook(initializeBuilder: true)
  static void _defaults(StoragePolicyBuilder b) => b;

  @BuiltValueSerializer(custom: true)
  static Serializer<StoragePolicy> get serializer => _$StoragePolicySerializer();
}

class _$StoragePolicySerializer implements PrimitiveSerializer<StoragePolicy> {
  @override
  final Iterable<Type> types = const [StoragePolicy, _$StoragePolicy];

  @override
  final String wireName = r'StoragePolicy';

  Iterable<Object?> _serializeProperties(
    Serializers serializers,
    StoragePolicy object, {
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
    if (object.allowedSuffix != null) {
      yield r'allowed_suffix';
      yield serializers.serialize(
        object.allowedSuffix,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.deniedSuffix != null) {
      yield r'denied_suffix';
      yield serializers.serialize(
        object.deniedSuffix,
        specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
      );
    }
    if (object.type != null) {
      yield r'type';
      yield serializers.serialize(
        object.type,
        specifiedType: const FullType(StoragePolicyTypeEnum),
      );
    }
    if (object.allowedNameRegexp != null) {
      yield r'allowed_name_regexp';
      yield serializers.serialize(
        object.allowedNameRegexp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.deniedNameRegexp != null) {
      yield r'denied_name_regexp';
      yield serializers.serialize(
        object.deniedNameRegexp,
        specifiedType: const FullType.nullable(String),
      );
    }
    if (object.maxSize != null) {
      yield r'max_size';
      yield serializers.serialize(
        object.maxSize,
        specifiedType: const FullType(num),
      );
    }
    if (object.relay != null) {
      yield r'relay';
      yield serializers.serialize(
        object.relay,
        specifiedType: const FullType.nullable(bool),
      );
    }
    if (object.weight != null) {
      yield r'weight';
      yield serializers.serialize(
        object.weight,
        specifiedType: const FullType.nullable(num),
      );
    }
    if (object.children != null) {
      yield r'children';
      yield serializers.serialize(
        object.children,
        specifiedType: const FullType.nullable(BuiltList, [FullType(StoragePolicy)]),
      );
    }
    if (object.chunkConcurrency != null) {
      yield r'chunk_concurrency';
      yield serializers.serialize(
        object.chunkConcurrency,
        specifiedType: const FullType.nullable(int),
      );
    }
  }

  @override
  Object serialize(
    Serializers serializers,
    StoragePolicy object, {
    FullType specifiedType = FullType.unspecified,
  }) {
    return _serializeProperties(serializers, object, specifiedType: specifiedType).toList();
  }

  void _deserializeProperties(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
    required List<Object?> serializedList,
    required StoragePolicyBuilder result,
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
        case r'allowed_suffix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.allowedSuffix.replace(valueDes);
          break;
        case r'denied_suffix':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(String)]),
          ) as BuiltList<String>?;
          if (valueDes == null) continue;
          result.deniedSuffix.replace(valueDes);
          break;
        case r'type':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(StoragePolicyTypeEnum),
          ) as StoragePolicyTypeEnum;
          result.type = valueDes;
          break;
        case r'allowed_name_regexp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.allowedNameRegexp = valueDes;
          break;
        case r'denied_name_regexp':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(String),
          ) as String?;
          if (valueDes == null) continue;
          result.deniedNameRegexp = valueDes;
          break;
        case r'max_size':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType(num),
          ) as num;
          result.maxSize = valueDes;
          break;
        case r'relay':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(bool),
          ) as bool?;
          if (valueDes == null) continue;
          result.relay = valueDes;
          break;
        case r'weight':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(num),
          ) as num?;
          if (valueDes == null) continue;
          result.weight = valueDes;
          break;
        case r'children':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(BuiltList, [FullType(StoragePolicy)]),
          ) as BuiltList<StoragePolicy>?;
          if (valueDes == null) continue;
          result.children.replace(valueDes);
          break;
        case r'chunk_concurrency':
          final valueDes = serializers.deserialize(
            value,
            specifiedType: const FullType.nullable(int),
          ) as int?;
          if (valueDes == null) continue;
          result.chunkConcurrency = valueDes;
          break;
        default:
          unhandled.add(key);
          unhandled.add(value);
          break;
      }
    }
  }

  @override
  StoragePolicy deserialize(
    Serializers serializers,
    Object serialized, {
    FullType specifiedType = FullType.unspecified,
  }) {
    final result = StoragePolicyBuilder();
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

class StoragePolicyTypeEnum extends EnumClass {

  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'local')
  static const StoragePolicyTypeEnum local = _$storagePolicyTypeEnum_local;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'qiniu')
  static const StoragePolicyTypeEnum qiniu = _$storagePolicyTypeEnum_qiniu;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'upyun')
  static const StoragePolicyTypeEnum upyun = _$storagePolicyTypeEnum_upyun;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'oss')
  static const StoragePolicyTypeEnum oss = _$storagePolicyTypeEnum_oss;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'cos')
  static const StoragePolicyTypeEnum cos = _$storagePolicyTypeEnum_cos;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r's3')
  static const StoragePolicyTypeEnum s3 = _$storagePolicyTypeEnum_s3;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'onedrive')
  static const StoragePolicyTypeEnum onedrive = _$storagePolicyTypeEnum_onedrive;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'remote')
  static const StoragePolicyTypeEnum remote = _$storagePolicyTypeEnum_remote;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'obs')
  static const StoragePolicyTypeEnum obs = _$storagePolicyTypeEnum_obs;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'load_balance')
  static const StoragePolicyTypeEnum loadBalance = _$storagePolicyTypeEnum_loadBalance;
  /// Storage provider type.
  @BuiltValueEnumConst(wireName: r'ks3')
  static const StoragePolicyTypeEnum ks3 = _$storagePolicyTypeEnum_ks3;

  static Serializer<StoragePolicyTypeEnum> get serializer => _$storagePolicyTypeEnumSerializer;

  const StoragePolicyTypeEnum._(String name): super(name);

  static BuiltSet<StoragePolicyTypeEnum> get values => _$storagePolicyTypeEnumValues;
  static StoragePolicyTypeEnum valueOf(String name) => _$storagePolicyTypeEnumValueOf(name);
}

