import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for VASPaymentApi
void main() {
  final instance = CloudreveApiClient().getVASPaymentApi();

  group(VASPaymentApi, () {
    // Create a payment
    //
    // Create a payment for given product.
    //
    //Future<VasPaymentPut200Response> vasPaymentPut({ VasPaymentPutRequest vasPaymentPutRequest }) async
    test('test vasPaymentPut', () async {
      // TODO
    });

    // Get payment status
    //
    // 
    //
    //Future<VasPaymentStatusIdTradeNoGet200Response> vasPaymentStatusIdTradeNoGet(String id, String tradeNo) async
    test('test vasPaymentStatusIdTradeNoGet', () async {
      // TODO
    });

  });
}
