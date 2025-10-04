import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for FileMovePostRequest
void main() {
  final instance = FileMovePostRequestBuilder();
  // TODO add properties to the builder and call build()

  group(FileMovePostRequest, () {
    // List of [URI](https://docs.cloudreve.org/api/file-uri) of the files to be moved or copied.
    // BuiltList<String> uris
    test('to test the property `uris`', () async {
      // TODO
    });

    // [URI](https://docs.cloudreve.org/api/file-uri) of thr destination folder.
    // String dst
    test('to test the property `dst`', () async {
      // TODO
    });

    // Whether this is a copy operation. If set to `false` or `null`, move operation is performed.
    // bool copy
    test('to test the property `copy`', () async {
      // TODO
    });

  });
}
