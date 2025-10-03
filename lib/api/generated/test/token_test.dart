import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';

// tests for Token
void main() {
  final instance = TokenBuilder();
  // TODO add properties to the builder and call build()

  group(Token, () {
    // Access token that can be used to request API on user's behalf.
    // String accessToken
    test('to test the property `accessToken`', () async {
      // TODO
    });

    // Expiration date of the access token.
    // DateTime accessExpires
    test('to test the property `accessExpires`', () async {
      // TODO
    });

    // Refresh token that can be used to refresh a new pair of access token and refresh token.
    // String refreshToken
    test('to test the property `refreshToken`', () async {
      // TODO
    });

    // Expiration date of the refresh token.
    // DateTime refreshExpires
    test('to test the property `refreshExpires`', () async {
      // TODO
    });

  });
}
