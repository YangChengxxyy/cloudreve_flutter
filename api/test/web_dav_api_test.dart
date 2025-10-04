import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for WebDAVApi
void main() {
  final instance = CloudreveApiClient().getWebDAVApi();

  group(WebDAVApi, () {
    // List accounts
    //
    // List all WebDAV accounts under authenticated user.
    //
    //Future<DevicesDavGet200Response> devicesDavGet(int pageSize, { String nextPageToken }) async
    test('test devicesDavGet', () async {
      // TODO
    });

    // Delete account
    //
    // 
    //
    //Future<DevicesDavIdDelete200Response> devicesDavIdDelete(String id) async
    test('test devicesDavIdDelete', () async {
      // TODO
    });

    // Update account
    //
    // 
    //
    //Future<DevicesDavIdPatch200Response> devicesDavIdPatch(String id, { CreateDavAccountService createDavAccountService }) async
    test('test devicesDavIdPatch', () async {
      // TODO
    });

    // Create account
    //
    // Create a new WebDAV account.
    //
    //Future<DevicesDavPut200Response> devicesDavPut({ CreateDavAccountService createDavAccountService }) async
    test('test devicesDavPut', () async {
      // TODO
    });

  });
}
