// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vas_payment_put_request_product.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const VasPaymentPutRequestProductTypeEnum
    _$vasPaymentPutRequestProductTypeEnum_number1 =
    const VasPaymentPutRequestProductTypeEnum._('number1');
const VasPaymentPutRequestProductTypeEnum
    _$vasPaymentPutRequestProductTypeEnum_number2 =
    const VasPaymentPutRequestProductTypeEnum._('number2');
const VasPaymentPutRequestProductTypeEnum
    _$vasPaymentPutRequestProductTypeEnum_number3 =
    const VasPaymentPutRequestProductTypeEnum._('number3');
const VasPaymentPutRequestProductTypeEnum
    _$vasPaymentPutRequestProductTypeEnum_number4 =
    const VasPaymentPutRequestProductTypeEnum._('number4');

VasPaymentPutRequestProductTypeEnum
    _$vasPaymentPutRequestProductTypeEnumValueOf(String name) {
  switch (name) {
    case 'number1':
      return _$vasPaymentPutRequestProductTypeEnum_number1;
    case 'number2':
      return _$vasPaymentPutRequestProductTypeEnum_number2;
    case 'number3':
      return _$vasPaymentPutRequestProductTypeEnum_number3;
    case 'number4':
      return _$vasPaymentPutRequestProductTypeEnum_number4;
    default:
      throw ArgumentError(name);
  }
}

final BuiltSet<VasPaymentPutRequestProductTypeEnum>
    _$vasPaymentPutRequestProductTypeEnumValues = BuiltSet<
        VasPaymentPutRequestProductTypeEnum>(const <VasPaymentPutRequestProductTypeEnum>[
  _$vasPaymentPutRequestProductTypeEnum_number1,
  _$vasPaymentPutRequestProductTypeEnum_number2,
  _$vasPaymentPutRequestProductTypeEnum_number3,
  _$vasPaymentPutRequestProductTypeEnum_number4,
]);

Serializer<VasPaymentPutRequestProductTypeEnum>
    _$vasPaymentPutRequestProductTypeEnumSerializer =
    _$VasPaymentPutRequestProductTypeEnumSerializer();

class _$VasPaymentPutRequestProductTypeEnumSerializer
    implements PrimitiveSerializer<VasPaymentPutRequestProductTypeEnum> {
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
  final Iterable<Type> types = const <Type>[
    VasPaymentPutRequestProductTypeEnum
  ];
  @override
  final String wireName = 'VasPaymentPutRequestProductTypeEnum';

  @override
  Object serialize(
          Serializers serializers, VasPaymentPutRequestProductTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  VasPaymentPutRequestProductTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      VasPaymentPutRequestProductTypeEnum.valueOf(
          _fromWire[serialized] ?? (serialized is String ? serialized : ''));
}

class _$VasPaymentPutRequestProduct extends VasPaymentPutRequestProduct {
  @override
  final VasPaymentPutRequestProductTypeEnum? type;
  @override
  final String? shareLinkId;
  @override
  final String? skuId;

  factory _$VasPaymentPutRequestProduct(
          [void Function(VasPaymentPutRequestProductBuilder)? updates]) =>
      (VasPaymentPutRequestProductBuilder()..update(updates))._build();

  _$VasPaymentPutRequestProduct._({this.type, this.shareLinkId, this.skuId})
      : super._();
  @override
  VasPaymentPutRequestProduct rebuild(
          void Function(VasPaymentPutRequestProductBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VasPaymentPutRequestProductBuilder toBuilder() =>
      VasPaymentPutRequestProductBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VasPaymentPutRequestProduct &&
        type == other.type &&
        shareLinkId == other.shareLinkId &&
        skuId == other.skuId;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, type.hashCode);
    _$hash = $jc(_$hash, shareLinkId.hashCode);
    _$hash = $jc(_$hash, skuId.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VasPaymentPutRequestProduct')
          ..add('type', type)
          ..add('shareLinkId', shareLinkId)
          ..add('skuId', skuId))
        .toString();
  }
}

class VasPaymentPutRequestProductBuilder
    implements
        Builder<VasPaymentPutRequestProduct,
            VasPaymentPutRequestProductBuilder> {
  _$VasPaymentPutRequestProduct? _$v;

  VasPaymentPutRequestProductTypeEnum? _type;
  VasPaymentPutRequestProductTypeEnum? get type => _$this._type;
  set type(VasPaymentPutRequestProductTypeEnum? type) => _$this._type = type;

  String? _shareLinkId;
  String? get shareLinkId => _$this._shareLinkId;
  set shareLinkId(String? shareLinkId) => _$this._shareLinkId = shareLinkId;

  String? _skuId;
  String? get skuId => _$this._skuId;
  set skuId(String? skuId) => _$this._skuId = skuId;

  VasPaymentPutRequestProductBuilder() {
    VasPaymentPutRequestProduct._defaults(this);
  }

  VasPaymentPutRequestProductBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _type = $v.type;
      _shareLinkId = $v.shareLinkId;
      _skuId = $v.skuId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VasPaymentPutRequestProduct other) {
    _$v = other as _$VasPaymentPutRequestProduct;
  }

  @override
  void update(void Function(VasPaymentPutRequestProductBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VasPaymentPutRequestProduct build() => _build();

  _$VasPaymentPutRequestProduct _build() {
    final _$result = _$v ??
        _$VasPaymentPutRequestProduct._(
          type: type,
          shareLinkId: shareLinkId,
          skuId: skuId,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
