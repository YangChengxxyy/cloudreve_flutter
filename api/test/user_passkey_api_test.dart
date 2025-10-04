import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for UserPasskeyApi
void main() {
  final instance = CloudreveApiClient().getUserPasskeyApi();

  group(UserPasskeyApi, () {
    // Delete passkey
    //
    // Delete a registered passkey by ID.
    //
    //Future<UserAuthnDelete200Response> userAuthnDelete({ String id }) async
    test('test userAuthnDelete', () async {
      // TODO
    });

    // Finish passkey registration
    //
    // 
    //
    //Future<UserAuthnPost200Response> userAuthnPost({ UserAuthnPostRequest userAuthnPostRequest }) async
    test('test userAuthnPost', () async {
      // TODO
    });

    // Prepare passkey registration
    //
    // Prepare to register a new passkey.
    //
    //Future<UserAuthnPut200Response> userAuthnPut() async
    test('test userAuthnPut', () async {
      // TODO
    });

  });
}
