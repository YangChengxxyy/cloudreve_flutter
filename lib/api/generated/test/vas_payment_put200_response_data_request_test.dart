import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for VasPaymentPut200ResponseDataRequest
void main() {
  final instance = VasPaymentPut200ResponseDataRequestBuilder();
  // TODO add properties to the builder and call build()

  group(VasPaymentPut200ResponseDataRequest, () {
    // Whether following payment is needed. For payments using points, this is `false`.
    // bool paymentNeeded
    test('to test the property `paymentNeeded`', () async {
      // TODO
    });

    // URL to the payment page.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // If `true`, a QR Code is preferred to be shown to users. The content of the QR Code is `url`.
    // bool qrCodePreferred
    test('to test the property `qrCodePreferred`', () async {
      // TODO
    });

  });
}
