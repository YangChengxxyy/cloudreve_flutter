import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for Group
void main() {
  final instance = GroupBuilder();
  // TODO add properties to the builder and call build()

  group(Group, () {
    // ID of the group.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Name of the group.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Permission boolset of the group. Refer to [Boolset](https://docs.cloudreve.org/api/boolset) for how to read it.
    // String permission
    test('to test the property `permission`', () async {
      // TODO
    });

    // The maximum number of files allowed for users to obtain direct links in a single batch, fill in 0 means no batch generation of direct links is allowed.
    // int directLinkBatchSize
    test('to test the property `directLinkBatchSize`', () async {
      // TODO
    });

    // The retention time in seconds of files in the trash bin, files will be permanently deleted after the expiration time. Changing this setting will not affect files already in the trash bin.
    // int trashRetention
    test('to test the property `trashRetention`', () async {
      // TODO
    });

  });
}
