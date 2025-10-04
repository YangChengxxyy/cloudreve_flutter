import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for FilePermissionApi
void main() {
  final instance = CloudreveApiClient().getFilePermissionApi();

  group(FilePermissionApi, () {
    // Delete permission setting
    //
    // Clear existing permission setting of target files, whose permission settings will be inherited from parent after this action. Only owner of the file or administrators can perform this action.
    //
    //Future<FilePermissionDelete200Response> filePermissionDelete({ FilePermissionDeleteRequest filePermissionDeleteRequest }) async
    test('test filePermissionDelete', () async {
      // TODO
    });

    // Set permission
    //
    // Set file permissions. Only owner of the file or administrators can perform this action.
    //
    //Future<FilePermissionPost200Response> filePermissionPost({ FilePermissionPostRequest filePermissionPostRequest }) async
    test('test filePermissionPost', () async {
      // TODO
    });

  });
}
