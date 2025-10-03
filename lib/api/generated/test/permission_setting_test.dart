import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for PermissionSetting
void main() {
  final instance = PermissionSettingBuilder();
  // TODO add properties to the builder and call build()

  group(PermissionSetting, () {
    // Map of explicit permission setting from user ID to boolset.
    // BuiltMap<String, String> userExplicit
    test('to test the property `userExplicit`', () async {
      // TODO
    });

    // Map of explicit permission setting from group ID to boolset.
    // BuiltMap<String, String> groupExplicit
    test('to test the property `groupExplicit`', () async {
      // TODO
    });

    // Permission for users under the same group as the file owner.
    // String sameGroup
    test('to test the property `sameGroup`', () async {
      // TODO
    });

    // Permission for users under the different groups as the file owner.
    // String other
    test('to test the property `other`', () async {
      // TODO
    });

    // Permission for anonymous users.
    // String anonymous
    test('to test the property `anonymous`', () async {
      // TODO
    });

    // Permission for everyone else.
    // String everyone
    test('to test the property `everyone`', () async {
      // TODO
    });

  });
}
