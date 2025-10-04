import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for UserApi
void main() {
  final instance = CloudreveApiClient().getUserApi();

  group(UserApi, () {
    // Get profile picture
    //
    // Get given user's profile pciture, can be used as `src` for `img` tag directly, since it outputs the raw picture instead of standard Cloudreve's JSON response structure.
    //
    //Future<JsonObject> userAvatarUserIdGet(String userId, { bool nocache }) async
    test('test userAvatarUserIdGet', () async {
      // TODO
    });

    // Get storage capacity
    //
    // Get storage capacity summary for authenticated user.
    //
    //Future<UserCapacityGet200Response> userCapacityGet() async
    test('test userCapacityGet', () async {
      // TODO
    });

    // List credit changes
    //
    // 
    //
    //Future<UserCreditChangesGet200Response> userCreditChangesGet(num pageSize, { String orderDirection, String nextPageToken }) async
    test('test userCreditChangesGet', () async {
      // TODO
    });

    // Get user
    //
    // Get user by ID. Authorization is optional, but `email` field will be redacted for anonymous request.
    //
    //Future<UserInfoUserIdGet200Response> userInfoUserIdGet(String userId) async
    test('test userInfoUserIdGet', () async {
      // TODO
    });

    // List payments
    //
    // 
    //
    //Future<UserPaymentsGet200Response> userPaymentsGet(num pageSize, { String orderDirection, String nextPageToken }) async
    test('test userPaymentsGet', () async {
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

    // Search user
    //
    // Search other users by display name of email.
    //
    //Future<UserSearchGet200Response> userSearchGet(String keyword) async
    test('test userSearchGet', () async {
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
