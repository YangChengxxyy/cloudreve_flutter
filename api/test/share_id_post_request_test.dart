import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for ShareIdPostRequest
void main() {
  final instance = ShareIdPostRequestBuilder();
  // TODO add properties to the builder and call build()

  group(ShareIdPostRequest, () {
    // PermissionSetting permissions
    test('to test the property `permissions`', () async {
      // TODO
    });

    // [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or folder.
    // String uri
    test('to test the property `uri`', () async {
      // TODO
    });

    // Whether view settings within the shared folder is exposed to other user. If `uri` points to a file, this field is appliable.
    // bool shareView
    test('to test the property `shareView`', () async {
      // TODO
    });

    // Number of seconds after which the link will be expired. Empty value means permanent link.
    // int expire
    test('to test the property `expire`', () async {
      // TODO
    });

    // Only in Pro edition. Set the price (in points) to pay for this link.
    // int price
    test('to test the property `price`', () async {
      // TODO
    });

    // Whether client UI should automatically render and shoe `README.md` file. Only for share folder.
    // bool showReadme
    test('to test the property `showReadme`', () async {
      // TODO
    });

  });
}
