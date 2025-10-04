import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for Share
void main() {
  final instance = ShareBuilder();
  // TODO add properties to the builder and call build()

  group(Share, () {
    // ID of the share link.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Name of the shared file/folder.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // Count of views to this share link.
    // int visited
    test('to test the property `visited`', () async {
      // TODO
    });

    // Count of downloads to this share link. Only appliable to share links with a file(not folder) as source type.
    // int downloaded
    test('to test the property `downloaded`', () async {
      // TODO
    });

    // Price of this share link, in points.
    // int price
    test('to test the property `price`', () async {
      // TODO
    });

    // Whether this share link is accessible to current user.
    // bool unlocked
    test('to test the property `unlocked`', () async {
      // TODO
    });

    // Type of the shared source file.
    // int sourceType (default value: ShareSourceTypeEnum.number1)
    test('to test the property `sourceType`', () async {
      // TODO
    });

    // ShareOwner owner
    test('to test the property `owner`', () async {
      // TODO
    });

    // Create time.
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Whether this link is already expired.
    // bool expired
    test('to test the property `expired`', () async {
      // TODO
    });

    // URL of the share link.
    // String url
    test('to test the property `url`', () async {
      // TODO
    });

    // SharePermissionSetting permissionSetting
    test('to test the property `permissionSetting`', () async {
      // TODO
    });

    // Only visable to owner. Whether this link is private (with password).
    // bool isPrivate
    test('to test the property `isPrivate`', () async {
      // TODO
    });

    // Only visable to owner. Password of this share.
    // String password
    test('to test the property `password`', () async {
      // TODO
    });

    // Only visable to owner, the [`File URI`](https://docs.cloudreve.org/api/file-uri) of the source file in owner's `my` filesystem.
    // String sourceUri
    test('to test the property `sourceUri`', () async {
      // TODO
    });

    // Only visable to owner, whether the explorer view setting is shared with others.
    // bool shareView
    test('to test the property `shareView`', () async {
      // TODO
    });

    // Whether client UI should automatically render and shoe `README.md` file. Only for share folder.
    // bool showReadme
    test('to test the property `showReadme`', () async {
      // TODO
    });

    // Whether this share link is private (password protected).
    // bool passwordProtected
    test('to test the property `passwordProtected`', () async {
      // TODO
    });

  });
}
