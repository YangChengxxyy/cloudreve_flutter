// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vas_payment_put200_response_data.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VasPaymentPut200ResponseData extends VasPaymentPut200ResponseData {
  @override
  final Payment payment;
  @override
  final VasPaymentPut200ResponseDataRequest request;

  factory _$VasPaymentPut200ResponseData(
          [void Function(VasPaymentPut200ResponseDataBuilder)? updates]) =>
      (VasPaymentPut200ResponseDataBuilder()..update(updates))._build();

  _$VasPaymentPut200ResponseData._(
      {required this.payment, required this.request})
      : super._();
  @override
  VasPaymentPut200ResponseData rebuild(
          void Function(VasPaymentPut200ResponseDataBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VasPaymentPut200ResponseDataBuilder toBuilder() =>
      VasPaymentPut200ResponseDataBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VasPaymentPut200ResponseData &&
        payment == other.payment &&
        request == other.request;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, payment.hashCode);
    _$hash = $jc(_$hash, request.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VasPaymentPut200ResponseData')
          ..add('payment', payment)
          ..add('request', request))
        .toString();
  }
}

class VasPaymentPut200ResponseDataBuilder
    implements
        Builder<VasPaymentPut200ResponseData,
            VasPaymentPut200ResponseDataBuilder> {
  _$VasPaymentPut200ResponseData? _$v;

  PaymentBuilder? _payment;
  PaymentBuilder get payment => _$this._payment ??= PaymentBuilder();
  set payment(PaymentBuilder? payment) => _$this._payment = payment;

  VasPaymentPut200ResponseDataRequestBuilder? _request;
  VasPaymentPut200ResponseDataRequestBuilder get request =>
      _$this._request ??= VasPaymentPut200ResponseDataRequestBuilder();
  set request(VasPaymentPut200ResponseDataRequestBuilder? request) =>
      _$this._request = request;

  VasPaymentPut200ResponseDataBuilder() {
    VasPaymentPut200ResponseData._defaults(this);
  }

  VasPaymentPut200ResponseDataBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _payment = $v.payment.toBuilder();
      _request = $v.request.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VasPaymentPut200ResponseData other) {
    _$v = other as _$VasPaymentPut200ResponseData;
  }

  @override
  void update(void Function(VasPaymentPut200ResponseDataBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VasPaymentPut200ResponseData build() => _build();

  _$VasPaymentPut200ResponseData _build() {
    _$VasPaymentPut200ResponseData _$result;
    try {
      _$result = _$v ??
          _$VasPaymentPut200ResponseData._(
            payment: payment.build(),
            request: request.build(),
          );
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'payment';
        payment.build();
        _$failedField = 'request';
        request.build();
      } catch (e) {
        throw BuiltValueNestedFieldError(
            r'VasPaymentPut200ResponseData', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
