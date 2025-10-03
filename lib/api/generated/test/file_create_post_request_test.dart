import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for FileCreatePostRequest
void main() {
  final instance = FileCreatePostRequestBuilder();
  // TODO add properties to the builder and call build()

  group(FileCreatePostRequest, () {
    // [URI](https://docs.cloudreve.org/api/file-uri) of the file to be created.
    // String uri
    test('to test the property `uri`', () async {
      // TODO
    });

    // Type of the new file.
    // String type
    test('to test the property `type`', () async {
      // TODO
    });

    // Key-value map of metadata for the new file.
    // BuiltMap<String, String> metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // Define the behavior when there's conflict (object already existed) for given `uri`:  * If `true`, an error will be returned; * If `false`, no mutation is performed, the existing file in `uri` will be returned.
    // String errOnConflict
    test('to test the property `errOnConflict`', () async {
      // TODO
    });

  });
}
