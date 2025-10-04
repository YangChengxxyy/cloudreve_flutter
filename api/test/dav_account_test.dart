import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for DavAccount
void main() {
  final instance = DavAccountBuilder();
  // TODO add properties to the builder and call build()

  group(DavAccount, () {
    // ID of the WebDAV account.
    // String id
    test('to test the property `id`', () async {
      // TODO
    });

    // Datetime when the account is created.
    // DateTime createdAt
    test('to test the property `createdAt`', () async {
      // TODO
    });

    // Annotation of this account.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // [URI](https://docs.cloudreve.org/api/file-uri) of the root folder.
    // String uri
    test('to test the property `uri`', () async {
      // TODO
    });

    // Generated password of this account.
    // String password
    test('to test the property `password`', () async {
      // TODO
    });

    // [Boolset](https://docs.cloudreve.org/api/boolset) encoded account options.
    // String options
    test('to test the property `options`', () async {
      // TODO
    });

  });
}
