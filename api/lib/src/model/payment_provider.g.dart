// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_provider.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaymentProviderTypeEnum _$paymentProviderTypeEnum_stripe =
    const PaymentProviderTypeEnum._('stripe');
const PaymentProviderTypeEnum _$paymentProviderTypeEnum_alipay =
    const PaymentProviderTypeEnum._('alipay');
const PaymentProviderTypeEnum _$paymentProviderTypeEnum_weixin =
    const PaymentProviderTypeEnum._('weixin');
const PaymentProviderTypeEnum _$paymentProviderTypeEnum_points =
    const PaymentProviderTypeEnum._('points');
const PaymentProviderTypeEnum _$paymentProviderTypeEnum_custom =
    const PaymentProviderTypeEnum._('custom');

PaymentProviderTypeEnum _$paymentProviderTypeEnumValueOf(String name) {
  switch (name) {
    case 'stripe':
      return _$paymentProviderTypeEnum_stripe;
    case 'alipay':
      return _$paymentProviderTypeEnum_alipay;
    case 'weixin':
      return _$paymentProviderTypeEnum_weixin;
    case 'points':
      return _$paymentProviderTypeEnum_points;
    case 'custom':
      return _$paymentProviderTypeEnum_custom;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PaymentProviderTypeEnum> _$paymentProviderTypeEnumValues =
    BuiltSet<PaymentProviderTypeEnum>(const <PaymentProviderTypeEnum>[
  _$paymentProviderTypeEnum_stripe,
  _$paymentProviderTypeEnum_alipay,
  _$paymentProviderTypeEnum_weixin,
  _$paymentProviderTypeEnum_points,
  _$paymentProviderTypeEnum_custom,
]);

Serializer<PaymentProviderTypeEnum> _$paymentProviderTypeEnumSerializer =
    _$PaymentProviderTypeEnumSerializer();

class _$PaymentProviderTypeEnumSerializer
    implements PrimitiveSerializer<PaymentProviderTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'stripe': 'stripe',
    'alipay': 'alipay',
    'weixin': 'weixin',
    'points': 'points',
    'custom': 'custom',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'stripe': 'stripe',
    'alipay': 'alipay',
    'weixin': 'weixin',
    'points': 'points',
    'custom': 'custom',
  };

  @override
  final Iterable<Type> types = const <Type>[PaymentProviderTypeEnum];
  @override
  final String wireName = 'PaymentProviderTypeEnum';

  @override
  Object serialize(Serializers serializers, PaymentProviderTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PaymentProviderTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaymentProviderTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PaymentProvider extends PaymentProvider {
  @override
  final String id;
  @override
  final PaymentProviderTypeEnum? type;
  @override
  final String name;

  factory _$PaymentProvider([void Function(PaymentProviderBuilder)? updates]) =>
      (PaymentProviderBuilder()..update(updates))._build();

  _$PaymentProvider._({required this.id, this.type, required this.name})
      : super._();
  @override
  PaymentProvider rebuild(void Function(PaymentProviderBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentProviderBuilder toBuilder() => PaymentProviderBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PaymentProvider &&
        id == other.id &&
        type == other.type &&
        name == other.name;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PaymentProvider')
          ..add('id', id)
          ..add('type', type)
          ..add('name', name))
        .toString();
  }
}

class PaymentProviderBuilder
    implements Builder<PaymentProvider, PaymentProviderBuilder> {
  _$PaymentProvider? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  PaymentProviderTypeEnum? _type;
  PaymentProviderTypeEnum? get type => _$this._type;
  set type(PaymentProviderTypeEnum? type) => _$this._type = type;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PaymentProviderBuilder() {
    PaymentProvider._defaults(this);
  }

  PaymentProviderBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _type = $v.type;
      _name = $v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PaymentProvider other) {
    _$v = other as _$PaymentProvider;
  }

  @override
  void update(void Function(PaymentProviderBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PaymentProvider build() => _build();

  _$PaymentProvider _build() {
    final _$result = _$v ??
        _$PaymentProvider._(
          id: BuiltValueNullFieldError.checkNotNull(
              id, r'PaymentProvider', 'id'),
          type: type,
          name: BuiltValueNullFieldError.checkNotNull(
              name, r'PaymentProvider', 'name'),
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
