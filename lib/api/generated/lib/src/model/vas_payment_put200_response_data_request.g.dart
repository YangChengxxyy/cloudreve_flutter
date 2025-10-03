// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vas_payment_put200_response_data_request.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

class _$VasPaymentPut200ResponseDataRequest
    extends VasPaymentPut200ResponseDataRequest {
  @override
  final bool? paymentNeeded;
  @override
  final String? url;
  @override
  final bool? qrCodePreferred;

  factory _$VasPaymentPut200ResponseDataRequest(
          [void Function(VasPaymentPut200ResponseDataRequestBuilder)?
              updates]) =>
      (VasPaymentPut200ResponseDataRequestBuilder()..update(updates))._build();

  _$VasPaymentPut200ResponseDataRequest._(
      {this.paymentNeeded, this.url, this.qrCodePreferred})
      : super._();
  @override
  VasPaymentPut200ResponseDataRequest rebuild(
          void Function(VasPaymentPut200ResponseDataRequestBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VasPaymentPut200ResponseDataRequestBuilder toBuilder() =>
      VasPaymentPut200ResponseDataRequestBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VasPaymentPut200ResponseDataRequest &&
        paymentNeeded == other.paymentNeeded &&
        url == other.url &&
        qrCodePreferred == other.qrCodePreferred;
  }

  @override
  int get hashCode {
    var _$hash = 0;
    _$hash = $jc(_$hash, paymentNeeded.hashCode);
    _$hash = $jc(_$hash, url.hashCode);
    _$hash = $jc(_$hash, qrCodePreferred.hashCode);
    _$hash = $jf(_$hash);
    return _$hash;
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VasPaymentPut200ResponseDataRequest')
          ..add('paymentNeeded', paymentNeeded)
          ..add('url', url)
          ..add('qrCodePreferred', qrCodePreferred))
        .toString();
  }
}

class VasPaymentPut200ResponseDataRequestBuilder
    implements
        Builder<VasPaymentPut200ResponseDataRequest,
            VasPaymentPut200ResponseDataRequestBuilder> {
  _$VasPaymentPut200ResponseDataRequest? _$v;

  bool? _paymentNeeded;
  bool? get paymentNeeded => _$this._paymentNeeded;
  set paymentNeeded(bool? paymentNeeded) =>
      _$this._paymentNeeded = paymentNeeded;

  String? _url;
  String? get url => _$this._url;
  set url(String? url) => _$this._url = url;

  bool? _qrCodePreferred;
  bool? get qrCodePreferred => _$this._qrCodePreferred;
  set qrCodePreferred(bool? qrCodePreferred) =>
      _$this._qrCodePreferred = qrCodePreferred;

  VasPaymentPut200ResponseDataRequestBuilder() {
    VasPaymentPut200ResponseDataRequest._defaults(this);
  }

  VasPaymentPut200ResponseDataRequestBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _paymentNeeded = $v.paymentNeeded;
      _url = $v.url;
      _qrCodePreferred = $v.qrCodePreferred;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VasPaymentPut200ResponseDataRequest other) {
    _$v = other as _$VasPaymentPut200ResponseDataRequest;
  }

  @override
  void update(
      void Function(VasPaymentPut200ResponseDataRequestBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VasPaymentPut200ResponseDataRequest build() => _build();

  _$VasPaymentPut200ResponseDataRequest _build() {
    final _$result = _$v ??
        _$VasPaymentPut200ResponseDataRequest._(
          paymentNeeded: paymentNeeded,
          url: url,
          qrCodePreferred: qrCodePreferred,
        );
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: deprecated_member_use_from_same_package,type=lint
