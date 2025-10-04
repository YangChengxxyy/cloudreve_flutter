import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for SessionTokenApi
void main() {
  final instance = CloudreveApiClient().getSessionTokenApi();

  group(SessionTokenApi, () {
    // Finish sign-in with 2FA
    //
    // After [Password Login](https://cloudrevev4.apifox.cn/password-sign-in-289490586e0.md), if 2FA is required, this API is used to finish 2FA challenge and obtain a pair of token.
    //
    //Future<SessionToken2faPost200Response> sessionToken2faPost({ SessionToken2faPostRequest sessionToken2faPostRequest }) async
    test('test sessionToken2faPost', () async {
      // TODO
    });

    // Sign out
    //
    // Sign out current session and revoke the refresh token. All refresh tokens issued from the root token will be revoked. For SSO sign in sessions, this method also give the redirect URL from SSO side to sign out its session.
    //
    //Future<SessionTokenDelete200Response> sessionTokenDelete({ SessionTokenDeleteRequest sessionTokenDeleteRequest }) async
    test('test sessionTokenDelete', () async {
      // TODO
    });

    // Password sign-in
    //
    // 
    //
    //Future<SessionTokenPost200Response> sessionTokenPost({ SessionTokenPostRequest sessionTokenPostRequest }) async
    test('test sessionTokenPost', () async {
      // TODO
    });

    // Refresh Token
    //
    // Refresh access token with a valid refresh token.
    //
    //Future<SessionTokenRefreshPost200Response> sessionTokenRefreshPost({ SessionTokenDeleteRequest sessionTokenDeleteRequest }) async
    test('test sessionTokenRefreshPost', () async {
      // TODO
    });

  });
}
