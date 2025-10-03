import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for ExtendedInfo
void main() {
  final instance = ExtendedInfoBuilder();
  // TODO add properties to the builder and call build()

  group(ExtendedInfo, () {
    // ExtendedInfoStoragePolicy storagePolicy
    test('to test the property `storagePolicy`', () async {
      // TODO
    });

    // Only applies to folders. Indicating whether this storage policy setting is inherited from parent folders.
    // bool storagePolicyInherited
    test('to test the property `storagePolicyInherited`', () async {
      // TODO
    });

    // Storage used by this file, equals to sum of size for all referred blobs.
    // int storageUsed
    test('to test the property `storageUsed`', () async {
      // TODO
    });

    // List of share links for this file.
    // BuiltList<Share> shares
    test('to test the property `shares`', () async {
      // TODO
    });

    // BuiltList<Entity> entities
    test('to test the property `entities`', () async {
      // TODO
    });

    // PermissionSetting permissions
    test('to test the property `permissions`', () async {
      // TODO
    });

    // List of redirected direct links. Only visable to file owners or administrators.
    // BuiltList<ExtendedInfoDirectLinksInner> directLinks
    test('to test the property `directLinks`', () async {
      // TODO
    });

  });
}
