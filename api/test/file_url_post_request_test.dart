import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for FileUrlPostRequest
void main() {
  final instance = FileUrlPostRequestBuilder();
  // TODO add properties to the builder and call build()

  group(FileUrlPostRequest, () {
    // List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files.
    // BuiltList<String> uris
    test('to test the property `uris`', () async {
      // TODO
    });

    // Whether the desired URL is for downloading files. For supported storage policy, browser will download file instead of previewing it directly if this field is set to  `true`.
    // bool download
    test('to test the property `download`', () async {
      // TODO
    });

    // Only works if only 1 items presented in `uris`.  If set to `true`, the HTTP response will use 302 status code to redirect to target URL instead of returning result in JSON response.
    // bool redirect
    test('to test the property `redirect`', () async {
      // TODO
    });

    // Only works if only 1 items presented in `uris` and `archive` is `false`. Specify preferred ID of the file blob. By default, latest version blob will be selected.
    // String entity
    test('to test the property `entity`', () async {
      // TODO
    });

    // By default, the host domain of file URL will try to accommodate the actual `Host` that the client site requesting the API (If the `Host` is presented in primary/secondary site URL setting in dashboard). If you wish to force using primary site URL, please set this to `true`.
    // bool usePrimarySiteUrl
    test('to test the property `usePrimarySiteUrl`', () async {
      // TODO
    });

    // Whether to skip errors and return partial successful file URLs. If set to `false` or omited, the whole request will fail if errors occurs for any items in `uris`.
    // bool skipError
    test('to test the property `skipError`', () async {
      // TODO
    });

    // Whether to use server-side batch download. If set to `true`, only one URl will be returned for multiple target files. This URL will trigger server-side archving for target files, resulting in one `.zip` file containing all target files.
    // bool archive
    test('to test the property `archive`', () async {
      // TODO
    });

    // Whether to disable blob URL cache.
    // bool noCache
    test('to test the property `noCache`', () async {
      // TODO
    });

  });
}
