import 'package:test/test.dart';
import 'package:cloudreve_api_client/cloudreve_api_client.dart';


/// tests for AuthJWTRequiredApi
void main() {
  final instance = CloudreveApiClient().getAuthJWTRequiredApi();

  group(AuthJWTRequiredApi, () {
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

    // Delete a pin
    //
    // Remove a pinned URI from user's sidebar.
    //
    //Future<FilePinPut200Response> filePinDelete({ PinFileService pinFileService }) async
    test('test filePinDelete', () async {
      // TODO
    });

    // Pin to sidebar
    //
    // Pin a [URI](https://docs.cloudreve.org/api/file-uri) to user's sidebar.
    //
    //Future<FilePinPut200Response> filePinPut({ PinFileService pinFileService }) async
    test('test filePinPut', () async {
      // TODO
    });

    // Mount storage policy
    //
    // This method mounts a folder to a given storage policy. All new files in this folder will prefer to use the mounted storage policy. This setting can be inherited by descendant folders if they're never mounted.
    //
    //Future<FilePolicyPatch200Response> filePolicyPatch({ FilePolicyPatchRequest filePolicyPatchRequest }) async
    test('test filePolicyPatch', () async {
      // TODO
    });

    // Restore from trash bin
    //
    // Restore deleted files in trash bin to its original location.
    //
    //Future<FileRestorePost200Response> fileRestorePost({ FileRestorePostRequest fileRestorePostRequest }) async
    test('test fileRestorePost', () async {
      // TODO
    });

    // Create direct links
    //
    // Create a direct link that can be used to access the file's content directly. Only file owners or administrators can create direct links.
    //
    //Future<FileSourcePut200Response> fileSourcePut({ FileSourcePutRequest fileSourcePutRequest }) async
    test('test fileSourcePut', () async {
      // TODO
    });

    // Update view setting
    //
    // Update view settings for given folder. Only owner of the folder can update view settings.
    //
    //Future<FileViewPatch200Response> fileViewPatch({ FileViewPatchRequest fileViewPatchRequest }) async
    test('test fileViewPatch', () async {
      // TODO
    });

    // List groups
    //
    // List all user groups.
    //
    //Future<GroupListGet200Response> groupListGet() async
    test('test groupListGet', () async {
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

    // List my share links
    //
    // 
    //
    //Future<ShareGet200Response> shareGet(int pageSize, { String orderBy, String orderDirection, String nextPageToken }) async
    test('test shareGet', () async {
      // TODO
    });

    // Edit share link
    //
    // Create a share link to given file. Only file owner or administrator can create share links.
    //
    //Future<ShareIdPost200Response> shareIdPost(String id, { ShareIdPostRequest shareIdPostRequest }) async
    test('test shareIdPost', () async {
      // TODO
    });

    // Create share link
    //
    // Create a share link to given file. Only file owner or administrator can create share links.
    //
    //Future<SharePut200Response> sharePut({ ShareCreateService shareCreateService }) async
    test('test sharePut', () async {
      // TODO
    });

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

    // List payments
    //
    // 
    //
    //Future<UserPaymentsGet200Response> userPaymentsGet(num pageSize, { String orderDirection, String nextPageToken }) async
    test('test userPaymentsGet', () async {
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

    // Check gift code
    //
    // Get details of given gift code, but it does not process redemption.
    //
    //Future<VasGiftcodeCodeGet200Response> vasGiftcodeCodeGet(String code) async
    test('test vasGiftcodeCodeGet', () async {
      // TODO
    });

    // Redeem gift code
    //
    // 
    //
    //Future<VasGiftcodeCodeRedeemPost200Response> vasGiftcodeCodeRedeemPost(String code) async
    test('test vasGiftcodeCodeRedeemPost', () async {
      // TODO
    });

    // Create archive
    //
    // Create a tasks to create a new archive file from existing files.
    //
    //Future<WorkflowArchivePost200Response> workflowArchivePost({ WorkflowArchivePostRequest workflowArchivePostRequest }) async
    test('test workflowArchivePost', () async {
      // TODO
    });

    // Create remote download
    //
    // Create a remote download task.
    //
    //Future<WorkflowDownloadPost200Response> workflowDownloadPost({ WorkflowDownloadPostRequest workflowDownloadPostRequest }) async
    test('test workflowDownloadPost', () async {
      // TODO
    });

    // Cancel task
    //
    // Cancel given remote download task. This method only applies to ongoing remote downlaod tasks.
    //
    //Future<WorkflowDownloadTaskIdDelete200Response> workflowDownloadTaskIdDelete(String taskId) async
    test('test workflowDownloadTaskIdDelete', () async {
      // TODO
    });

    // Select files to download
    //
    // Select/Unselect specific files in a bittorrent download task. This method only works for ongoing remote download tasks. For files not included in the request, their download behaviour is unchanged.
    //
    //Future<WorkflowDownloadTaskIdPatch200Response> workflowDownloadTaskIdPatch(String taskId, { WorkflowDownloadTaskIdPatchRequest workflowDownloadTaskIdPatchRequest }) async
    test('test workflowDownloadTaskIdPatch', () async {
      // TODO
    });

    // Extract archive
    //
    // Create a task to extract all files in a given archive file.
    //
    //Future<WorkflowExtractPost200Response> workflowExtractPost({ WorkflowExtractPostRequest workflowExtractPostRequest }) async
    test('test workflowExtractPost', () async {
      // TODO
    });

    // List tasks
    //
    // List all background tasks triggered by current authenticated user.
    //
    //Future<WorkflowGet200Response> workflowGet(int pageSize, String category, { String nextPageToken }) async
    test('test workflowGet', () async {
      // TODO
    });

    // Import external files
    //
    // Create a task to import external physical files to given path of a given user. **This method is restricted to users with admin permission only.**
    //
    //Future<WorkflowImportPost200Response> workflowImportPost({ WorkflowImportPostRequest workflowImportPostRequest }) async
    test('test workflowImportPost', () async {
      // TODO
    });

    // Get task progress
    //
    // Get realtime progress of the given task. Note that not all phases and all task types support getting progress. Empty response will be returned if there's no available progress info.  The response is a map between progress type and the actual progress. Common progress types are:   | Progress Type | Description | | --- | --- | | `upload_single_<index>` | Uploaded/Total bytes of a single uplaod thread. | |`upload_count`|Count of processed/total files.| |`upload`| Uploaded/Total bytes of all files to be processed in this step.| |`imported`| Imported/Total files.| |`indexed`| Used in importing file tasks, indicating indexed files.|  Only tasks owned by current authenticated user is available. For admin users, all tasks are available in this method.
    //
    //Future<WorkflowProgressIdGet200Response> workflowProgressIdGet(String id) async
    test('test workflowProgressIdGet', () async {
      // TODO
    });

    // Relocate storage policy
    //
    // Create a task to relocate storage policy for given files.
    //
    //Future<WorkflowReloactePost200Response> workflowReloactePost({ WorkflowReloactePostRequest workflowReloactePostRequest }) async
    test('test workflowReloactePost', () async {
      // TODO
    });

  });
}
