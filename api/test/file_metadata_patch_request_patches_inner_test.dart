import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for FileMetadataPatchRequestPatchesInner
void main() {
  final instance = FileMetadataPatchRequestPatchesInnerBuilder();
  // TODO add properties to the builder and call build()

  group(FileMetadataPatchRequestPatchesInner, () {
    // Metadata key. For patch operation, only a set of selected key prefixs are allowed: `sys:*`,`dav:*`, `customize:*`, `tag:*`.
    // String key
    test('to test the property `key`', () async {
      // TODO
    });

    // Value of the metadata.
    // String value
    test('to test the property `value`', () async {
      // TODO
    });

    // If set to `true`, metadata with given key will be removed.
    // bool remove
    test('to test the property `remove`', () async {
      // TODO
    });

  });
}
