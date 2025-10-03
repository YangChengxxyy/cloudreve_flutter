// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PaymentStatusEnum _$paymentStatusEnum_created =
    const PaymentStatusEnum._('created');
const PaymentStatusEnum _$paymentStatusEnum_paid =
    const PaymentStatusEnum._('paid');
const PaymentStatusEnum _$paymentStatusEnum_fulfilled =
    const PaymentStatusEnum._('fulfilled');
const PaymentStatusEnum _$paymentStatusEnum_fulfillFailed =
    const PaymentStatusEnum._('fulfillFailed');
const PaymentStatusEnum _$paymentStatusEnum_canceled =
    const PaymentStatusEnum._('canceled');

PaymentStatusEnum _$paymentStatusEnumValueOf(String name) {
  switch (name) {
    case 'created':
      return _$paymentStatusEnum_created;
    case 'paid':
      return _$paymentStatusEnum_paid;
    case 'fulfilled':
      return _$paymentStatusEnum_fulfilled;
    case 'fulfillFailed':
      return _$paymentStatusEnum_fulfillFailed;
    case 'canceled':
      return _$paymentStatusEnum_canceled;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PaymentStatusEnum> _$paymentStatusEnumValues =
    BuiltSet<PaymentStatusEnum>(const <PaymentStatusEnum>[
  _$paymentStatusEnum_created,
  _$paymentStatusEnum_paid,
  _$paymentStatusEnum_fulfilled,
  _$paymentStatusEnum_fulfillFailed,
  _$paymentStatusEnum_canceled,
]);

const PaymentProductTypeEnum _$paymentProductTypeEnum_number1 =
    const PaymentProductTypeEnum._('number1');
const PaymentProductTypeEnum _$paymentProductTypeEnum_number2 =
    const PaymentProductTypeEnum._('number2');
const PaymentProductTypeEnum _$paymentProductTypeEnum_number3 =
    const PaymentProductTypeEnum._('number3');
const PaymentProductTypeEnum _$paymentProductTypeEnum_number4 =
    const PaymentProductTypeEnum._('number4');

PaymentProductTypeEnum _$paymentProductTypeEnumValueOf(String name) {
  switch (name) {
    case 'number1':
      return _$paymentProductTypeEnum_number1;
    case 'number2':
      return _$paymentProductTypeEnum_number2;
    case 'number3':
      return _$paymentProductTypeEnum_number3;
    case 'number4':
      return _$paymentProductTypeEnum_number4;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<PaymentProductTypeEnum> _$paymentProductTypeEnumValues =
    BuiltSet<PaymentProductTypeEnum>(const <PaymentProductTypeEnum>[
  _$paymentProductTypeEnum_number1,
  _$paymentProductTypeEnum_number2,
  _$paymentProductTypeEnum_number3,
  _$paymentProductTypeEnum_number4,
]);

Serializer<PaymentStatusEnum> _$paymentStatusEnumSerializer =
    _$PaymentStatusEnumSerializer();
Serializer<PaymentProductTypeEnum> _$paymentProductTypeEnumSerializer =
    _$PaymentProductTypeEnumSerializer();

class _$PaymentStatusEnumSerializer
    implements PrimitiveSerializer<PaymentStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'created': 'created',
    'paid': 'paid',
    'fulfilled': 'fulfilled',
    'fulfillFailed': 'fulfill_failed',
    'canceled': 'canceled',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'created': 'created',
    'paid': 'paid',
    'fulfilled': 'fulfilled',
    'fulfill_failed': 'fulfillFailed',
    'canceled': 'canceled',
  };

  @override
  final Iterable<Type> types = const <Type>[PaymentStatusEnum];
  @override
  final String wireName = 'PaymentStatusEnum';

  @override
  Object serialize(Serializers serializers, PaymentStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PaymentStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaymentStatusEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$PaymentProductTypeEnumSerializer
    implements PrimitiveSerializer<PaymentProductTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'number1': 1,
    'number2': 2,
    'number3': 3,
    'number4': 4,
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    1: 'number1',
    2: 'number2',
    3: 'number3',
    4: 'number4',
  };

  @override
  final Iterable<Type> types = const <Type>[PaymentProductTypeEnum];
  @override
  final String wireName = 'PaymentProductTypeEnum';

  @override
  Object serialize(Serializers serializers, PaymentProductTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PaymentProductTypeEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PaymentProductTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$Payment extends Payment {
  @override
  final String id;
  @override
  final String tradeNo;
  @override
  final String name;
  @override
  final PaymentStatusEnum status;
  @override
  final int qyt;
  @override
  final int? priceUnit;
  @override
  final String? priceId;
  @override
  final String? priceMark;
  @override
  final int priceOneUnit;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final PaymentProductTypeEnum productType;
  @override
  final String? ticket;

  factory _$Payment([void Function(PaymentBuilder)? updates]) =>
      (PaymentBuilder()..update(updates))._build();

  _$Payment._(
      {required this.id,
      required this.tradeNo,
      required this.name,
      required this.status,
      required this.qyt,
      this.priceUnit,
      this.priceId,
      this.priceMark,
      required this.priceOneUnit,
      required this.createdAt,
      required this.updatedAt,
      required this.productType,
      this.ticket})
      : super._();
  @override
  Payment rebuild(void Function(PaymentBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PaymentBuilder toBuilder() => PaymentBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Payment &&
        id == other.id &&
        tradeNo == other.tradeNo &&
        name == other.name &&
        status == other.status &&
        qyt == other.qyt &&
        priceUnit == other.priceUnit &&
        priceId == other.priceId &&
        priceMark == other.priceMark &&
        priceOneUnit == other.priceOneUnit &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        productType == other.productType &&
        ticket == other.ticket;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, id.hashCode);
    _$hash = $jc(_$hash, tradeNo.hashCode);
    _$hash = $jc(_$hash, name.hashCode);
    _$hash = $jc(_$hash, status.hashCode);
    _$hash = $jc(_$hash, qyt.hashCode);
    _$hash = $jc(_$hash, priceUnit.hashCode);
    _$hash = $jc(_$hash, priceId.hashCode);
    _$hash = $jc(_$hash, priceMark.hashCode);
    _$hash = $jc(_$hash, priceOneUnit.hashCode);
    _$hash = $jc(_$hash, createdAt.hashCode);
    _$hash = $jc(_$hash, updatedAt.hashCode);
    _$hash = $jc(_$hash, productType.hashCode);
    _$hash = $jc(_$hash, ticket.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'Payment')
          ..add('id', id)
          ..add('tradeNo', tradeNo)
          ..add('name', name)
          ..add('status', status)
          ..add('qyt', qyt)
          ..add('priceUnit', priceUnit)
          ..add('priceId', priceId)
          ..add('priceMark', priceMark)
          ..add('priceOneUnit', priceOneUnit)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('productType', productType)
          ..add('ticket', ticket))
        .toString();
  }
}

class PaymentBuilder implements Builder<Payment, PaymentBuilder> {
  _$Payment? _$v;

  String? _id;
  String? get id => _$this._id;
  set id(String? id) => _$this._id = id;

  String? _tradeNo;
  String? get tradeNo => _$this._tradeNo;
  set tradeNo(String? tradeNo) => _$this._tradeNo = tradeNo;

  String? _name;
  String? get name => _$this._name;
  set name(String? name) => _$this._name = name;

  PaymentStatusEnum? _status;
  PaymentStatusEnum? get status => _$this._status;
  set status(PaymentStatusEnum? status) => _$this._status = status;

  int? _qyt;
  int? get qyt => _$this._qyt;
  set qyt(int? qyt) => _$this._qyt = qyt;

  int? _priceUnit;
  int? get priceUnit => _$this._priceUnit;
  set priceUnit(int? priceUnit) => _$this._priceUnit = priceUnit;

  String? _priceId;
  String? get priceId => _$this._priceId;
  set priceId(String? priceId) => _$this._priceId = priceId;

  String? _priceMark;
  String? get priceMark => _$this._priceMark;
  set priceMark(String? priceMark) => _$this._priceMark = priceMark;

  int? _priceOneUnit;
  int? get priceOneUnit => _$this._priceOneUnit;
  set priceOneUnit(int? priceOneUnit) => _$this._priceOneUnit = priceOneUnit;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  PaymentProductTypeEnum? _productType;
  PaymentProductTypeEnum? get productType => _$this._productType;
  set productType(PaymentProductTypeEnum? productType) =>
      _$this._productType = productType;

  String? _ticket;
  String? get ticket => _$this._ticket;
  set ticket(String? ticket) => _$this._ticket = ticket;

  PaymentBuilder() {
    Payment._defaults(this);
  }

  PaymentBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _id = $v.id;
      _tradeNo = $v.tradeNo;
      _name = $v.name;
      _status = $v.status;
      _qyt = $v.qyt;
      _priceUnit = $v.priceUnit;
      _priceId = $v.priceId;
      _priceMark = $v.priceMark;
      _priceOneUnit = $v.priceOneUnit;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _productType = $v.productType;
      _ticket = $v.ticket;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Payment other) {
    _$v = other as _$Payment;
  }

  @override
  void update(void Function(PaymentBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  Payment build() => _build();

  _$Payment _build() {
    final _$result = _$v ??
        _$Payment._(
          id: BuiltValueNullFieldError.checkNotNull(id, r'Payment', 'id'),
          tradeNo: BuiltValueNullFieldError.checkNotNull(
              tradeNo, r'Payment', 'tradeNo'),
          name: BuiltValueNullFieldError.checkNotNull(name, r'Payment', 'name'),
          status: BuiltValueNullFieldError.checkNotNull(
              status, r'Payment', 'status'),
          qyt: BuiltValueNullFieldError.checkNotNull(qyt, r'Payment', 'qyt'),
          priceUnit: priceUnit,
          priceId: priceId,
          priceMark: priceMark,
          priceOneUnit: BuiltValueNullFieldError.checkNotNull(
              priceOneUnit, r'Payment', 'priceOneUnit'),
          createdAt: BuiltValueNullFieldError.checkNotNull(
              createdAt, r'Payment', 'createdAt'),
          updatedAt: BuiltValueNullFieldError.checkNotNull(
              updatedAt, r'Payment', 'updatedAt'),
          productType: BuiltValueNullFieldError.checkNotNull(
              productType, r'Payment', 'productType'),
          ticket: ticket,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
