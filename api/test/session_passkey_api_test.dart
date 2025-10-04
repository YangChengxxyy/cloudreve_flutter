import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for SessionPasskeyApi
void main() {
  final instance = CloudreveApiClient().getSessionPasskeyApi();

  group(SessionPasskeyApi, () {
    // Finish Passkey sign-in
    //
    // 
    //
    //Future<SessionAuthnPost200Response> sessionAuthnPost({ SessionAuthnPostRequest sessionAuthnPostRequest }) async
    test('test sessionAuthnPost', () async {
      // TODO
    });

    // Prepare Passkey sign-in
    //
    // Prepare a Passkey login session.
    //
    //Future<SessionAuthnPut200Response> sessionAuthnPut() async
    test('test sessionAuthnPut', () async {
      // TODO
    });

  });
}
