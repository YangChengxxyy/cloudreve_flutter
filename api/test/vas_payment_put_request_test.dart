import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for VasPaymentPutRequest
void main() {
  final instance = VasPaymentPutRequestBuilder();
  // TODO add properties to the builder and call build()

  group(VasPaymentPutRequest, () {
    // VasPaymentPutRequestProduct product
    test('to test the property `product`', () async {
      // TODO
    });

    // Quantity of the product. For points product, this is the count of purchasing points.
    // int quantity
    test('to test the property `quantity`', () async {
      // TODO
    });

    // ID of the payment provider. Empty value means paying using points.  List of available payment providers can be get from `payment` in the response of [Get site settings](./get-site-settings-289489676e0) under `vas` section.
    // String providerId
    test('to test the property `providerId`', () async {
      // TODO
    });

    // Email of the payment owner to send receipt. Only required when `Authorization` header is missing.
    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // Language code of the receipt email. Only appliable when `Authorization` header is missing.
    // String language
    test('to test the property `language`', () async {
      // TODO
    });

  });
}
