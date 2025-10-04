import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for AuthNoneApi
void main() {
  final instance = CloudreveApiClient().getAuthNoneApi();

  group(AuthNoneApi, () {
    // Complete COS upload
    //
    // Notify Cloudreve that a file is uploaded into Tencent COS.
    //
    //Future<CallbackCosSessionIdKeyGet200Response> callbackCosSessionIdKeyGet(String sessionId, String key) async
    test('test callbackCosSessionIdKeyGet', () async {
      // TODO
    });

    // Complete OBS upload
    //
    // Notify Cloudreve that a file is uploaded into Huawei OBS.
    //
    //Future<CallbackCosSessionIdKeyGet200Response> callbackObsSessionIdKeyPost(String sessionId, String key) async
    test('test callbackObsSessionIdKeyPost', () async {
      // TODO
    });

    // Complete OneDrive upload
    //
    // Notify Cloudreve that a file is uploaded into OneDrive.
    //
    //Future<CallbackCosSessionIdKeyGet200Response> callbackOnedriveSessionIdKeyPost(String sessionId, String key) async
    test('test callbackOnedriveSessionIdKeyPost', () async {
      // TODO
    });

    // Complete S3 upload
    //
    // Notify Cloudreve that a file is uploaded into S3.
    //
    //Future<CallbackCosSessionIdKeyGet200Response> callbackS3SessionIdKeyGet(String sessionId, String key) async
    test('test callbackS3SessionIdKeyGet', () async {
      // TODO
    });

    // Force unlock
    //
    // If a file is locked by other user/application, file mutation might fail with errors like below:  ```json {     \"code\": 40073,     \"data\": [         {             \"path\": \"cloudreve://my/newdfox.docx\",             \"token\": \"cool-lock0a4b4f68\",             \"owner\": {                 \"owner\": \"bnUn\",                 \"application\": {                     \"type\": \"viewer\",                     \"viewer_id\": \"af01b85b-f57d-46d2-8ad6-1d9b96548e78\"                 }             },             \"type\": 0         }     ],     \"msg\": \"Lock conflict\",     \"error\": \"conflict with locked resource: \\\"cloudreve://my/newdfox.docx\\\"\",     \"correlation_id\": \"64210cda-5bd1-4fe1-9102-77b86f768395\" } ``` The lock token `cool-lock0a4b4f68` in above example is only visable to file owners. This method can be used to force unlock files if the file owners wish to do so.
    //
    //Future<FileLockDelete200Response> fileLockDelete({ FileLockDeleteRequest fileLockDeleteRequest }) async
    test('test fileLockDelete', () async {
      // TODO
    });

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

    // Finish OpenID sign-in
    //
    // After user sign in via the URL obtained from [Prepare OpenID Sign-in](https://cloudrevev4.apifox.cn/prepare-openid-sign-in-289505034e0.md), request this to notify Cloudreve the result.
    //
    //Future<SessionOpenidPost200Response> sessionOpenidPost({ SessionOpenidPostRequest sessionOpenidPostRequest }) async
    test('test sessionOpenidPost', () async {
      // TODO
    });

    // Prepare login
    //
    // Query if a given is existed, and all possible login method for it. This method is not required to perform a sign in, it just provide more context for frontent UI.
    //
    //Future<SessionPrepareGet200Response> sessionPrepareGet(String email) async
    test('test sessionPrepareGet', () async {
      // TODO
    });

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

    // Get CAPTCHA
    //
    // Request a CAPTCHA image and a ticket.
    //
    //Future<SiteCaptchaGet200Response> siteCaptchaGet() async
    test('test siteCaptchaGet', () async {
      // TODO
    });

    // Ping
    //
    // Get the version of the instance.
    //
    //Future<SitePingGet200Response> sitePingGet() async
    test('test sitePingGet', () async {
      // TODO
    });

    // Get profile picture
    //
    // Get given user's profile pciture, can be used as `src` for `img` tag directly, since it outputs the raw picture instead of standard Cloudreve's JSON response structure.
    //
    //Future<JsonObject> userAvatarUserIdGet(String userId, { bool nocache }) async
    test('test userAvatarUserIdGet', () async {
      // TODO
    });

    // Sign up
    //
    // Create a new account from given email and password. 
    //
    //Future<UserPost200Response> userPost({ UserPostRequest userPostRequest }) async
    test('test userPost', () async {
      // TODO
    });

    // Send reset password email
    //
    // Send a email for an existing account to reset the password.
    //
    //Future<UserResetPost200Response> userResetPost({ UserResetPostRequest userResetPostRequest }) async
    test('test userResetPost', () async {
      // TODO
    });

    // Reset password via temp link
    //
    // Reset account password using the `secret` included in the temp URl from the Email sent by [Send reset password email](https://cloudrevev4.apifox.cn/send-reset-password-email-289518969e0.md).
    //
    //Future<UserResetUserIdPatch200Response> userResetUserIdPatch(String userId, { UserResetUserIdPatchRequest userResetUserIdPatchRequest }) async
    test('test userResetUserIdPatch', () async {
      // TODO
    });

    // List user's share links
    //
    // List public share links created by the given user.
    //
    //Future<UserSharesUserIdGet200Response> userSharesUserIdGet(String userId, int pageSize, { String orderBy, String orderDirection, String nextPageToken }) async
    test('test userSharesUserIdGet', () async {
      // TODO
    });

  });
}
