import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for WorkflowImportPostRequest
void main() {
  final instance = WorkflowImportPostRequestBuilder();
  // TODO add properties to the builder and call build()

  group(WorkflowImportPostRequest, () {
    // Path of the folder to be imported in external storage provider.
    // String src
    test('to test the property `src`', () async {
      // TODO
    });

    // Path of the folder to store imported files in user's `my` filesystem.
    // String dst
    test('to test the property `dst`', () async {
      // TODO
    });

    // Whether to extract media metadata right after a file is imported.
    // bool extractMediaMeta
    test('to test the property `extractMediaMeta`', () async {
      // TODO
    });

    // ID of the user that files are imported to.
    // String userId
    test('to test the property `userId`', () async {
      // TODO
    });

    // Whether to recursively import child folders.
    // bool recursive
    test('to test the property `recursive`', () async {
      // TODO
    });

    // ID of the storage policy which have to be imported files.
    // int policyId
    test('to test the property `policyId`', () async {
      // TODO
    });

  });
}
