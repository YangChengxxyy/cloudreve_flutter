import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for SessionOpenIDApi
void main() {
  final instance = CloudreveApiClient().getSessionOpenIDApi();

  group(SessionOpenIDApi, () {
    // Finish OpenID sign-in
    //
    // After user sign in via the URL obtained from [Prepare OpenID Sign-in](https://cloudrevev4.apifox.cn/prepare-openid-sign-in-289505034e0.md), request this to notify Cloudreve the result.
    //
    //Future<SessionOpenidPost200Response> sessionOpenidPost({ SessionOpenidPostRequest sessionOpenidPostRequest }) async
    test('test sessionOpenidPost', () async {
      // TODO
    });

    // Unlink OpenID
    //
    // Unlink an OpenID account from a Cloudreve account.
    //
    //Future<SessionOpenidProviderIdDelete200Response> sessionOpenidProviderIdDelete(int providerId) async
    test('test sessionOpenidProviderIdDelete', () async {
      // TODO
    });

    // Prepare OpenID sign-in
    //
    // Preapre a social connector sign in, can be used to sign in Cloudreve account, or link existing account with a social connector account. * For signing in with social connector, authorization is not required. * For account linking, authorization is required for a valid logged-in user.
    //
    //Future<SessionOpenidPut200Response> sessionOpenidPut({ SessionOpenidPutRequest sessionOpenidPutRequest }) async
    test('test sessionOpenidPut', () async {
      // TODO
    });

  });
}
