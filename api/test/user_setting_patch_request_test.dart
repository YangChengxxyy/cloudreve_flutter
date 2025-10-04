import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for UserSettingPatchRequest
void main() {
  final instance = UserSettingPatchRequestBuilder();
  // TODO add properties to the builder and call build()

  group(UserSettingPatchRequest, () {
    // Display name.
    // String nick
    test('to test the property `nick`', () async {
      // TODO
    });

    // Set this to `true` to manually cancel membership before expiration. Only appliable to Pro edition.
    // bool groupExpires
    test('to test the property `groupExpires`', () async {
      // TODO
    });

    // Preferred UI and Email language.
    // String language
    test('to test the property `language`', () async {
      // TODO
    });

    // Set preferred theme color. Available options can be get from [Get site settings](./get-site-settings-289489676e0).
    // String preferredTheme
    test('to test the property `preferredTheme`', () async {
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

    // Max preserved version. For value `0`, all version will be preserved.
    // int versionRetentionMax
    test('to test the property `versionRetentionMax`', () async {
      // TODO
    });

    // Current user password, required for updating password.
    // String currentPassword
    test('to test the property `currentPassword`', () async {
      // TODO
    });

    // New password. If set, `current_password` is required.
    // String newPassword
    test('to test the property `newPassword`', () async {
      // TODO
    });

    // Whether 2FA is enabled.
    // bool twoFaEnabled
    test('to test the property `twoFaEnabled`', () async {
      // TODO
    });

    // Required if `two_fa_enabled` is not `null`.   If `two_fa_enabled` is `true`, this is the 6-digts code for the [new 2FA secret](./prepare-enabling-2fa-308379967e0). If two_fa_enabled` is `false`, this is the 6-digts code for current enabled secret.
    // String twoFaCode
    test('to test the property `twoFaCode`', () async {
      // TODO
    });

    // Whether explorer view setting sync is disabled.
    // bool disableViewSync
    test('to test the property `disableViewSync`', () async {
      // TODO
    });

  });
}
