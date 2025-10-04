import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for FileViewerSessionPutRequest
void main() {
  final instance = FileViewerSessionPutRequestBuilder();
  // TODO add properties to the builder and call build()

  group(FileViewerSessionPutRequest, () {
    // [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
    // String uri
    test('to test the property `uri`', () async {
      // TODO
    });

    // Desired version ID to open. Empty value indicating the current version.
    // String version
    test('to test the property `version`', () async {
      // TODO
    });

    // ID of the file apps. List of available file apps can be get from `file_viewers` in [Get site settings](./get-site-settings-289489676e0) under `explorer` section.
    // String viewerId
    test('to test the property `viewerId`', () async {
      // TODO
    });

    // Preferred action for this session.
    // String preferredAction
    test('to test the property `preferredAction`', () async {
      // TODO
    });

    // [URI](https://docs.cloudreve.org/api/file-uri) of the parent folder where the file is located. Usualy it can be calculated from `uri` field. But for single-file symbolic links, `uri` can be a different folder or filesystem from where the symbolic link is located.
    // String parentUri
    test('to test the property `parentUri`', () async {
      // TODO
    });

  });
}
