import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for WorkflowDownloadPostRequest
void main() {
  final instance = WorkflowDownloadPostRequestBuilder();
  // TODO add properties to the builder and call build()

  group(WorkflowDownloadPostRequest, () {
    // URI of the destination folder.
    // String dst
    test('to test the property `dst`', () async {
      // TODO
    });

    // URI of the source torrent file. If this field is empty, `src` is required.
    // String srcFile
    test('to test the property `srcFile`', () async {
      // TODO
    });

    // List of URL to be download. Can be HTTP or magnet link, depending on the configured downloader. If this field is empty, `src_file` is required.
    // BuiltList<String> src
    test('to test the property `src`', () async {
      // TODO
    });

    // ID of preferred node to process
    // String preferredNodeId
    test('to test the property `preferredNodeId`', () async {
      // TODO
    });

  });
}
