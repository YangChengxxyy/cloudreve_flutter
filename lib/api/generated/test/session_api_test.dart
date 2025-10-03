import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for SessionApi
void main() {
  final instance = CloudreveApiClient().getSessionApi();

  group(SessionApi, () {
    // Prepare login
    //
    // Query if a given is existed, and all possible login method for it. This method is not required to perform a sign in, it just provide more context for frontent UI.
    //
    //Future<SessionPrepareGet200Response> sessionPrepareGet(String email) async
    test('test sessionPrepareGet', () async {
      // TODO
    });

  });
}
