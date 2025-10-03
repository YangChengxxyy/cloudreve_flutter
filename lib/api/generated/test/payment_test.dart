import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for Payment
void main() {
  final instance = PaymentBuilder();
  // TODO add properties to the builder and call build()

  group(Payment, () {
    // ID of the payment.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Trade number of the payment.
    // String tradeNo
    test('to test the property `tradeNo`', () async {
      // TODO
    });

    // Title of the payment.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Status of the payment.
    // String status
    test('to test the property `status`', () async {
      // TODO
    });

    // Quantity of desired product.
    // int qyt
    test('to test the property `qyt`', () async {
      // TODO
    });

    // Price for one product, in the minimum currency unit, or in points.
    // int priceUnit
    test('to test the property `priceUnit`', () async {
      // TODO
    });

    // ISO [currency code](https://docs.cloudreve.org/en/payment/official#currency-symbol). Empty value means paying by points.
    // String priceId
    test('to test the property `priceId`', () async {
      // TODO
    });

    // [Currency symbol](https://docs.cloudreve.org/en/payment/official#currency-symbol). Empty value means paying by points.
    // String priceMark
    test('to test the property `priceMark`', () async {
      // TODO
    });

    // Minimum [currency unit](https://docs.cloudreve.org/en/payment/official#currency-unit). Empty value means paying by points.
    // int priceOneUnit
    test('to test the property `priceOneUnit`', () async {
      // TODO
    });

    // Datetime when the payment is created.
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Datetime when the payment is updated.
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // Type of the product.
    // int productType
    test('to test the property `productType`', () async {
      // TODO
    });

    // The access ticket for paid share. Only presented when an anonymous user purshaed a paid share link. It can be used in `X-Cr-Purchase-Ticket` to proof purchasing and access file related APIs.
    // String ticket
    test('to test the property `ticket`', () async {
      // TODO
    });

  });
}
