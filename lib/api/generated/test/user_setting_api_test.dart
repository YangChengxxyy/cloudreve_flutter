import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for UserSettingApi
void main() {
  final instance = CloudreveApiClient().getUserSettingApi();

  group(UserSettingApi, () {
    // Prepare enabling 2FA
    //
    // Before enabling 2FA, use this method to get a TOTP secret for generating QR Code.
    //
    //Future<UserSetting2faGet200Response> userSetting2faGet() async
    test('test userSetting2faGet', () async {
      // TODO
    });

    // Update profile pricture
    //
    // Behaviour of this method depends on the request body:  * If requerst body is empty, the user profile pciture will set to using Gravatar. * If request body is not empty, and `Content-Length` > `0`, the body will be parsed as image file, and used as the new profile picture.
    //
    //Future<UserSettingAvatarPut200Response> userSettingAvatarPut({ MultipartFile body }) async
    test('test userSettingAvatarPut', () async {
      // TODO
    });

    // Get preferences
    //
    // 
    //
    //Future<UserSettingGet200Response> userSettingGet() async
    test('test userSettingGet', () async {
      // TODO
    });

    // List available nodes
    //
    // List available nodes assigned to authenticated user.
    //
    //Future<UserSettingNodesGet200Response> userSettingNodesGet() async
    test('test userSettingNodesGet', () async {
      // TODO
    });

    // Update preference setting
    //
    // Only non-null fields in request body will be updated.
    //
    //Future<UserSettingPatch200Response> userSettingPatch({ UserSettingPatchRequest userSettingPatchRequest }) async
    test('test userSettingPatch', () async {
      // TODO
    });

    // List available storage policies
    //
    // List available storage policies for authenticated user.
    //
    //Future<UserSettingPoliciesGet200Response> userSettingPoliciesGet() async
    test('test userSettingPoliciesGet', () async {
      // TODO
    });

  });
}
