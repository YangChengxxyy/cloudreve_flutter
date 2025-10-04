import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for FileRenamePost200ResponseData
void main() {
  final instance = FileRenamePost200ResponseDataBuilder();
  // TODO add properties to the builder and call build()

  group(FileRenamePost200ResponseData, () {
    // Type of this file.
    // int type
    test('to test the property `type`', () async {
      // TODO
    });

    // ID of this file.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Name of this file.   It might not be expected display name. For files under trash bin, this field is a non-readable UUID. The expected display name should be retrieved from `metadata` with name `sys:restore_uri`, which can be parsed as a [URI](https://docs.cloudreve.org/api/file-uri).
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // [Boolset](https://docs.cloudreve.org/api/boolset) encoded permissions granted by current authenticated user. For `null`, all permissions are granted. Permission definition can be found at [File Permissions](https://docs.cloudreve.org/api/boolset#file-permission)
    // String permission
    test('to test the property `permission`', () async {
      // TODO
    });

    // Datetime when the file is created.
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Datetime when the file is last updated.
    // DateTime updatedAt
    test('to test the property `updatedAt`', () async {
      // TODO
    });

    // Size of the file, also the size of current primary version blob.
    // int size
    test('to test the property `size`', () async {
      // TODO
    });

    // [URI](https://docs.cloudreve.org/api/file-uri) of this file.
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // Whether this file has share links.
    // bool shared
    test('to test the property `shared`', () async {
      // TODO
    });

    // [Boolset](https://docs.cloudreve.org/api/boolset) encoded set of capabilities supported.
    // String capability
    test('to test the property `capability`', () async {
      // TODO
    });

    // Whether this file is owned by current authenticated user.
    // bool owned
    test('to test the property `owned`', () async {
      // TODO
    });

    // ID of the primary version blob.
    // String primaryEntity
    test('to test the property `primaryEntity`', () async {
      // TODO
    });

  });
}
