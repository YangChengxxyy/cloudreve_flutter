import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for ExtendedInfoStoragePolicy
void main() {
  final instance = ExtendedInfoStoragePolicyBuilder();
  // TODO add properties to the builder and call build()

  group(ExtendedInfoStoragePolicy, () {
    // ID of the storage policy.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Display name of the storage policy.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // List of file extensions allowed in this storage policy. Empty list means no limit on allowed extensions.
    // BuiltList<String> allowedSuffix
    test('to test the property `allowedSuffix`', () async {
      // TODO
    });

    // List of file extensions denied in this storage policy. Empty list means no limit on denied extensions.
    // BuiltList<String> deniedSuffix
    test('to test the property `deniedSuffix`', () async {
      // TODO
    });

    // Storage provider type.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // If not empty, file name must match this regex.
    // String allowedNameRegexp
    test('to test the property `allowedNameRegexp`', () async {
      // TODO
    });

    // If not empty, file name must NOT match this regex.
    // String deniedNameRegexp
    test('to test the property `deniedNameRegexp`', () async {
      // TODO
    });

    // Max allowed size of a single file. `0` means no limit.
    // num maxSize
    test('to test the property `maxSize`', () async {
      // TODO
    });

    // Indicates whether upload needs to be proxyed by Cloudreve. If `true`, the client should treat it as a `local` storage policy to process uploading.
    // bool relay
    test('to test the property `relay`', () async {
      // TODO
    });

    // Load balance weight of this storage policy. Only presented if this storage policy is child of a load balance storage policy.
    // num weight
    test('to test the property `weight`', () async {
      // TODO
    });

    // Child storage policies, only presented if policy type equals `load_balance`.
    // BuiltList<StoragePolicy> children
    test('to test the property `children`', () async {
      // TODO
    });

    // Number of threads to use for concurrent chunk uploading.
    // int chunkConcurrency
    test('to test the property `chunkConcurrency`', () async {
      // TODO
    });

  });
}
