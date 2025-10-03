import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for UserSettingGet200ResponseDataLoginActivityInner
void main() {
  final instance = UserSettingGet200ResponseDataLoginActivityInnerBuilder();
  // TODO add properties to the builder and call build()

  group(UserSettingGet200ResponseDataLoginActivityInner, () {
    // When the login activity initiated.
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // IP address of the client.
    // String ip
    test('to test the property `ip`', () async {
      // TODO
    });

    // Name of the browser, parsed from user agent.
    // String browser
    test('to test the property `browser`', () async {
      // TODO
    });

    // Name of the device, parsed from user agent.
    // String device
    test('to test the property `device`', () async {
      // TODO
    });

    // Name of the operating system, parsed from user agent.
    // String os
    test('to test the property `os`', () async {
      // TODO
    });

    // Method for sign in. Empty string means sign in using password.
    // String loginWith
    test('to test the property `loginWith`', () async {
      // TODO
    });

    // Type of the 3rd party identity provider. Only valid if `login_with` is `openid`.
    // int openIdProvider
    test('to test the property `openIdProvider`', () async {
      // TODO
    });

    // Whether this sign in succeed.
    // bool success
    test('to test the property `success`', () async {
      // TODO
    });

    // Whether this request is from WebDAV client. Currently we only record failed sign in activities for WebDAV requests.
    // bool webdav
    test('to test the property `webdav`', () async {
      // TODO
    });

  });
}
