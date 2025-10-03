import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for VASGiftCodeApi
void main() {
  final instance = CloudreveApiClient().getVASGiftCodeApi();

  group(VASGiftCodeApi, () {
    // Check gift code
    //
    // Get details of given gift code, but it does not process redemption.
    //
    //Future<VasGiftcodeCodeGet200Response> vasGiftcodeCodeGet(String code) async
    test('test vasGiftcodeCodeGet', () async {
      // TODO
    });

    // Redeem gift code
    //
    // 
    //
    //Future<VasGiftcodeCodeRedeemPost200Response> vasGiftcodeCodeRedeemPost(String code) async
    test('test vasGiftcodeCodeRedeemPost', () async {
      // TODO
    });

  });
}
