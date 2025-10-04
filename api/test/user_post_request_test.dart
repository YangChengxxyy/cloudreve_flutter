import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for UserPostRequest
void main() {
  final instance = UserPostRequestBuilder();
  // TODO add properties to the builder and call build()

  group(UserPostRequest, () {
    // Account email.
    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // Account password.
    // String password
    test('to test the property `password`', () async {
      // TODO
    });

    // Primary UI and Email language code, should be a registered language in [i18n.ts](https://github.com/cloudreve/frontend/blob/master/src/i18n.ts#L44).
    // String language
    test('to test the property `language`', () async {
      // TODO
    });

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

  });
}
