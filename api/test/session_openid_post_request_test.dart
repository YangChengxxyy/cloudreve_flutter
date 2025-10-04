import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for SessionOpenidPostRequest
void main() {
  final instance = SessionOpenidPostRequestBuilder();
  // TODO add properties to the builder and call build()

  group(SessionOpenidPostRequest, () {
    // OAuth `code`, can be found in the redirected URL query string after user sign in complete.
    // String code
    test('to test the property `code`', () async {
      // TODO
    });

    // Sign in session ID, can be found in the redirected URL query string `state`.
    // String sessionId
    test('to test the property `sessionId`', () async {
      // TODO
    });

    // OpenID provider type ID.
    // int providerId
    test('to test the property `providerId`', () async {
      // TODO
    });

  });
}
