// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'extended_info_storage_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ExtendedInfoStoragePolicyTypeEnum
    _$extendedInfoStoragePolicyTypeEnum_local =
    const ExtendedInfoStoragePolicyTypeEnum._('local');
const ExtendedInfoStoragePolicyTypeEnum
    _$extendedInfoStoragePolicyTypeEnum_qiniu =
    const ExtendedInfoStoragePolicyTypeEnum._('qiniu');
const ExtendedInfoStoragePolicyTypeEnum
    _$extendedInfoStoragePolicyTypeEnum_upyun =
    const ExtendedInfoStoragePolicyTypeEnum._('upyun');
const ExtendedInfoStoragePolicyTypeEnum
    _$extendedInfoStoragePolicyTypeEnum_oss =
    const ExtendedInfoStoragePolicyTypeEnum._('oss');
const ExtendedInfoStoragePolicyTypeEnum
    _$extendedInfoStoragePolicyTypeEnum_cos =
    const ExtendedInfoStoragePolicyTypeEnum._('cos');
const ExtendedInfoStoragePolicyTypeEnum _$extendedInfoStoragePolicyTypeEnum_s3 =
    const ExtendedInfoStoragePolicyTypeEnum._('s3');
const ExtendedInfoStoragePolicyTypeEnum
    _$extendedInfoStoragePolicyTypeEnum_onedrive =
    const ExtendedInfoStoragePolicyTypeEnum._('onedrive');
const ExtendedInfoStoragePolicyTypeEnum
    _$extendedInfoStoragePolicyTypeEnum_remote =
    const ExtendedInfoStoragePolicyTypeEnum._('remote');
const ExtendedInfoStoragePolicyTypeEnum
    _$extendedInfoStoragePolicyTypeEnum_obs =
    const ExtendedInfoStoragePolicyTypeEnum._('obs');
const ExtendedInfoStoragePolicyTypeEnum
    _$extendedInfoStoragePolicyTypeEnum_loadBalance =
    const ExtendedInfoStoragePolicyTypeEnum._('loadBalance');
const ExtendedInfoStoragePolicyTypeEnum
    _$extendedInfoStoragePolicyTypeEnum_ks3 =
    const ExtendedInfoStoragePolicyTypeEnum._('ks3');

ExtendedInfoStoragePolicyTypeEnum _$extendedInfoStoragePolicyTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'local':
      return _$extendedInfoStoragePolicyTypeEnum_local;
    case 'qiniu':
      return _$extendedInfoStoragePolicyTypeEnum_qiniu;
    case 'upyun':
      return _$extendedInfoStoragePolicyTypeEnum_upyun;
    case 'oss':
      return _$extendedInfoStoragePolicyTypeEnum_oss;
    case 'cos':
      return _$extendedInfoStoragePolicyTypeEnum_cos;
    case 's3':
      return _$extendedInfoStoragePolicyTypeEnum_s3;
    case 'onedrive':
      return _$extendedInfoStoragePolicyTypeEnum_onedrive;
    case 'remote':
      return _$extendedInfoStoragePolicyTypeEnum_remote;
    case 'obs':
      return _$extendedInfoStoragePolicyTypeEnum_obs;
    case 'loadBalance':
      return _$extendedInfoStoragePolicyTypeEnum_loadBalance;
    case 'ks3':
      return _$extendedInfoStoragePolicyTypeEnum_ks3;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<ExtendedInfoStoragePolicyTypeEnum>
    _$extendedInfoStoragePolicyTypeEnumValues = BuiltSet<
        ExtendedInfoStoragePolicyTypeEnum>(const <ExtendedInfoStoragePolicyTypeEnum>[
  _$extendedInfoStoragePolicyTypeEnum_local,
  _$extendedInfoStoragePolicyTypeEnum_qiniu,
  _$extendedInfoStoragePolicyTypeEnum_upyun,
  _$extendedInfoStoragePolicyTypeEnum_oss,
  _$extendedInfoStoragePolicyTypeEnum_cos,
  _$extendedInfoStoragePolicyTypeEnum_s3,
  _$extendedInfoStoragePolicyTypeEnum_onedrive,
  _$extendedInfoStoragePolicyTypeEnum_remote,
  _$extendedInfoStoragePolicyTypeEnum_obs,
  _$extendedInfoStoragePolicyTypeEnum_loadBalance,
  _$extendedInfoStoragePolicyTypeEnum_ks3,
]);

Serializer<ExtendedInfoStoragePolicyTypeEnum>
    _$extendedInfoStoragePolicyTypeEnumSerializer =
    _$ExtendedInfoStoragePolicyTypeEnumSerializer();

class _$ExtendedInfoStoragePolicyTypeEnumSerializer
    implements PrimitiveSerializer<ExtendedInfoStoragePolicyTypeEnum> {
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
  final Iterable<Type> types = const <Type>[ExtendedInfoStoragePolicyTypeEnum];
  @override
  final String wireName = 'ExtendedInfoStoragePolicyTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ExtendedInfoStoragePolicyTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ExtendedInfoStoragePolicyTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ExtendedInfoStoragePolicyTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$ExtendedInfoStoragePolicy extends ExtendedInfoStoragePolicy {
  @override
  final AnyOf anyOf;

  factory _$ExtendedInfoStoragePolicy(
          [void Function(ExtendedInfoStoragePolicyBuilder)? updates]) =>
      (ExtendedInfoStoragePolicyBuilder()..update(updates))._build();

  _$ExtendedInfoStoragePolicy._({required this.anyOf}) : super._();
  @override
  ExtendedInfoStoragePolicy rebuild(
          void Function(ExtendedInfoStoragePolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ExtendedInfoStoragePolicyBuilder toBuilder() =>
      ExtendedInfoStoragePolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ExtendedInfoStoragePolicy && anyOf == other.anyOf;
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
    return (newBuiltValueToStringHelper(r'ExtendedInfoStoragePolicy')
          ..add('anyOf', anyOf))
        .toString();
  }
}

class ExtendedInfoStoragePolicyBuilder
    implements
        Builder<ExtendedInfoStoragePolicy, ExtendedInfoStoragePolicyBuilder> {
  _$ExtendedInfoStoragePolicy? _$v;

  AnyOf? _anyOf;
  AnyOf? get anyOf => _$this._anyOf;
  set anyOf(AnyOf? anyOf) => _$this._anyOf = anyOf;

  ExtendedInfoStoragePolicyBuilder() {
    ExtendedInfoStoragePolicy._defaults(this);
  }

  ExtendedInfoStoragePolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _anyOf = $v.anyOf;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ExtendedInfoStoragePolicy other) {
    _$v = other as _$ExtendedInfoStoragePolicy;
  }

  @override
  void update(void Function(ExtendedInfoStoragePolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ExtendedInfoStoragePolicy build() => _build();

  _$ExtendedInfoStoragePolicy _build() {
    final _$result = _$v ??
        _$ExtendedInfoStoragePolicy._(
          anyOf: BuiltValueNullFieldError.checkNotNull(
              anyOf, r'ExtendedInfoStoragePolicy', 'anyOf'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
