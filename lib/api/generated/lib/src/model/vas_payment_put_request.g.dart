// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vas_payment_put_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VasPaymentPutRequest extends VasPaymentPutRequest {
  @override
  final VasPaymentPutRequestProduct product;
  @override
  final int quantity;
  @override
  final String? providerId;
  @override
  final String? email;
  @override
  final String? language;

  factory _$VasPaymentPutRequest(
          [void Function(VasPaymentPutRequestBuilder)? updates]) =>
      (VasPaymentPutRequestBuilder()..update(updates))._build();

  _$VasPaymentPutRequest._(
      {required this.product,
      required this.quantity,
      this.providerId,
      this.email,
      this.language})
      : super._();
  @override
  VasPaymentPutRequest rebuild(
          void Function(VasPaymentPutRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VasPaymentPutRequestBuilder toBuilder() =>
      VasPaymentPutRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VasPaymentPutRequest &&
        product == other.product &&
        quantity == other.quantity &&
        providerId == other.providerId &&
        email == other.email &&
        language == other.language;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, product.hashCode);
    _$hash = $jc(_$hash, quantity.hashCode);
    _$hash = $jc(_$hash, providerId.hashCode);
    _$hash = $jc(_$hash, email.hashCode);
    _$hash = $jc(_$hash, language.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VasPaymentPutRequest')
          ..add('product', product)
          ..add('quantity', quantity)
          ..add('providerId', providerId)
          ..add('email', email)
          ..add('language', language))
        .toString();
  }
}

class VasPaymentPutRequestBuilder
    implements Builder<VasPaymentPutRequest, VasPaymentPutRequestBuilder> {
  _$VasPaymentPutRequest? _$v;

  VasPaymentPutRequestProductBuilder? _product;
  VasPaymentPutRequestProductBuilder get product =>
      _$this._product ??= VasPaymentPutRequestProductBuilder();
  set product(VasPaymentPutRequestProductBuilder? product) =>
      _$this._product = product;

  int? _quantity;
  int? get quantity => _$this._quantity;
  set quantity(int? quantity) => _$this._quantity = quantity;

  String? _providerId;
  String? get providerId => _$this._providerId;
  set providerId(String? providerId) => _$this._providerId = providerId;

  String? _email;
  String? get email => _$this._email;
  set email(String? email) => _$this._email = email;

  String? _language;
  String? get language => _$this._language;
  set language(String? language) => _$this._language = language;

  VasPaymentPutRequestBuilder() {
    VasPaymentPutRequest._defaults(this);
  }

  VasPaymentPutRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _product = $v.product.toBuilder();
      _quantity = $v.quantity;
      _providerId = $v.providerId;
      _email = $v.email;
      _language = $v.language;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VasPaymentPutRequest other) {
    _$v = other as _$VasPaymentPutRequest;
  }

  @override
  void update(void Function(VasPaymentPutRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VasPaymentPutRequest build() => _build();

  _$VasPaymentPutRequest _build() {
    _$VasPaymentPutRequest _$result;
    try {
      _$result = _$v ??
          _$VasPaymentPutRequest._(
            product: product.build(),
            quantity: BuiltValueNullFieldError.checkNotNull(
                quantity, r'VasPaymentPutRequest', 'quantity'),
            providerId: providerId,
            email: email,
            language: language,
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'product';
        product.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VasPaymentPutRequest', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
