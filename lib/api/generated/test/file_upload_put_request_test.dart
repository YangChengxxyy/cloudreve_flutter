import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for FileUploadPutRequest
void main() {
  final instance = FileUploadPutRequestBuilder();
  // TODO add properties to the builder and call build()

  group(FileUploadPutRequest, () {
    // [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
    // String uri
    test('to test the property `uri`', () async {
      // TODO
    });

    // Size of the file.
    // int size
    test('to test the property `size`', () async {
      // TODO
    });

    // Optional Unix milliseconds timestamp of when the file is last modified.
    // int lastModified
    test('to test the property `lastModified`', () async {
      // TODO
    });

    // Optional mime type of the file. If not set, will try to guess from file extension name.
    // String mimeType
    test('to test the property `mimeType`', () async {
      // TODO
    });

    // ID of the storage policy to use.
    // String policyId
    test('to test the property `policyId`', () async {
      // TODO
    });

    // Optional key-value of file metadata.
    // BuiltMap<String, String> metadata
    test('to test the property `metadata`', () async {
      // TODO
    });

    // Optional blob type.  By default (omit this field), request will fail if file name conflict with exsting file. If set to `version`, exsiting file will be overwritten. If set to `live_photo`, the file specified in `uri` must be an existing file.
    // String entityType
    test('to test the property `entityType`', () async {
      // TODO
    });

  });
}
