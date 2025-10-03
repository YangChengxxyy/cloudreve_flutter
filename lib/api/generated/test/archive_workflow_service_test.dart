import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for ArchiveWorkflowService
void main() {
  final instance = ArchiveWorkflowServiceBuilder();
  // TODO add properties to the builder and call build()

  group(ArchiveWorkflowService, () {
    // Source file URIs.
    // BuiltList<String> src
    test('to test the property `src`', () async {
      // TODO
    });

    // URI of destination folder to store output files.
    // String dst
    test('to test the property `dst`', () async {
      // TODO
    });

    // Select preferred node to handle this task. Only available in pro edition. Option of nodes can be get from [List available nodes](./list-available-nodes-308315715e0).
    // String preferredNodeId
    test('to test the property `preferredNodeId`', () async {
      // TODO
    });

    // Encoding charset of the source archive file. By default it's `utf8`.
    // String encoding
    test('to test the property `encoding`', () async {
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
