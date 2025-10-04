// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'storage_policy.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const StoragePolicyTypeEnum _$storagePolicyTypeEnum_local =
    const StoragePolicyTypeEnum._('local');
const StoragePolicyTypeEnum _$storagePolicyTypeEnum_qiniu =
    const StoragePolicyTypeEnum._('qiniu');
const StoragePolicyTypeEnum _$storagePolicyTypeEnum_upyun =
    const StoragePolicyTypeEnum._('upyun');
const StoragePolicyTypeEnum _$storagePolicyTypeEnum_oss =
    const StoragePolicyTypeEnum._('oss');
const StoragePolicyTypeEnum _$storagePolicyTypeEnum_cos =
    const StoragePolicyTypeEnum._('cos');
const StoragePolicyTypeEnum _$storagePolicyTypeEnum_s3 =
    const StoragePolicyTypeEnum._('s3');
const StoragePolicyTypeEnum _$storagePolicyTypeEnum_onedrive =
    const StoragePolicyTypeEnum._('onedrive');
const StoragePolicyTypeEnum _$storagePolicyTypeEnum_remote =
    const StoragePolicyTypeEnum._('remote');
const StoragePolicyTypeEnum _$storagePolicyTypeEnum_obs =
    const StoragePolicyTypeEnum._('obs');
const StoragePolicyTypeEnum _$storagePolicyTypeEnum_loadBalance =
    const StoragePolicyTypeEnum._('loadBalance');
const StoragePolicyTypeEnum _$storagePolicyTypeEnum_ks3 =
    const StoragePolicyTypeEnum._('ks3');

StoragePolicyTypeEnum _$storagePolicyTypeEnumValueOf(String name) {
  switch (name) {
    case 'local':
      return _$storagePolicyTypeEnum_local;
    case 'qiniu':
      return _$storagePolicyTypeEnum_qiniu;
    case 'upyun':
      return _$storagePolicyTypeEnum_upyun;
    case 'oss':
      return _$storagePolicyTypeEnum_oss;
    case 'cos':
      return _$storagePolicyTypeEnum_cos;
    case 's3':
      return _$storagePolicyTypeEnum_s3;
    case 'onedrive':
      return _$storagePolicyTypeEnum_onedrive;
    case 'remote':
      return _$storagePolicyTypeEnum_remote;
    case 'obs':
      return _$storagePolicyTypeEnum_obs;
    case 'loadBalance':
      return _$storagePolicyTypeEnum_loadBalance;
    case 'ks3':
      return _$storagePolicyTypeEnum_ks3;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<StoragePolicyTypeEnum> _$storagePolicyTypeEnumValues =
    BuiltSet<StoragePolicyTypeEnum>(const <StoragePolicyTypeEnum>[
  _$storagePolicyTypeEnum_local,
  _$storagePolicyTypeEnum_qiniu,
  _$storagePolicyTypeEnum_upyun,
  _$storagePolicyTypeEnum_oss,
  _$storagePolicyTypeEnum_cos,
  _$storagePolicyTypeEnum_s3,
  _$storagePolicyTypeEnum_onedrive,
  _$storagePolicyTypeEnum_remote,
  _$storagePolicyTypeEnum_obs,
  _$storagePolicyTypeEnum_loadBalance,
  _$storagePolicyTypeEnum_ks3,
]);

Serializer<StoragePolicyTypeEnum> _$storagePolicyTypeEnumSerializer =
    _$StoragePolicyTypeEnumSerializer();

class _$StoragePolicyTypeEnumSerializer
    implements PrimitiveSerializer<StoragePolicyTypeEnum> {
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
  final Iterable<Type> types = const <Type>[StoragePolicyTypeEnum];
  @override
  final String wireName = 'StoragePolicyTypeEnum';

  @override
  Object serialize(Serializers serializers, StoragePolicyTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  StoragePolicyTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      StoragePolicyTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$StoragePolicy extends StoragePolicy {
  @override
  final String id;
  @override
  final String name;
  @override
  final BuiltList<String>? allowedSuffix;
  @override
  final BuiltList<String>? deniedSuffix;
  @override
  final StoragePolicyTypeEnum type;
  @override
  final String? allowedNameRegexp;
  @override
  final String? deniedNameRegexp;
  @override
  final num maxSize;
  @override
  final bool? relay;
  @override
  final num? weight;
  @override
  final BuiltList<StoragePolicy>? children;
  @override
  final int? chunkConcurrency;

  factory _$StoragePolicy([void Function(StoragePolicyBuilder)? updates]) =>
      (StoragePolicyBuilder()..update(updates))._build();

  _$StoragePolicy._(
      {required this.id,
      required this.name,
      this.allowedSuffix,
      this.deniedSuffix,
      required this.type,
      this.allowedNameRegexp,
      this.deniedNameRegexp,
      required this.maxSize,
      this.relay,
      this.weight,
      this.children,
      this.chunkConcurrency})
      : super._();
  @override
  StoragePolicy rebuild(void Function(StoragePolicyBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StoragePolicyBuilder toBuilder() => StoragePolicyBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StoragePolicy &&
        id == other.id &&
        name == other.name &&
        allowedSuffix == other.allowedSuffix &&
        deniedSuffix == other.deniedSuffix &&
        type == other.type &&
        allowedNameRegexp == other.allowedNameRegexp &&
        deniedNameRegexp == other.deniedNameRegexp &&
        maxSize == other.maxSize &&
        relay == other.relay &&
        weight == other.weight &&
        children == other.children &&
        chunkConcurrency == other.chunkConcurrency;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, allowedSuffix.hashCode);
    _$hash = $jc(_$hash, deniedSuffix.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, allowedNameRegexp.hashCode);
    _$hash = $jc(_$hash, deniedNameRegexp.hashCode);
    _$hash = $jc(_$hash, maxSize.hashCode);
    _$hash = $jc(_$hash, relay.hashCode);
    _$hash = $jc(_$hash, weight.hashCode);
    _$hash = $jc(_$hash, children.hashCode);
    _$hash = $jc(_$hash, chunkConcurrency.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'StoragePolicy')
          ..add('id', id)
          ..add('name', name)
          ..add('allowedSuffix', allowedSuffix)
          ..add('deniedSuffix', deniedSuffix)
          ..add('type', type)
          ..add('allowedNameRegexp', allowedNameRegexp)
          ..add('deniedNameRegexp', deniedNameRegexp)
          ..add('maxSize', maxSize)
          ..add('relay', relay)
          ..add('weight', weight)
          ..add('children', children)
          ..add('chunkConcurrency', chunkConcurrency))
        .toString();
  }
}

class StoragePolicyBuilder
    implements Builder<StoragePolicy, StoragePolicyBuilder> {
  _$StoragePolicy? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  ListBuilder<String>? _allowedSuffix;
  ListBuilder<String> get allowedSuffix =>
      _$this._allowedSuffix ??= ListBuilder<String>();
  set allowedSuffix(ListBuilder<String>? allowedSuffix) =>
      _$this._allowedSuffix = allowedSuffix;

  ListBuilder<String>? _deniedSuffix;
  ListBuilder<String> get deniedSuffix =>
      _$this._deniedSuffix ??= ListBuilder<String>();
  set deniedSuffix(ListBuilder<String>? deniedSuffix) =>
      _$this._deniedSuffix = deniedSuffix;

  StoragePolicyTypeEnum? _type;
  StoragePolicyTypeEnum? get type => _$this._type;
  set type(StoragePolicyTypeEnum? type) => _$this._type = type;

  String? _allowedNameRegexp;
  String? get allowedNameRegexp => _$this._allowedNameRegexp;
  set allowedNameRegexp(String? allowedNameRegexp) =>
      _$this._allowedNameRegexp = allowedNameRegexp;

  String? _deniedNameRegexp;
  String? get deniedNameRegexp => _$this._deniedNameRegexp;
  set deniedNameRegexp(String? deniedNameRegexp) =>
      _$this._deniedNameRegexp = deniedNameRegexp;

  num? _maxSize;
  num? get maxSize => _$this._maxSize;
  set maxSize(num? maxSize) => _$this._maxSize = maxSize;

  bool? _relay;
  bool? get relay => _$this._relay;
  set relay(bool? relay) => _$this._relay = relay;

  num? _weight;
  num? get weight => _$this._weight;
  set weight(num? weight) => _$this._weight = weight;

  ListBuilder<StoragePolicy>? _children;
  ListBuilder<StoragePolicy> get children =>
      _$this._children ??= ListBuilder<StoragePolicy>();
  set children(ListBuilder<StoragePolicy>? children) =>
      _$this._children = children;

  int? _chunkConcurrency;
  int? get chunkConcurrency => _$this._chunkConcurrency;
  set chunkConcurrency(int? chunkConcurrency) =>
      _$this._chunkConcurrency = chunkConcurrency;

  StoragePolicyBuilder() {
    StoragePolicy._defaults(this);
  }

  StoragePolicyBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _name = $v.name;
      _allowedSuffix = $v.allowedSuffix?.toBuilder();
      _deniedSuffix = $v.deniedSuffix?.toBuilder();
      _type = $v.type;
      _allowedNameRegexp = $v.allowedNameRegexp;
      _deniedNameRegexp = $v.deniedNameRegexp;
      _maxSize = $v.maxSize;
      _relay = $v.relay;
      _weight = $v.weight;
      _children = $v.children?.toBuilder();
      _chunkConcurrency = $v.chunkConcurrency;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StoragePolicy other) {
    _$v = other as _$StoragePolicy;
  }

  @override
  void update(void Function(StoragePolicyBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  StoragePolicy build() => _build();

  _$StoragePolicy _build() {
    _$StoragePolicy _$result;
    try {
      _$result = _$v ??
          _$StoragePolicy._(
            id: BuiltValueNullFieldError.checkNotNull(
                id, r'StoragePolicy', 'id'),
            name: BuiltValueNullFieldError.checkNotNull(
                name, r'StoragePolicy', 'name'),
            allowedSuffix: _allowedSuffix?.build(),
            deniedSuffix: _deniedSuffix?.build(),
            type: BuiltValueNullFieldError.checkNotNull(
                type, r'StoragePolicy', 'type'),
            allowedNameRegexp: allowedNameRegexp,
            deniedNameRegexp: deniedNameRegexp,
            maxSize: BuiltValueNullFieldError.checkNotNull(
                maxSize, r'StoragePolicy', 'maxSize'),
            relay: relay,
            weight: weight,
            children: _children?.build(),
            chunkConcurrency: chunkConcurrency,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'allowedSuffix';
        _allowedSuffix?.build();
        _$failedField = 'deniedSuffix';
        _deniedSuffix?.build();

        _$failedField = 'children';
        _children?.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'StoragePolicy', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
