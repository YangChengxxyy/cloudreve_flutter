import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for UserSettingGet200ResponseData
void main() {
  final instance = UserSettingGet200ResponseDataBuilder();
  // TODO add properties to the builder and call build()

  group(UserSettingGet200ResponseData, () {
    // Datetime when the cuurent membership expired. Empty value means no active membership. Only presented in Pro edition.
    // DateTime groupExpires
    test('to test the property `groupExpires`', () async {
      // TODO
    });

    // List of linked external identity providers. Only presented in Pro edition.
    // BuiltList<UserSettingGet200ResponseDataOpenIdInner> openId
    test('to test the property `openId`', () async {
      // TODO
    });

    // Whether file version retention is enabled.
    // bool versionRetentionEnabled
    test('to test the property `versionRetentionEnabled`', () async {
      // TODO
    });

    // List of file extensions enabling file version retention. For null or empty list, all extensions are enabled.
    // BuiltList<String> versionRetentionExt
    test('to test the property `versionRetentionExt`', () async {
      // TODO
    });

    // Max preserved version. For `0` or null, all version will be preserved.
    // int versionRetentionMax
    test('to test the property `versionRetentionMax`', () async {
      // TODO
    });

    // Whether this account is passwordless (sign in via 3rd party identity provider).
    // bool passwordless
    test('to test the property `passwordless`', () async {
      // TODO
    });

    // Whether 2FA is enabled.
    // bool twoFaEnabled
    test('to test the property `twoFaEnabled`', () async {
      // TODO
    });

    // List of registered passkeys.
    // BuiltList<Passkey> passkeys
    test('to test the property `passkeys`', () async {
      // TODO
    });

    // List of recent login activities. Only presented in Pro edition.
    // BuiltList<UserSettingGet200ResponseDataLoginActivityInner> loginActivity
    test('to test the property `loginActivity`', () async {
      // TODO
    });

    // List of available extra storage packs
    // BuiltList<UserSettingGet200ResponseDataStoragePacksInner> storagePacks
    test('to test the property `storagePacks`', () async {
      // TODO
    });

    // Available points balance.
    // int credit
    test('to test the property `credit`', () async {
      // TODO
    });

    // Whether explorer view setting sync is disabled.
    // bool disableViewSync
    test('to test the property `disableViewSync`', () async {
      // TODO
    });

    // What type of share link is visable in user's profile.
    // String shareLinksInProfile
    test('to test the property `shareLinksInProfile`', () async {
      // TODO
    });

  });
}
