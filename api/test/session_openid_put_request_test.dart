import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for SessionOpenidPutRequest
void main() {
  final instance = SessionOpenidPutRequestBuilder();
  // TODO add properties to the builder and call build()

  group(SessionOpenidPutRequest, () {
    // Email of preferred 3rd party account. Only Logto supports it.
    // String hint
    test('to test the property `hint`', () async {
      // TODO
    });

    // Whether this sign in is for linking existing account in Cloudreve. If `true`, a valid session is required.
    // bool linking
    test('to test the property `linking`', () async {
      // TODO
    });

    // OpenID provider type ID.
    // int provider
    test('to test the property `provider`', () async {
      // TODO
    });

  });
}
