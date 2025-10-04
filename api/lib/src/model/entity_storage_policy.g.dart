// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'entity_storage_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const EntityStoragePolicyTypeEnum _$entityStoragePolicyTypeEnum_local =
    const EntityStoragePolicyTypeEnum._('local');
const EntityStoragePolicyTypeEnum _$entityStoragePolicyTypeEnum_qiniu =
    const EntityStoragePolicyTypeEnum._('qiniu');
const EntityStoragePolicyTypeEnum _$entityStoragePolicyTypeEnum_upyun =
    const EntityStoragePolicyTypeEnum._('upyun');
const EntityStoragePolicyTypeEnum _$entityStoragePolicyTypeEnum_oss =
    const EntityStoragePolicyTypeEnum._('oss');
const EntityStoragePolicyTypeEnum _$entityStoragePolicyTypeEnum_cos =
    const EntityStoragePolicyTypeEnum._('cos');
const EntityStoragePolicyTypeEnum _$entityStoragePolicyTypeEnum_s3 =
    const EntityStoragePolicyTypeEnum._('s3');
const EntityStoragePolicyTypeEnum _$entityStoragePolicyTypeEnum_onedrive =
    const EntityStoragePolicyTypeEnum._('onedrive');
const EntityStoragePolicyTypeEnum _$entityStoragePolicyTypeEnum_remote =
    const EntityStoragePolicyTypeEnum._('remote');
const EntityStoragePolicyTypeEnum _$entityStoragePolicyTypeEnum_obs =
    const EntityStoragePolicyTypeEnum._('obs');
const EntityStoragePolicyTypeEnum _$entityStoragePolicyTypeEnum_loadBalance =
    const EntityStoragePolicyTypeEnum._('loadBalance');
const EntityStoragePolicyTypeEnum _$entityStoragePolicyTypeEnum_ks3 =
    const EntityStoragePolicyTypeEnum._('ks3');

EntityStoragePolicyTypeEnum _$entityStoragePolicyTypeEnumValueOf(String name) {
  switch (name) {
    case 'local':
      return _$entityStoragePolicyTypeEnum_local;
    case 'qiniu':
      return _$entityStoragePolicyTypeEnum_qiniu;
    case 'upyun':
      return _$entityStoragePolicyTypeEnum_upyun;
    case 'oss':
      return _$entityStoragePolicyTypeEnum_oss;
    case 'cos':
      return _$entityStoragePolicyTypeEnum_cos;
    case 's3':
      return _$entityStoragePolicyTypeEnum_s3;
    case 'onedrive':
      return _$entityStoragePolicyTypeEnum_onedrive;
    case 'remote':
      return _$entityStoragePolicyTypeEnum_remote;
    case 'obs':
      return _$entityStoragePolicyTypeEnum_obs;
    case 'loadBalance':
      return _$entityStoragePolicyTypeEnum_loadBalance;
    case 'ks3':
      return _$entityStoragePolicyTypeEnum_ks3;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<EntityStoragePolicyTypeEnum>
    _$entityStoragePolicyTypeEnumValues =
    BuiltSet<EntityStoragePolicyTypeEnum>(const <EntityStoragePolicyTypeEnum>[
  _$entityStoragePolicyTypeEnum_local,
  _$entityStoragePolicyTypeEnum_qiniu,
  _$entityStoragePolicyTypeEnum_upyun,
  _$entityStoragePolicyTypeEnum_oss,
  _$entityStoragePolicyTypeEnum_cos,
  _$entityStoragePolicyTypeEnum_s3,
  _$entityStoragePolicyTypeEnum_onedrive,
  _$entityStoragePolicyTypeEnum_remote,
  _$entityStoragePolicyTypeEnum_obs,
  _$entityStoragePolicyTypeEnum_loadBalance,
  _$entityStoragePolicyTypeEnum_ks3,
]);

Serializer<EntityStoragePolicyTypeEnum>
    _$entityStoragePolicyTypeEnumSerializer =
    _$EntityStoragePolicyTypeEnumSerializer();

class _$EntityStoragePolicyTypeEnumSerializer
    implements PrimitiveSerializer<EntityStoragePolicyTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'local': 'local',
    'qiniu': 'qiniu',
    'upyun': 'upyun',
    'oss': 'oss',
    'cos': 'cos',
    's3': 's3',
    'onedrive': 'onedrive',
    'remote': 'remote',
    'obs': 'obs',
    'loadBalance': 'load_balance',
    'ks3': 'ks3',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'local': 'local',
    'qiniu': 'qiniu',
    'upyun': 'upyun',
    'oss': 'oss',
    'cos': 'cos',
    's3': 's3',
    'onedrive': 'onedrive',
    'remote': 'remote',
    'obs': 'obs',
    'load_balance': 'loadBalance',
    'ks3': 'ks3',
  };

  @override
  final Iterable<Type> types = const <Type>[EntityStoragePolicyTypeEnum];
  @override
  final String wireName = 'EntityStoragePolicyTypeEnum';

  @override
  Object serialize(Serializers serializers, EntityStoragePolicyTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  EntityStoragePolicyTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      EntityStoragePolicyTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$EntityStoragePolicy extends EntityStoragePolicy {
  @override
  final AnyOf anyOf;

  factory _$EntityStoragePolicy(
          [void Function(EntityStoragePolicyBuilder)? updates]) =>
      (EntityStoragePolicyBuilder()..update(updates))._build();

  _$EntityStoragePolicy._({required this.anyOf}) : super._();
  @override
  EntityStoragePolicy rebuild(
          void Function(EntityStoragePolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EntityStoragePolicyBuilder toBuilder() =>
      EntityStoragePolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EntityStoragePolicy && anyOf == other.anyOf;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, anyOf.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'EntityStoragePolicy')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class EntityStoragePolicyBuilder
    implements Builder<EntityStoragePolicy, EntityStoragePolicyBuilder> {
  _$EntityStoragePolicy? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  EntityStoragePolicyBuilder() {
    EntityStoragePolicy._defaults(this);
  }

  EntityStoragePolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EntityStoragePolicy other) {
    _$v = other as _$EntityStoragePolicy;
  }

  @override
  void update(void Function(EntityStoragePolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  EntityStoragePolicy build() => _build();

  _$EntityStoragePolicy _build() {
    final _$result = _$v ??
        _$EntityStoragePolicy._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf, r'EntityStoragePolicy', 'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
