import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for SitePingGet200ResponseData
void main() {
  final instance = SitePingGet200ResponseDataBuilder();
  // TODO add properties to the builder and call build()

  group(SitePingGet200ResponseData, () {
    // Whether this account can be logged in with Passkeys.
    // bool webauthnEnabled
    test('to test the property `webauthnEnabled`', () async {
      // TODO
    });

    // Whether this account can be logged in with password.
    // bool passwordEnabled
    test('to test the property `passwordEnabled`', () async {
      // TODO
    });

    // Whether this account can be logged in with Tencent QQ.
    // bool qqEnabled
    test('to test the property `qqEnabled`', () async {
      // TODO
    });

    // Whether this account can be logged in with Logto.
    // bool ssoEnabled
    test('to test the property `ssoEnabled`', () async {
      // TODO
    });

    // A [PublicKeyCredentialCreationOptions](https://www.w3.org/TR/webauthn/#dictionary-makecredentialoptions) object that can be used to invoke passkey registration from browser.
    // JsonObject publicKey
    test('to test the property `publicKey`', () async {
      // TODO
    });

    // ID of the login session.
    // String sessionId
    test('to test the property `sessionId`', () async {
      // TODO
    });

    // SitePingGet200ResponseDataOptions options
    test('to test the property `options`', () async {
      // TODO
    });

  });
}
