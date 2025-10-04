import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for UserResetPostRequest
void main() {
  final instance = UserResetPostRequestBuilder();
  // TODO add properties to the builder and call build()

  group(UserResetPostRequest, () {
    // User input value of the graphical CAPTCHA. Required if graphic CAPTCHA enabled for current action.
    // String captcha
    test('to test the property `captcha`', () async {
      // TODO
    });

    // Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for current action. Can be obtained from [Get CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md).
    // String ticket
    test('to test the property `ticket`', () async {
      // TODO
    });

    // Account ematil.
    // String email
    test('to test the property `email`', () async {
      // TODO
    });

  });
}
