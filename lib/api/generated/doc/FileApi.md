# cloudreve_api_client.api.FileApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fileActivitiesGet**](FileApi.md#fileactivitiesget) | **GET** /file/activities | List file activities
[**fileArchiveGet**](FileApi.md#filearchiveget) | **GET** /file/archive | Get archive file list
[**fileContentPut**](FileApi.md#filecontentput) | **PUT** /file/content | Update file content
[**fileCreatePost**](FileApi.md#filecreatepost) | **POST** /file/create | Create file
[**fileDelete**](FileApi.md#filedelete) | **DELETE** /file | Delete file
[**fileGet**](FileApi.md#fileget) | **GET** /file | List files
[**fileInfoGet**](FileApi.md#fileinfoget) | **GET** /file/info | Get file info
[**fileLockDelete**](FileApi.md#filelockdelete) | **DELETE** /file/lock | Force unlock
[**fileMetadataPatch**](FileApi.md#filemetadatapatch) | **PATCH** /file/metadata | Patch metadata
[**fileMovePost**](FileApi.md#filemovepost) | **POST** /file/move | Move or copy files
[**filePolicyPatch**](FileApi.md#filepolicypatch) | **PATCH** /file/policy | Mount storage policy
[**fileRenamePost**](FileApi.md#filerenamepost) | **POST** /file/rename | Rename file
[**fileRestorePost**](FileApi.md#filerestorepost) | **POST** /file/restore | Restore from trash bin
[**fileThumbGet**](FileApi.md#filethumbget) | **GET** /file/thumb | Get thumbnail URL
[**fileUrlPost**](FileApi.md#fileurlpost) | **POST** /file/url | Create download URL
[**fileViewPatch**](FileApi.md#fileviewpatch) | **PATCH** /file/view | Update view setting
[**fileViewerSessionPut**](FileApi.md#fileviewersessionput) | **PUT** /file/viewerSession | Create viewer session


# **fileActivitiesGet**
> FileActivitiesGet200Response fileActivitiesGet(uri, pageSize, orderDirection, nextPageToken, filter, xCrPurchaseTicket)

List file activities



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileApi();
final String uri = cloudreve://my/Luke's%20AMA; // String | [URI](https://docs.cloudreve.org/api/file-uri) of the file.
final int pageSize = 50; // int | Page size.
final String orderDirection = asc; // String | Order direction.
final String nextPageToken = eyJpZCI6IjFibFdJTyJ9; // String | Token for requesting next page. Empty value means requesting the first page.
final String filter = filter_example; // String | Filter name. Use empty value to list all activities.
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.

try {
    final response = api.fileActivitiesGet(uri, pageSize, orderDirection, nextPageToken, filter, xCrPurchaseTicket);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileActivitiesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| [URI](https://docs.cloudreve.org/api/file-uri) of the file. | 
 **pageSize** | **int**| Page size. | 
 **orderDirection** | **String**| Order direction. | [optional] [default to 'asc']
 **nextPageToken** | **String**| Token for requesting next page. Empty value means requesting the first page. | [optional] 
 **filter** | **String**| Filter name. Use empty value to list all activities. | [optional] 
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 

### Return type

[**FileActivitiesGet200Response**](FileActivitiesGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileArchiveGet**
> FileArchiveGet200Response fileArchiveGet(uri, entity)

Get archive file list

Get the content of archive files. Only supports `7z` or `zip` file.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileApi();
final String uri = cloudreve://my/pdfjs-4.10.38-dist.zip; // String | [URI](https://docs.cloudreve.org/api/file-uri) of the archive file.
final String entity = zoIE; // String | Optional file version ID.

try {
    final response = api.fileArchiveGet(uri, entity);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileArchiveGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| [URI](https://docs.cloudreve.org/api/file-uri) of the archive file. | 
 **entity** | **String**| Optional file version ID. | [optional] 

### Return type

[**FileArchiveGet200Response**](FileArchiveGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileContentPut**
> FileContentPut200Response fileContentPut(uri, contentLength, previous, xCrPurchaseTicket, body)

Update file content

Update the content of given file, if it does not exit, a new file will be created with given content.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileApi();
final String uri = cloudreve://my/newfile.txt; // String | [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
final int contentLength = 2164321; // int | Length of the request body.
final String previous = bOn4j; // String | Previous version ID that the client side is aware of. Similar to `If-Match` in HTTP reuqest, if this field is set: - If the file version matches, update will be performed; - If latest file version does not match this value, conflict error will be raised. 
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final MultipartFile body = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.fileContentPut(uri, contentLength, previous, xCrPurchaseTicket, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileContentPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| [URI](https://docs.cloudreve.org/api/file-uri) of the target file. | 
 **contentLength** | **int**| Length of the request body. | 
 **previous** | **String**| Previous version ID that the client side is aware of. Similar to `If-Match` in HTTP reuqest, if this field is set: - If the file version matches, update will be performed; - If latest file version does not match this value, conflict error will be raised.  | [optional] 
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **body** | **MultipartFile**|  | [optional] 

### Return type

[**FileContentPut200Response**](FileContentPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileCreatePost**
> FileCreatePost200Response fileCreatePost(xCrPurchaseTicket, fileCreatePostRequest)

Create file

Create a new file with given URI and props. If ancestor folders does not existed for given `uri`, they will be created automatically.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileCreatePostRequest fileCreatePostRequest = ; // FileCreatePostRequest | 

try {
    final response = api.fileCreatePost(xCrPurchaseTicket, fileCreatePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileCreatePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **fileCreatePostRequest** | [**FileCreatePostRequest**](FileCreatePostRequest.md)|  | [optional] 

### Return type

[**FileCreatePost200Response**](FileCreatePost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileDelete**
> FileDelete200Response fileDelete(xCrPurchaseTicket, fileDeleteRequest)

Delete file



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileDeleteRequest fileDeleteRequest = ; // FileDeleteRequest | 

try {
    final response = api.fileDelete(xCrPurchaseTicket, fileDeleteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **fileDeleteRequest** | [**FileDeleteRequest**](FileDeleteRequest.md)|  | [optional] 

### Return type

[**FileDelete200Response**](FileDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileGet**
> FileGet200Response fileGet(uri, page, pageSize, orderBy, orderDirection, nextPageToken, xCrPurchaseTicket)

List files

List files under given [URI](https://docs.cloudreve.org/api/file-uri), can also be used to search files if the URI contains search conditions.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileApi();
final String uri = cloudreve://my/Luke's%20AMA; // String | [URI](https://docs.cloudreve.org/api/file-uri) of the folder to list. You can specify [Query - Search Conditions](https://docs.cloudreve.org/api/file-uri#query) in the URI to search files.
final int page = 0; // int | Desired page, only used in offset pagination.
final int pageSize = 50; // int | Page size. Cannot exceed navigator's max supported size defined in `max_page_size` form list response.
final String orderBy = created_at; // String | All possible values are defined in `order_by_options` from list response.
final String orderDirection = asc; // String | All possible values are defined in `order_direction_options` from list response.
final String nextPageToken = 4|eyJpZCI6InJwR3pZMUY1In0=; // String | Token for requesting next page. Empty value means requesting the first page. Only used in cursor pagination.
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.

try {
    final response = api.fileGet(uri, page, pageSize, orderBy, orderDirection, nextPageToken, xCrPurchaseTicket);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| [URI](https://docs.cloudreve.org/api/file-uri) of the folder to list. You can specify [Query - Search Conditions](https://docs.cloudreve.org/api/file-uri#query) in the URI to search files. | 
 **page** | **int**| Desired page, only used in offset pagination. | 
 **pageSize** | **int**| Page size. Cannot exceed navigator's max supported size defined in `max_page_size` form list response. | 
 **orderBy** | **String**| All possible values are defined in `order_by_options` from list response. | [optional] [default to 'created_at']
 **orderDirection** | **String**| All possible values are defined in `order_direction_options` from list response. | [optional] [default to 'asc']
 **nextPageToken** | **String**| Token for requesting next page. Empty value means requesting the first page. Only used in cursor pagination. | [optional] 
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 

### Return type

[**FileGet200Response**](FileGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileInfoGet**
> FileInfoGet200Response fileInfoGet(uri, id, extended, folderSummary, xCrPurchaseTicket)

Get file info

Get info of a given file by [URI](https://docs.cloudreve.org/api/file-uri) of file ID. Additional info is available if requested.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileApi();
final String uri = cloudreve://my/file.txt; // String | [URI](https://docs.cloudreve.org/api/file-uri) of the target file. If it's empty, `id` is required.
final String id = 98XDX8Sr; // String | ID of the file. If it's empty, `uri` is required. Getting file info by ID is only available to the owner of the file or administrators.
final bool extended = true; // bool | Whether to get additional info about this file.
final bool folderSummary = true; // bool | For folders, whether to calculate the size of this folder. The result might be cached.
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.

try {
    final response = api.fileInfoGet(uri, id, extended, folderSummary, xCrPurchaseTicket);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileInfoGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| [URI](https://docs.cloudreve.org/api/file-uri) of the target file. If it's empty, `id` is required. | [optional] 
 **id** | **String**| ID of the file. If it's empty, `uri` is required. Getting file info by ID is only available to the owner of the file or administrators. | [optional] 
 **extended** | **bool**| Whether to get additional info about this file. | [optional] 
 **folderSummary** | **bool**| For folders, whether to calculate the size of this folder. The result might be cached. | [optional] 
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 

### Return type

[**FileInfoGet200Response**](FileInfoGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileLockDelete**
> FileLockDelete200Response fileLockDelete(fileLockDeleteRequest)

Force unlock

If a file is locked by other user/application, file mutation might fail with errors like below:  ```json {     \"code\": 40073,     \"data\": [         {             \"path\": \"cloudreve://my/newdfox.docx\",             \"token\": \"cool-lock0a4b4f68\",             \"owner\": {                 \"owner\": \"bnUn\",                 \"application\": {                     \"type\": \"viewer\",                     \"viewer_id\": \"af01b85b-f57d-46d2-8ad6-1d9b96548e78\"                 }             },             \"type\": 0         }     ],     \"msg\": \"Lock conflict\",     \"error\": \"conflict with locked resource: \\\"cloudreve://my/newdfox.docx\\\"\",     \"correlation_id\": \"64210cda-5bd1-4fe1-9102-77b86f768395\" } ``` The lock token `cool-lock0a4b4f68` in above example is only visable to file owners. This method can be used to force unlock files if the file owners wish to do so.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileApi();
final FileLockDeleteRequest fileLockDeleteRequest = ; // FileLockDeleteRequest | 

try {
    final response = api.fileLockDelete(fileLockDeleteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileLockDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileLockDeleteRequest** | [**FileLockDeleteRequest**](FileLockDeleteRequest.md)|  | [optional] 

### Return type

[**FileLockDelete200Response**](FileLockDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileMetadataPatch**
> FileMetadataPatch200Response fileMetadataPatch(xCrPurchaseTicket, fileMetadataPatchRequest)

Patch metadata

Modify [metadata](https://docs.cloudreve.org/api/metadata) of the given file.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileMetadataPatchRequest fileMetadataPatchRequest = ; // FileMetadataPatchRequest | 

try {
    final response = api.fileMetadataPatch(xCrPurchaseTicket, fileMetadataPatchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileMetadataPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **fileMetadataPatchRequest** | [**FileMetadataPatchRequest**](FileMetadataPatchRequest.md)|  | [optional] 

### Return type

[**FileMetadataPatch200Response**](FileMetadataPatch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileMovePost**
> FileMovePost200Response fileMovePost(xCrPurchaseTicket, fileMovePostRequest)

Move or copy files

Move or copy files to given destination.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileMovePostRequest fileMovePostRequest = {"uris":["cloudreve://my/SIX%20-%20SIX.mp3","cloudreve://my/Background.mp3"],"dst":"cloudreve://my/alit"}; // FileMovePostRequest | 

try {
    final response = api.fileMovePost(xCrPurchaseTicket, fileMovePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileMovePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **fileMovePostRequest** | [**FileMovePostRequest**](FileMovePostRequest.md)|  | [optional] 

### Return type

[**FileMovePost200Response**](FileMovePost200Response.md)

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

final api = CloudreveApiClient().getFileApi();
final FilePolicyPatchRequest filePolicyPatchRequest = {"uri":"cloudreve://my/Inspirations","policy_id":"mqHp"}; // FilePolicyPatchRequest | 

try {
    final response = api.filePolicyPatch(filePolicyPatchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->filePolicyPatch: $e\n');
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

# **fileRenamePost**
> FileRenamePost200Response fileRenamePost(xCrPurchaseTicket, fileRenamePostRequest)

Rename file



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileRenamePostRequest fileRenamePostRequest = {"uri":"cloudreve://my/Inspirations/old.txt","new_name":"new.txt"}; // FileRenamePostRequest | 

try {
    final response = api.fileRenamePost(xCrPurchaseTicket, fileRenamePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileRenamePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **fileRenamePostRequest** | [**FileRenamePostRequest**](FileRenamePostRequest.md)|  | [optional] 

### Return type

[**FileRenamePost200Response**](FileRenamePost200Response.md)

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

final api = CloudreveApiClient().getFileApi();
final FileRestorePostRequest fileRestorePostRequest = {"uris":["cloudreve://trash/ab470e1a-31dc-4794-b749-1a453d7837b2","cloudreve://trash/46ef00c1-d489-43df-a717-8e21d1f52894"]}; // FileRestorePostRequest | 

try {
    final response = api.fileRestorePost(fileRestorePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileRestorePost: $e\n');
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

# **fileThumbGet**
> FileThumbGet200Response fileThumbGet(uri, xCrContextHint, xCrPurchaseTicket)

Get thumbnail URL

Get the thumbnail URL of the given file.  ### How to decode obfuscated thumbnail URL?  If `obfuscated` is set to `true` in the response, you need addition step to recover the original image URL.    Here's implementation for the decode functioin in multiple languages         <AccordionGroup>   <Accordion title=\"JavaScript\"> ```js export const decodeTimeFlowString = (str: string) => {   let timeNow = Math.floor(new Date().getTime() / 1000);   try {     return decodeTimeFlowStringTime(str, timeNow);   } catch (e) {}   try {     return decodeTimeFlowStringTime(str, timeNow - 1000);   } catch (e) {}   try {     return decodeTimeFlowStringTime(str, timeNow + 1000);   } catch (e) {}    return \"\"; };      const decodeTimeFlowStringTime = (str: string, timeNow: number) => {   timeNow = Math.floor(timeNow / 1000);   const timeNowBackup = timeNow;   const timeDigits: number[] = [];   if (str.length === 0) {     return \"\";   }   while (timeNow > 0) {     timeDigits.push(timeNow % 10);     timeNow = Math.floor(timeNow / 10);   }      const res = Array.from(str);   let secret = Array.from(str);   let add = false;   if (secret.length % 2 === 0) {     add = true;   }   let timeDigitIndex = (secret.length - 1) % timeDigits.length;   const l = secret.length;   for (let pos = 0; pos < l; pos++) {     let newIndex = res.length - 1 - pos;     if (add) {       newIndex = newIndex + timeDigits[timeDigitIndex] * timeDigitIndex;     } else {       newIndex = 2 * timeDigitIndex * timeDigits[timeDigitIndex] - newIndex;     }      if (newIndex < 0) {       newIndex = newIndex * -1;     }      newIndex = newIndex % secret.length;      res[res.length - 1 - pos] = secret[newIndex];     const a = secret[res.length - 1 - pos];     const b = secret[newIndex];     secret[newIndex] = a;     secret[res.length - 1 - pos] = b;      secret = secret.slice(0, secret.length - 1);      add = !add;     // Add timeDigitIndex by 1, but does not exceed total digits in timeNow     timeDigitIndex--;     if (timeDigitIndex < 0) {       timeDigitIndex = timeDigits.length - 1;     }   }   const resStr = res.join(\"\");   const resSep = resStr.split(\"|\");   if (resSep.length < 1 || resSep[0] != timeNowBackup.toString()) {     throw new Error(\"Invalid time flow string\");   }    return resStr.slice(resSep[0].length + 1); }; ``` </Accordion> <Accordion title=\"Golang\"> ```go package main  import (  \"errors\"  \"strconv\"  \"strings\" )  func DecodeTimeFlowStringTime(str string, timeNowMillis int64) (string, error) {  if len(str) == 0 {   return \"\", nil  }   timeNow := timeNowMillis / 1000  timeNowBackup := timeNow   var timeDigits []int  if timeNow == 0 {   timeDigits = append(timeDigits, 0)  } else {   tempTime := timeNow   for tempTime > 0 {    timeDigits = append(timeDigits, int(tempTime%10))    tempTime /= 10   }  }   res := []rune(str)  secret := []rune(str)   add := len(secret)%2 == 0   timeDigitIndex := (len(secret) - 1) % len(timeDigits)   l := len(secret)  for pos := 0; pos < l; pos++ {   targetIndex := l - 1 - pos    newIndex := targetIndex   if add {    newIndex += timeDigits[timeDigitIndex] * timeDigitIndex   } else {    newIndex = 2*timeDigitIndex*timeDigits[timeDigitIndex] - newIndex   }    if newIndex < 0 {    newIndex *= -1   }    newIndex %= len(secret)    res[targetIndex] = secret[newIndex]    lastIndexInSecret := len(secret) - 1   secret[newIndex], secret[lastIndexInSecret] = secret[lastIndexInSecret], secret[newIndex]   secret = secret[:lastIndexInSecret]    add = !add    timeDigitIndex--   if timeDigitIndex < 0 {    timeDigitIndex = len(timeDigits) - 1   }  }   resStr := string(res)  resSep := strings.SplitN(resStr, \"|\", 2)   if len(resSep) < 2 || resSep[0] != strconv.FormatInt(timeNowBackup, 10) {   return \"\", errors.New(\"Invalid time flow string\")  }   return resSep[1], nil } ``` </Accordion>     <Accordion title=\"Java\"> ```java import java.util.ArrayList; import java.util.Collections; import java.util.List; import java.util.stream.Collectors;  public class TimeFlowDecoder {      public static String decodeTimeFlowStringTime(String str, long timeNowMillis) throws Exception {         if (str == null || str.isEmpty()) {             return \"\";         }          long timeNow = timeNowMillis / 1000;         long timeNowBackup = timeNow;          List<Integer> timeDigits = new ArrayList<>();         if (timeNow == 0) {             timeDigits.add(0);         } else {             long tempTime = timeNow;             while (tempTime > 0) {                 timeDigits.add((int) (tempTime % 10));                 tempTime /= 10;             }         }                  List<Character> res = new ArrayList<>();         for (char c : str.toCharArray()) {             res.add(c);         }          List<Character> secret = new ArrayList<>(res);          boolean add = secret.size() % 2 == 0;          int timeDigitIndex = (secret.size() - 1) % timeDigits.size();                  int l = secret.size();         for (int pos = 0; pos < l; pos++) {             int targetIndex = l - 1 - pos;              long newIndexLong = targetIndex;              if (add) {                 newIndexLong += (long) timeDigits.get(timeDigitIndex) * timeDigitIndex;             } else {                 newIndexLong = 2L * timeDigitIndex * timeDigits.get(timeDigitIndex) - newIndexLong;             }              if (newIndexLong < 0) {                 newIndexLong *= -1;             }              int newIndex = (int) (newIndexLong % secret.size());              res.set(targetIndex, secret.get(newIndex));              Collections.swap(secret, newIndex, secret.size() - 1);             secret.remove(secret.size() - 1);              add = !add;              timeDigitIndex--;             if (timeDigitIndex < 0) {                 timeDigitIndex = timeDigits.size() - 1;             }         }          String resStr = res.stream()                            .map(String::valueOf)                            .collect(Collectors.joining());          String[] resSep = resStr.split(\"\\\\|\", 2);          if (resSep.length < 2 || !resSep[0].equals(String.valueOf(timeNowBackup))) {             throw new Exception(\"Invalid time flow string\");         }          return resSep[1];     } } ``` </Accordion> <Accordion title=\"Python\"> ```python import math  def decode_time_flow_string_time(s: str, time_now_ms: int) -> str:     if not s:         return \"\"      time_now_s = math.floor(time_now_ms / 1000)     time_now_backup = time_now_s      time_digits = []     if time_now_s == 0:         time_digits.append(0)     else:         temp_time = time_now_s         while temp_time > 0:             time_digits.append(temp_time % 10)             temp_time = math.floor(temp_time / 10)          res = list(s)     secret = list(s)          add = len(secret) % 2 == 0          time_digit_index = (len(secret) - 1) % len(time_digits)          original_len = len(secret)     for pos in range(original_len):         target_index = original_len - 1 - pos                  new_index = target_index                  if add:             new_index += time_digits[time_digit_index] * time_digit_index         else:             new_index = 2 * time_digit_index * time_digits[time_digit_index] - new_index                      if new_index < 0:             new_index *= -1                      new_index %= len(secret)                  res[target_index] = secret[new_index]                  # Swap with the last element and pop to remove efficiently         last_index = len(secret) - 1         secret[new_index], secret[last_index] = secret[last_index], secret[new_index]         secret.pop()                  add = not add                  time_digit_index -= 1         if time_digit_index < 0:             time_digit_index = len(time_digits) - 1                  res_str = \"\".join(res)          parts = res_str.split(\"|\", 1)     if len(parts) < 2 or parts[0] != str(time_now_backup):         raise ValueError(\"Invalid time flow string\")              return parts[1] ``` </Accordion>     </AccordionGroup>

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileApi();
final String uri = cloudreve://my/pic.png; // String | [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
final String xCrContextHint = b832b998-7ece-4ffd-ba6b-afb64530ca70; // String | Optional context hint to speed up DB queries. You can get its value from the response of listing files. It is recommended to set this header if you need to perform action on files that are just listed by [List files](/list-files-300233178e0) API.
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.

try {
    final response = api.fileThumbGet(uri, xCrContextHint, xCrPurchaseTicket);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileThumbGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| [URI](https://docs.cloudreve.org/api/file-uri) of the target file. | [optional] 
 **xCrContextHint** | **String**| Optional context hint to speed up DB queries. You can get its value from the response of listing files. It is recommended to set this header if you need to perform action on files that are just listed by [List files](/list-files-300233178e0) API. | [optional] 
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 

### Return type

[**FileThumbGet200Response**](FileThumbGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileUrlPost**
> FileUrlPost200Response fileUrlPost(xCrContextHint, xCrPurchaseTicket, fileUrlPostRequest)

Create download URL

Create a temporary anonymous URLs to download file content.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileApi();
final String xCrContextHint = b832b998-7ece-4ffd-ba6b-afb64530ca70; // String | Optional context hint to speed up DB queries. You can get its value from the response of listing files. It is recommended to set this header if you need to perform action on files that are just listed by [List files](/list-files-300233178e0) API.
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileUrlPostRequest fileUrlPostRequest = ; // FileUrlPostRequest | 

try {
    final response = api.fileUrlPost(xCrContextHint, xCrPurchaseTicket, fileUrlPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileUrlPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xCrContextHint** | **String**| Optional context hint to speed up DB queries. You can get its value from the response of listing files. It is recommended to set this header if you need to perform action on files that are just listed by [List files](/list-files-300233178e0) API. | [optional] 
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **fileUrlPostRequest** | [**FileUrlPostRequest**](FileUrlPostRequest.md)|  | [optional] 

### Return type

[**FileUrlPost200Response**](FileUrlPost200Response.md)

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

final api = CloudreveApiClient().getFileApi();
final FileViewPatchRequest fileViewPatchRequest = {"uri":"cloudreve://my/Inspirations","view":{"page_size":50,"order":"updated_at","order_direction":"desc","view":"list","thumbnail":true,"columns":[{"type":0},{"type":2},{"type":8},{"type":7}],"gallery_width":50}}; // FileViewPatchRequest | 

try {
    final response = api.fileViewPatch(fileViewPatchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileViewPatch: $e\n');
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

# **fileViewerSessionPut**
> FileViewerSessionPut200Response fileViewerSessionPut(xCrPurchaseTicket, fileViewerSessionPutRequest)

Create viewer session

Create a temporary WOPI session for 3rd party file apps or WOPI clients to download or edit files.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileViewerSessionPutRequest fileViewerSessionPutRequest = {"uri":"cloudreve://JbVTn@share/1.docx","viewer_id":"af01b85b-f57d-46d2-8ad6-1d9b96548e78","preferred_action":"edit","parent_uri":"cloudreve://my/Inspirations"}; // FileViewerSessionPutRequest | 

try {
    final response = api.fileViewerSessionPut(xCrPurchaseTicket, fileViewerSessionPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileApi->fileViewerSessionPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **fileViewerSessionPutRequest** | [**FileViewerSessionPutRequest**](FileViewerSessionPutRequest.md)|  | [optional] 

### Return type

[**FileViewerSessionPut200Response**](FileViewerSessionPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

