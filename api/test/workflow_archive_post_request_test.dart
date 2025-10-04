import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for WorkflowArchivePostRequest
void main() {
  final instance = WorkflowArchivePostRequestBuilder();
  // TODO add properties to the builder and call build()

  group(WorkflowArchivePostRequest, () {
    // Source file URIs.
    // BuiltList<String> src
    test('to test the property `src`', () async {
      // TODO
    });

    // URI of destination archive file.
    // String dst
    test('to test the property `dst`', () async {
      // TODO
    });

    // Select preferred node to handle this task. Only available in pro edition. Option of nodes can be get from [List available nodes](./list-available-nodes-308315715e0).
    // String preferredNodeId
    test('to test the property `preferredNodeId`', () async {
      // TODO
    });

    // Optional paassword for `zip` or `7z` archive files.
    // String password
    test('to test the property `password`', () async {
      // TODO
    });

    // List of files to select. If presented, only files in this list, or contains any of it as prefix will be extracted.
    // BuiltList<String> fileMask
    test('to test the property `fileMask`', () async {
      // TODO
    });

  });
}
