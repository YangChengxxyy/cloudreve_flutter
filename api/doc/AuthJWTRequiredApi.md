# cloudreve_api_client.api.AuthJWTRequiredApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**devicesDavGet**](AuthJWTRequiredApi.md#devicesdavget) | **GET** /devices/dav | List accounts
[**devicesDavIdDelete**](AuthJWTRequiredApi.md#devicesdaviddelete) | **DELETE** /devices/dav/{id} | Delete account
[**devicesDavIdPatch**](AuthJWTRequiredApi.md#devicesdavidpatch) | **PATCH** /devices/dav/{id} | Update account
[**devicesDavPut**](AuthJWTRequiredApi.md#devicesdavput) | **PUT** /devices/dav | Create account
[**filePermissionDelete**](AuthJWTRequiredApi.md#filepermissiondelete) | **DELETE** /file/permission | Delete permission setting
[**filePermissionPost**](AuthJWTRequiredApi.md#filepermissionpost) | **POST** /file/permission | Set permission
[**filePinDelete**](AuthJWTRequiredApi.md#filepindelete) | **DELETE** /file/pin | Delete a pin
[**filePinPut**](AuthJWTRequiredApi.md#filepinput) | **PUT** /file/pin | Pin to sidebar
[**filePolicyPatch**](AuthJWTRequiredApi.md#filepolicypatch) | **PATCH** /file/policy | Mount storage policy
[**fileRestorePost**](AuthJWTRequiredApi.md#filerestorepost) | **POST** /file/restore | Restore from trash bin
[**fileSourcePut**](AuthJWTRequiredApi.md#filesourceput) | **PUT** /file/source | Create direct links
[**fileViewPatch**](AuthJWTRequiredApi.md#fileviewpatch) | **PATCH** /file/view | Update view setting
[**groupListGet**](AuthJWTRequiredApi.md#grouplistget) | **GET** /group/list | List groups
[**sessionOpenidProviderIdDelete**](AuthJWTRequiredApi.md#sessionopenidprovideriddelete) | **DELETE** /session/openid/{provider_id} | Unlink OpenID
[**shareGet**](AuthJWTRequiredApi.md#shareget) | **GET** /share | List my share links
[**shareIdPost**](AuthJWTRequiredApi.md#shareidpost) | **POST** /share/{id} | Edit share link
[**sharePut**](AuthJWTRequiredApi.md#shareput) | **PUT** /share | Create share link
[**userAuthnDelete**](AuthJWTRequiredApi.md#userauthndelete) | **DELETE** /user/authn | Delete passkey
[**userAuthnPost**](AuthJWTRequiredApi.md#userauthnpost) | **POST** /user/authn | Finish passkey registration
[**userAuthnPut**](AuthJWTRequiredApi.md#userauthnput) | **PUT** /user/authn | Prepare passkey registration
[**userCapacityGet**](AuthJWTRequiredApi.md#usercapacityget) | **GET** /user/capacity | Get storage capacity
[**userCreditChangesGet**](AuthJWTRequiredApi.md#usercreditchangesget) | **GET** /user/creditChanges | List credit changes
[**userPaymentsGet**](AuthJWTRequiredApi.md#userpaymentsget) | **GET** /user/payments | List payments
[**userSearchGet**](AuthJWTRequiredApi.md#usersearchget) | **GET** /user/search | Search user
[**userSetting2faGet**](AuthJWTRequiredApi.md#usersetting2faget) | **GET** /user/setting/2fa | Prepare enabling 2FA
[**userSettingAvatarPut**](AuthJWTRequiredApi.md#usersettingavatarput) | **PUT** /user/setting/avatar | Update profile pricture
[**userSettingGet**](AuthJWTRequiredApi.md#usersettingget) | **GET** /user/setting | Get preferences
[**userSettingNodesGet**](AuthJWTRequiredApi.md#usersettingnodesget) | **GET** /user/setting/nodes | List available nodes
[**userSettingPatch**](AuthJWTRequiredApi.md#usersettingpatch) | **PATCH** /user/setting | Update preference setting
[**userSettingPoliciesGet**](AuthJWTRequiredApi.md#usersettingpoliciesget) | **GET** /user/setting/policies | List available storage policies
[**vasGiftcodeCodeGet**](AuthJWTRequiredApi.md#vasgiftcodecodeget) | **GET** /vas/giftcode/{code} | Check gift code
[**vasGiftcodeCodeRedeemPost**](AuthJWTRequiredApi.md#vasgiftcodecoderedeempost) | **POST** /vas/giftcode/{code}/redeem | Redeem gift code
[**workflowArchivePost**](AuthJWTRequiredApi.md#workflowarchivepost) | **POST** /workflow/archive | Create archive
[**workflowDownloadPost**](AuthJWTRequiredApi.md#workflowdownloadpost) | **POST** /workflow/download | Create remote download
[**workflowDownloadTaskIdDelete**](AuthJWTRequiredApi.md#workflowdownloadtaskiddelete) | **DELETE** /workflow/download/{task_id} | Cancel task
[**workflowDownloadTaskIdPatch**](AuthJWTRequiredApi.md#workflowdownloadtaskidpatch) | **PATCH** /workflow/download/{task_id} | Select files to download
[**workflowExtractPost**](AuthJWTRequiredApi.md#workflowextractpost) | **POST** /workflow/extract | Extract archive
[**workflowGet**](AuthJWTRequiredApi.md#workflowget) | **GET** /workflow | List tasks
[**workflowImportPost**](AuthJWTRequiredApi.md#workflowimportpost) | **POST** /workflow/import | Import external files
[**workflowProgressIdGet**](AuthJWTRequiredApi.md#workflowprogressidget) | **GET** /workflow/progress/{id} | Get task progress
[**workflowReloactePost**](AuthJWTRequiredApi.md#workflowreloactepost) | **POST** /workflow/reloacte | Relocate storage policy


# **devicesDavGet**
> DevicesDavGet200Response devicesDavGet(pageSize, nextPageToken)

List accounts

List all WebDAV accounts under authenticated user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final int pageSize = 50; // int | Page size.
final String nextPageToken = nextPageToken_example; // String | Token for requesting next page. Empty value means requesting the first page.

try {
    final response = api.devicesDavGet(pageSize, nextPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->devicesDavGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Page size. | 
 **nextPageToken** | **String**| Token for requesting next page. Empty value means requesting the first page. | [optional] 

### Return type

[**DevicesDavGet200Response**](DevicesDavGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **devicesDavIdDelete**
> DevicesDavIdDelete200Response devicesDavIdDelete(id)

Delete account



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final String id = YnCp; // String | ID of the existing WebDAV account.

try {
    final response = api.devicesDavIdDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->devicesDavIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the existing WebDAV account. | 

### Return type

[**DevicesDavIdDelete200Response**](DevicesDavIdDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **devicesDavIdPatch**
> DevicesDavIdPatch200Response devicesDavIdPatch(id, createDavAccountService)

Update account



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final String id = YnCp; // String | ID of the existing WebDAV account.
final CreateDavAccountService createDavAccountService = {"name":"new account","uri":"cloudreve://my/002i8OT6osgrXrQEqPp1mMqB9UfxjB0q","proxy":true,"readonly":true}; // CreateDavAccountService | 

try {
    final response = api.devicesDavIdPatch(id, createDavAccountService);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->devicesDavIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the existing WebDAV account. | 
 **createDavAccountService** | [**CreateDavAccountService**](CreateDavAccountService.md)|  | [optional] 

### Return type

[**DevicesDavIdPatch200Response**](DevicesDavIdPatch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **devicesDavPut**
> DevicesDavPut200Response devicesDavPut(createDavAccountService)

Create account

Create a new WebDAV account.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final CreateDavAccountService createDavAccountService = {"name":"new account","uri":"cloudreve://my/0","proxy":true,"readonly":true}; // CreateDavAccountService | 

try {
    final response = api.devicesDavPut(createDavAccountService);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->devicesDavPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **createDavAccountService** | [**CreateDavAccountService**](CreateDavAccountService.md)|  | [optional] 

### Return type

[**DevicesDavPut200Response**](DevicesDavPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filePermissionDelete**
> FilePermissionDelete200Response filePermissionDelete(filePermissionDeleteRequest)

Delete permission setting

Clear existing permission setting of target files, whose permission settings will be inherited from parent after this action. Only owner of the file or administrators can perform this action.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final FilePermissionDeleteRequest filePermissionDeleteRequest = {"uris":["cloudreve://my/main.c"]}; // FilePermissionDeleteRequest | 

try {
    final response = api.filePermissionDelete(filePermissionDeleteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->filePermissionDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filePermissionDeleteRequest** | [**FilePermissionDeleteRequest**](FilePermissionDeleteRequest.md)|  | [optional] 

### Return type

[**FilePermissionDelete200Response**](FilePermissionDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filePermissionPost**
> FilePermissionPost200Response filePermissionPost(filePermissionPostRequest)

Set permission

Set file permissions. Only owner of the file or administrators can perform this action.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final FilePermissionPostRequest filePermissionPostRequest = {"uris":["cloudreve://my/newfile.docx","cloudreve://my/main.c"],"setting":{"user_explicit":{"bnUn":"Dw=="},"same_group":"Dw==","anonymous":"Aw==","everyone":"Cw=="}}; // FilePermissionPostRequest | 

try {
    final response = api.filePermissionPost(filePermissionPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->filePermissionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filePermissionPostRequest** | [**FilePermissionPostRequest**](FilePermissionPostRequest.md)|  | [optional] 

### Return type

[**FilePermissionPost200Response**](FilePermissionPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filePinDelete**
> FilePinPut200Response filePinDelete(pinFileService)

Delete a pin

Remove a pinned URI from user's sidebar.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final PinFileService pinFileService = {"uri":"cloudreve://my/Inspirations?name=jpg&case_folding=","name":"My images"}; // PinFileService | 

try {
    final response = api.filePinDelete(pinFileService);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->filePinDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pinFileService** | [**PinFileService**](PinFileService.md)|  | [optional] 

### Return type

[**FilePinPut200Response**](FilePinPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filePinPut**
> FilePinPut200Response filePinPut(pinFileService)

Pin to sidebar

Pin a [URI](https://docs.cloudreve.org/api/file-uri) to user's sidebar.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final PinFileService pinFileService = {"uri":"cloudreve://my/Inspirations?name=jpg&case_folding=","name":"My images"}; // PinFileService | 

try {
    final response = api.filePinPut(pinFileService);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->filePinPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pinFileService** | [**PinFileService**](PinFileService.md)|  | [optional] 

### Return type

[**FilePinPut200Response**](FilePinPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filePolicyPatch**
> FilePolicyPatch200Response filePolicyPatch(filePolicyPatchRequest)

Mount storage policy

This method mounts a folder to a given storage policy. All new files in this folder will prefer to use the mounted storage policy. This setting can be inherited by descendant folders if they're never mounted.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final FilePolicyPatchRequest filePolicyPatchRequest = {"uri":"cloudreve://my/Inspirations","policy_id":"mqHp"}; // FilePolicyPatchRequest | 

try {
    final response = api.filePolicyPatch(filePolicyPatchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->filePolicyPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filePolicyPatchRequest** | [**FilePolicyPatchRequest**](FilePolicyPatchRequest.md)|  | [optional] 

### Return type

[**FilePolicyPatch200Response**](FilePolicyPatch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileRestorePost**
> FileRestorePost200Response fileRestorePost(fileRestorePostRequest)

Restore from trash bin

Restore deleted files in trash bin to its original location.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final FileRestorePostRequest fileRestorePostRequest = {"uris":["cloudreve://trash/ab470e1a-31dc-4794-b749-1a453d7837b2","cloudreve://trash/46ef00c1-d489-43df-a717-8e21d1f52894"]}; // FileRestorePostRequest | 

try {
    final response = api.fileRestorePost(fileRestorePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->fileRestorePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileRestorePostRequest** | [**FileRestorePostRequest**](FileRestorePostRequest.md)|  | [optional] 

### Return type

[**FileRestorePost200Response**](FileRestorePost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileSourcePut**
> FileSourcePut200Response fileSourcePut(fileSourcePutRequest)

Create direct links

Create a direct link that can be used to access the file's content directly. Only file owners or administrators can create direct links.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final FileSourcePutRequest fileSourcePutRequest = {"uris":["cloudreve://my/Inspirations/cloudreve_4.0.0-beta.7_windows_amd64.zip","cloudreve://my/Inspirations/archive.zip"]}; // FileSourcePutRequest | 

try {
    final response = api.fileSourcePut(fileSourcePutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->fileSourcePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileSourcePutRequest** | [**FileSourcePutRequest**](FileSourcePutRequest.md)|  | [optional] 

### Return type

[**FileSourcePut200Response**](FileSourcePut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileViewPatch**
> FileViewPatch200Response fileViewPatch(fileViewPatchRequest)

Update view setting

Update view settings for given folder. Only owner of the folder can update view settings.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final FileViewPatchRequest fileViewPatchRequest = {"uri":"cloudreve://my/Inspirations","view":{"page_size":50,"order":"updated_at","order_direction":"desc","view":"list","thumbnail":true,"columns":[{"type":0},{"type":2},{"type":8},{"type":7}],"gallery_width":50}}; // FileViewPatchRequest | 

try {
    final response = api.fileViewPatch(fileViewPatchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->fileViewPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileViewPatchRequest** | [**FileViewPatchRequest**](FileViewPatchRequest.md)|  | [optional] 

### Return type

[**FileViewPatch200Response**](FileViewPatch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupListGet**
> GroupListGet200Response groupListGet()

List groups

List all user groups.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();

try {
    final response = api.groupListGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->groupListGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GroupListGet200Response**](GroupListGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionOpenidProviderIdDelete**
> SessionOpenidProviderIdDelete200Response sessionOpenidProviderIdDelete(providerId)

Unlink OpenID

Unlink an OpenID account from a Cloudreve account.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final int providerId = 0; // int | 

try {
    final response = api.sessionOpenidProviderIdDelete(providerId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->sessionOpenidProviderIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerId** | **int**|  | 

### Return type

[**SessionOpenidProviderIdDelete200Response**](SessionOpenidProviderIdDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shareGet**
> ShareGet200Response shareGet(pageSize, orderBy, orderDirection, nextPageToken)

List my share links



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final int pageSize = 10; // int | Page size.
final String orderBy = ; // String | Field name for ordering.
final String orderDirection = asc; // String | 
final String nextPageToken = ; // String | Token for requesting next page. Empty value means requesting the first page.

try {
    final response = api.shareGet(pageSize, orderBy, orderDirection, nextPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->shareGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**| Page size. | 
 **orderBy** | **String**| Field name for ordering. | [optional] 
 **orderDirection** | **String**|  | [optional] 
 **nextPageToken** | **String**| Token for requesting next page. Empty value means requesting the first page. | [optional] 

### Return type

[**ShareGet200Response**](ShareGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shareIdPost**
> ShareIdPost200Response shareIdPost(id, shareIdPostRequest)

Edit share link

Create a share link to given file. Only file owner or administrator can create share links.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final String id = LJ6cM; // String | ID of the share link.
final ShareIdPostRequest shareIdPostRequest = {"permissions":{"anonymous":"BQ==","everyone":"AQ=="},"uri":"cloudreve://my/Inspirations","share_view":true,"expire":604800,"price":20}; // ShareIdPostRequest | 

try {
    final response = api.shareIdPost(id, shareIdPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->shareIdPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the share link. | 
 **shareIdPostRequest** | [**ShareIdPostRequest**](ShareIdPostRequest.md)|  | [optional] 

### Return type

[**ShareIdPost200Response**](ShareIdPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sharePut**
> SharePut200Response sharePut(shareCreateService)

Create share link

Create a share link to given file. Only file owner or administrator can create share links.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final ShareCreateService shareCreateService = {"permissions":{"anonymous":"BQ==","everyone":"AQ=="},"uri":"cloudreve://my/Inspirations","is_private":true,"share_view":true,"expire":604800,"price":20}; // ShareCreateService | 

try {
    final response = api.sharePut(shareCreateService);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->sharePut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **shareCreateService** | [**ShareCreateService**](ShareCreateService.md)|  | [optional] 

### Return type

[**SharePut200Response**](SharePut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userAuthnDelete**
> UserAuthnDelete200Response userAuthnDelete(id)

Delete passkey

Delete a registered passkey by ID.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final String id = 7urNE/WTQSGqA06D0w+1Xw==; // String | ID

try {
    final response = api.userAuthnDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->userAuthnDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID | [optional] 

### Return type

[**UserAuthnDelete200Response**](UserAuthnDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userAuthnPost**
> UserAuthnPost200Response userAuthnPost(userAuthnPostRequest)

Finish passkey registration



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final UserAuthnPostRequest userAuthnPostRequest = {"response":"{\"id\":\"7urNE_WTQSGqA06D0w-1Xw\",\"type\":\"public-key\",\"rawId\":\"7urNE_WTQSGqA06D0w-1Xw\",\"response\":{\"attestationObject\":\"o2NmbXRkbm9uZWdhdHRTdG10oGhhdXRoRGF0YViUSZYN5YgOjGh0NBcPZHZgW4_krrmihjLHmVzzuoMdl2NdAAAAANVIgm55tNtAo9gREW9-g0kAEO7qzRP1k0EhqgNOg9MPtV-lAQIDJiABIVggg1lGbgriP72Ro5GpDhgyH_FwmxDFbg_9IAvb1kKqtuUiWCA-wxwgCMp5OVE0s0E8U7ZR-v9HcVr88onxRbauZDUD9A\",\"clientDataJSON\":\"eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiZnlFQ2I2aDh0bXZRcnZUV1p2Y05RZ0VUb08zMExqRHRmNzIxeUlHVTA0RSIsIm9yaWdpbiI6Imh0dHA6Ly9sb2NhbGhvc3Q6NTE3MyIsImNyb3NzT3JpZ2luIjpmYWxzZX0\"}}","name":"{browser} on {os}","ua":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36"}; // UserAuthnPostRequest | 

try {
    final response = api.userAuthnPost(userAuthnPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->userAuthnPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userAuthnPostRequest** | [**UserAuthnPostRequest**](UserAuthnPostRequest.md)|  | [optional] 

### Return type

[**UserAuthnPost200Response**](UserAuthnPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userAuthnPut**
> UserAuthnPut200Response userAuthnPut()

Prepare passkey registration

Prepare to register a new passkey.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();

try {
    final response = api.userAuthnPut();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->userAuthnPut: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserAuthnPut200Response**](UserAuthnPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCapacityGet**
> UserCapacityGet200Response userCapacityGet()

Get storage capacity

Get storage capacity summary for authenticated user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();

try {
    final response = api.userCapacityGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->userCapacityGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserCapacityGet200Response**](UserCapacityGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCreditChangesGet**
> UserCreditChangesGet200Response userCreditChangesGet(pageSize, orderDirection, nextPageToken)

List credit changes



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final num pageSize = 50; // num | Page size.
final String orderDirection = asc; // String | 
final String nextPageToken = nextPageToken_example; // String | Token for requesting next page. Empty value means requesting the first page.

try {
    final response = api.userCreditChangesGet(pageSize, orderDirection, nextPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->userCreditChangesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **num**| Page size. | 
 **orderDirection** | **String**|  | [optional] [default to 'asc']
 **nextPageToken** | **String**| Token for requesting next page. Empty value means requesting the first page. | [optional] 

### Return type

[**UserCreditChangesGet200Response**](UserCreditChangesGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPaymentsGet**
> UserPaymentsGet200Response userPaymentsGet(pageSize, orderDirection, nextPageToken)

List payments



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final num pageSize = 50; // num | Page size.
final String orderDirection = asc; // String | 
final String nextPageToken = ; // String | Token for requesting next page. Empty value means requesting the first page.

try {
    final response = api.userPaymentsGet(pageSize, orderDirection, nextPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->userPaymentsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **num**| Page size. | 
 **orderDirection** | **String**|  | [optional] [default to 'asc']
 **nextPageToken** | **String**| Token for requesting next page. Empty value means requesting the first page. | [optional] 

### Return type

[**UserPaymentsGet200Response**](UserPaymentsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSearchGet**
> UserSearchGet200Response userSearchGet(keyword)

Search user

Search other users by display name of email.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final String keyword = Aaron; // String | Search keyword, can be part of display name or email.

try {
    final response = api.userSearchGet(keyword);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->userSearchGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyword** | **String**| Search keyword, can be part of display name or email. | 

### Return type

[**UserSearchGet200Response**](UserSearchGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSetting2faGet**
> UserSetting2faGet200Response userSetting2faGet()

Prepare enabling 2FA

Before enabling 2FA, use this method to get a TOTP secret for generating QR Code.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();

try {
    final response = api.userSetting2faGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->userSetting2faGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserSetting2faGet200Response**](UserSetting2faGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingAvatarPut**
> UserSettingAvatarPut200Response userSettingAvatarPut(body)

Update profile pricture

Behaviour of this method depends on the request body:  * If requerst body is empty, the user profile pciture will set to using Gravatar. * If request body is not empty, and `Content-Length` > `0`, the body will be parsed as image file, and used as the new profile picture.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final MultipartFile body = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.userSettingAvatarPut(body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->userSettingAvatarPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | **MultipartFile**|  | [optional] 

### Return type

[**UserSettingAvatarPut200Response**](UserSettingAvatarPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingGet**
> UserSettingGet200Response userSettingGet()

Get preferences



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();

try {
    final response = api.userSettingGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->userSettingGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserSettingGet200Response**](UserSettingGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingNodesGet**
> UserSettingNodesGet200Response userSettingNodesGet()

List available nodes

List available nodes assigned to authenticated user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();

try {
    final response = api.userSettingNodesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->userSettingNodesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserSettingNodesGet200Response**](UserSettingNodesGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingPatch**
> UserSettingPatch200Response userSettingPatch(userSettingPatchRequest)

Update preference setting

Only non-null fields in request body will be updated.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final UserSettingPatchRequest userSettingPatchRequest = ; // UserSettingPatchRequest | 

try {
    final response = api.userSettingPatch(userSettingPatchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->userSettingPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userSettingPatchRequest** | [**UserSettingPatchRequest**](UserSettingPatchRequest.md)|  | [optional] 

### Return type

[**UserSettingPatch200Response**](UserSettingPatch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingPoliciesGet**
> UserSettingPoliciesGet200Response userSettingPoliciesGet()

List available storage policies

List available storage policies for authenticated user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();

try {
    final response = api.userSettingPoliciesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->userSettingPoliciesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserSettingPoliciesGet200Response**](UserSettingPoliciesGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vasGiftcodeCodeGet**
> VasGiftcodeCodeGet200Response vasGiftcodeCodeGet(code)

Check gift code

Get details of given gift code, but it does not process redemption.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final String code = d6695b49-1eca-4975-813f-0dafd90c1705; // String | Gift code.

try {
    final response = api.vasGiftcodeCodeGet(code);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->vasGiftcodeCodeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Gift code. | 

### Return type

[**VasGiftcodeCodeGet200Response**](VasGiftcodeCodeGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vasGiftcodeCodeRedeemPost**
> VasGiftcodeCodeRedeemPost200Response vasGiftcodeCodeRedeemPost(code)

Redeem gift code



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final String code = d6695b49-1eca-4975-813f-0dafd90c1705; // String | Gift code.

try {
    final response = api.vasGiftcodeCodeRedeemPost(code);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->vasGiftcodeCodeRedeemPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Gift code. | 

### Return type

[**VasGiftcodeCodeRedeemPost200Response**](VasGiftcodeCodeRedeemPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowArchivePost**
> WorkflowArchivePost200Response workflowArchivePost(workflowArchivePostRequest)

Create archive

Create a tasks to create a new archive file from existing files.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final WorkflowArchivePostRequest workflowArchivePostRequest = {"src":["cloudreve://my/1/marker-shadow%20(2).png","cloudreve://my/1/cloudreve_4.0.0-beta.7_windows_amd64.zip"],"dst":"cloudreve://my/1/archive.zip","preferred_node_id":"m9uO"}; // WorkflowArchivePostRequest | 

try {
    final response = api.workflowArchivePost(workflowArchivePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->workflowArchivePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowArchivePostRequest** | [**WorkflowArchivePostRequest**](WorkflowArchivePostRequest.md)|  | [optional] 

### Return type

[**WorkflowArchivePost200Response**](WorkflowArchivePost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowDownloadPost**
> WorkflowDownloadPost200Response workflowDownloadPost(workflowDownloadPostRequest)

Create remote download

Create a remote download task.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final WorkflowDownloadPostRequest workflowDownloadPostRequest = ; // WorkflowDownloadPostRequest | 

try {
    final response = api.workflowDownloadPost(workflowDownloadPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->workflowDownloadPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowDownloadPostRequest** | [**WorkflowDownloadPostRequest**](WorkflowDownloadPostRequest.md)|  | [optional] 

### Return type

[**WorkflowDownloadPost200Response**](WorkflowDownloadPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowDownloadTaskIdDelete**
> WorkflowDownloadTaskIdDelete200Response workflowDownloadTaskIdDelete(taskId)

Cancel task

Cancel given remote download task. This method only applies to ongoing remote downlaod tasks.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final String taskId = jAMaCN; // String | ID of the remote download tasks.

try {
    final response = api.workflowDownloadTaskIdDelete(taskId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->workflowDownloadTaskIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**| ID of the remote download tasks. | 

### Return type

[**WorkflowDownloadTaskIdDelete200Response**](WorkflowDownloadTaskIdDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowDownloadTaskIdPatch**
> WorkflowDownloadTaskIdPatch200Response workflowDownloadTaskIdPatch(taskId, workflowDownloadTaskIdPatchRequest)

Select files to download

Select/Unselect specific files in a bittorrent download task. This method only works for ongoing remote download tasks. For files not included in the request, their download behaviour is unchanged.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final String taskId = jAMaCN; // String | ID of the remote download tasks.
final WorkflowDownloadTaskIdPatchRequest workflowDownloadTaskIdPatchRequest = {"files":[{"index":7,"download":false},{"index":8,"download":false}]}; // WorkflowDownloadTaskIdPatchRequest | 

try {
    final response = api.workflowDownloadTaskIdPatch(taskId, workflowDownloadTaskIdPatchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->workflowDownloadTaskIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **taskId** | **String**| ID of the remote download tasks. | 
 **workflowDownloadTaskIdPatchRequest** | [**WorkflowDownloadTaskIdPatchRequest**](WorkflowDownloadTaskIdPatchRequest.md)|  | [optional] 

### Return type

[**WorkflowDownloadTaskIdPatch200Response**](WorkflowDownloadTaskIdPatch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowExtractPost**
> WorkflowExtractPost200Response workflowExtractPost(workflowExtractPostRequest)

Extract archive

Create a task to extract all files in a given archive file.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final WorkflowExtractPostRequest workflowExtractPostRequest = {"src":["cloudreve://my/1/cloudreve_4.0.0-beta.7_windows_amd64.zip"],"dst":"cloudreve://my/1","preferred_node_id":"xmhb"}; // WorkflowExtractPostRequest | 

try {
    final response = api.workflowExtractPost(workflowExtractPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->workflowExtractPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowExtractPostRequest** | [**WorkflowExtractPostRequest**](WorkflowExtractPostRequest.md)|  | [optional] 

### Return type

[**WorkflowExtractPost200Response**](WorkflowExtractPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowGet**
> WorkflowGet200Response workflowGet(pageSize, category, nextPageToken)

List tasks

List all background tasks triggered by current authenticated user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final int pageSize = 20; // int | 
final String category = general; // String | Select which category of tasks to list.
final String nextPageToken = nextPageToken_example; // String | Token for requesting next page. Empty value means requesting the first page.

try {
    final response = api.workflowGet(pageSize, category, nextPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->workflowGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **int**|  | 
 **category** | **String**| Select which category of tasks to list. | 
 **nextPageToken** | **String**| Token for requesting next page. Empty value means requesting the first page. | [optional] 

### Return type

[**WorkflowGet200Response**](WorkflowGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowImportPost**
> WorkflowImportPost200Response workflowImportPost(workflowImportPostRequest)

Import external files

Create a task to import external physical files to given path of a given user. **This method is restricted to users with admin permission only.**

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final WorkflowImportPostRequest workflowImportPostRequest = {"src":"/path/to/existing","dst":"/","extract_media_meta":false,"user_id":"lpua","recursive":true,"policy_id":1}; // WorkflowImportPostRequest | 

try {
    final response = api.workflowImportPost(workflowImportPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->workflowImportPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowImportPostRequest** | [**WorkflowImportPostRequest**](WorkflowImportPostRequest.md)|  | [optional] 

### Return type

[**WorkflowImportPost200Response**](WorkflowImportPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowProgressIdGet**
> WorkflowProgressIdGet200Response workflowProgressIdGet(id)

Get task progress

Get realtime progress of the given task. Note that not all phases and all task types support getting progress. Empty response will be returned if there's no available progress info.  The response is a map between progress type and the actual progress. Common progress types are:   | Progress Type | Description | | --- | --- | | `upload_single_<index>` | Uploaded/Total bytes of a single uplaod thread. | |`upload_count`|Count of processed/total files.| |`upload`| Uploaded/Total bytes of all files to be processed in this step.| |`imported`| Imported/Total files.| |`indexed`| Used in importing file tasks, indicating indexed files.|  Only tasks owned by current authenticated user is available. For admin users, all tasks are available in this method.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final String id = mA7mF4; // String | ID of the task.

try {
    final response = api.workflowProgressIdGet(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->workflowProgressIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the task. | 

### Return type

[**WorkflowProgressIdGet200Response**](WorkflowProgressIdGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowReloactePost**
> WorkflowReloactePost200Response workflowReloactePost(workflowReloactePostRequest)

Relocate storage policy

Create a task to relocate storage policy for given files.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTRequiredApi();
final WorkflowReloactePostRequest workflowReloactePostRequest = {"src":["cloudreve://my/1/test_folder","cloudreve://my/1/cloudreve.exe"],"dst_policy_id":"J7uV"}; // WorkflowReloactePostRequest | 

try {
    final response = api.workflowReloactePost(workflowReloactePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTRequiredApi->workflowReloactePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowReloactePostRequest** | [**WorkflowReloactePostRequest**](WorkflowReloactePostRequest.md)|  | [optional] 

### Return type

[**WorkflowReloactePost200Response**](WorkflowReloactePost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

