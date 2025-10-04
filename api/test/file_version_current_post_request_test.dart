import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for FileVersionCurrentPostRequest
void main() {
  final instance = FileVersionCurrentPostRequestBuilder();
  // TODO add properties to the builder and call build()

  group(FileVersionCurrentPostRequest, () {
    // [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
    // String uri
    test('to test the property `uri`', () async {
      // TODO
    });

    // ID of the version to set as \"current version\". The version blob must be linked to current file. List of available versions can be retrieved via [Get file info](./get-file-info-306769225e0)
    // String version
    test('to test the property `version`', () async {
      // TODO
    });

  });
}
