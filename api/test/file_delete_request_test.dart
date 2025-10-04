import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for FileDeleteRequest
void main() {
  final instance = FileDeleteRequestBuilder();
  // TODO add properties to the builder and call build()

  group(FileDeleteRequest, () {
    // List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files.
    // BuiltList<String> uris
    test('to test the property `uris`', () async {
      // TODO
    });

    // Whether to keep physical files while recycling file blobs. This option only works if the user group have \"Advanced delete option` enabed.
    // bool unlink
    test('to test the property `unlink`', () async {
      // TODO
    });

    // Whether to skip trash bin, directly delete those files. This option only works file file owner or administrators.
    // bool skipSoftDelete
    test('to test the property `skipSoftDelete`', () async {
      // TODO
    });

  });
}
