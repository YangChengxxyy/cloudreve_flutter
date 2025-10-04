import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for VasPaymentPutRequestProduct
void main() {
  final instance = VasPaymentPutRequestProductBuilder();
  // TODO add properties to the builder and call build()

  group(VasPaymentPutRequestProduct, () {
    // Type of the product.
    // int type
    test('to test the property `type`', () async {
      // TODO
    });

    // ID of the paid share link. Only required if `type` is `3`.
    // String shareLinkId
    test('to test the property `shareLinkId`', () async {
      // TODO
    });

    // SKU ID for user group or storage packs. Only required if `type` is `2` or `3`.
    // String skuId
    test('to test the property `skuId`', () async {
      // TODO
    });

  });
}
