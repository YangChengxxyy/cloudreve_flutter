import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for LogEntry
void main() {
  final instance = LogEntryBuilder();
  // TODO add properties to the builder and call build()

  group(LogEntry, () {
    // Category of this log. Definition can be found in [`explorer.ts`](https://github.com/cloudreve/frontend/blob/master/src/api/explorer.ts#L20).
    // int category
    test('to test the property `category`', () async {
      // TODO
    });

    // Extra key-value props.
    // BuiltMap<String, JsonObject> exts
    test('to test the property `exts`', () async {
      // TODO
    });

    // Original name of the file in renaming operation.
    // String originalName
    test('to test the property `originalName`', () async {
      // TODO
    });

    // New name of the file in renaming operation.
    // String newName
    test('to test the property `newName`', () async {
      // TODO
    });

    // URI of the source file.
    // String from
    test('to test the property `from`', () async {
      // TODO
    });

    // URI of the destination file.
    // String to
    test('to test the property `to`', () async {
      // TODO
    });

    // Entity creation datetime.
    // DateTime entityCreateTime
    test('to test the property `entityCreateTime`', () async {
      // TODO
    });

    // ID of the correlated storage policy.
    // String storagePolicyId
    test('to test the property `storagePolicyId`', () async {
      // TODO
    });

    // Name of the correlated storage policy.
    // String storagePolicy
    test('to test the property `storagePolicy`', () async {
      // TODO
    });

  });
}
