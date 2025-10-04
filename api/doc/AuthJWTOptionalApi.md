# cloudreve_api_client.api.AuthJWTOptionalApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fileActivitiesGet**](AuthJWTOptionalApi.md#fileactivitiesget) | **GET** /file/activities | List file activities
[**fileArchiveGet**](AuthJWTOptionalApi.md#filearchiveget) | **GET** /file/archive | Get archive file list
[**fileContentPut**](AuthJWTOptionalApi.md#filecontentput) | **PUT** /file/content | Update file content
[**fileCreatePost**](AuthJWTOptionalApi.md#filecreatepost) | **POST** /file/create | Create file
[**fileDelete**](AuthJWTOptionalApi.md#filedelete) | **DELETE** /file | Delete file
[**fileGet**](AuthJWTOptionalApi.md#fileget) | **GET** /file | List files
[**fileInfoGet**](AuthJWTOptionalApi.md#fileinfoget) | **GET** /file/info | Get file info
[**fileMetadataPatch**](AuthJWTOptionalApi.md#filemetadatapatch) | **PATCH** /file/metadata | Patch metadata
[**fileMovePost**](AuthJWTOptionalApi.md#filemovepost) | **POST** /file/move | Move or copy files
[**fileRenamePost**](AuthJWTOptionalApi.md#filerenamepost) | **POST** /file/rename | Rename file
[**fileThumbGet**](AuthJWTOptionalApi.md#filethumbget) | **GET** /file/thumb | Get thumbnail URL
[**fileUploadDelete**](AuthJWTOptionalApi.md#fileuploaddelete) | **DELETE** /file/upload | Delete upload session
[**fileUploadPut**](AuthJWTOptionalApi.md#fileuploadput) | **PUT** /file/upload | Create upload session
[**fileUploadSessionIdIndexPost**](AuthJWTOptionalApi.md#fileuploadsessionidindexpost) | **POST** /file/upload/{sessionId}/{index} | Upload file chunk
[**fileUrlPost**](AuthJWTOptionalApi.md#fileurlpost) | **POST** /file/url | Create download URL
[**fileVersionCurrentPost**](AuthJWTOptionalApi.md#fileversioncurrentpost) | **POST** /file/version/current | Set file version
[**fileVersionDelete**](AuthJWTOptionalApi.md#fileversiondelete) | **DELETE** /file/version | Delete file version
[**fileViewerSessionPut**](AuthJWTOptionalApi.md#fileviewersessionput) | **PUT** /file/viewerSession | Create viewer session
[**sessionOpenidPut**](AuthJWTOptionalApi.md#sessionopenidput) | **PUT** /session/openid | Prepare OpenID sign-in
[**shareInfoIdGet**](AuthJWTOptionalApi.md#shareinfoidget) | **GET** /share/info/{id} | Get share link info
[**siteAbusePost**](AuthJWTOptionalApi.md#siteabusepost) | **POST** /site/abuse | Report abuse
[**siteConfigSectionGet**](AuthJWTOptionalApi.md#siteconfigsectionget) | **GET** /site/config/{section} | Get site settings
[**userInfoUserIdGet**](AuthJWTOptionalApi.md#userinfouseridget) | **GET** /user/info/{user_id} | Get user
[**vasPaymentPut**](AuthJWTOptionalApi.md#vaspaymentput) | **PUT** /vas/payment | Create a payment
[**vasPaymentStatusIdTradeNoGet**](AuthJWTOptionalApi.md#vaspaymentstatusidtradenoget) | **GET** /vas/payment/status/{id}/{trade_no} | Get payment status


# **fileActivitiesGet**
> FileActivitiesGet200Response fileActivitiesGet(uri, pageSize, orderDirection, nextPageToken, filter, xCrPurchaseTicket)

List file activities



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
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
    print('Exception when calling AuthJWTOptionalApi->fileActivitiesGet: $e\n');
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

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String uri = cloudreve://my/pdfjs-4.10.38-dist.zip; // String | [URI](https://docs.cloudreve.org/api/file-uri) of the archive file.
final String entity = zoIE; // String | Optional file version ID.

try {
    final response = api.fileArchiveGet(uri, entity);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileArchiveGet: $e\n');
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

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String uri = cloudreve://my/newfile.txt; // String | [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
final int contentLength = 2164321; // int | Length of the request body.
final String previous = bOn4j; // String | Previous version ID that the client side is aware of. Similar to `If-Match` in HTTP reuqest, if this field is set: - If the file version matches, update will be performed; - If latest file version does not match this value, conflict error will be raised. 
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final MultipartFile body = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.fileContentPut(uri, contentLength, previous, xCrPurchaseTicket, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileContentPut: $e\n');
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

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileCreatePostRequest fileCreatePostRequest = ; // FileCreatePostRequest | 

try {
    final response = api.fileCreatePost(xCrPurchaseTicket, fileCreatePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileCreatePost: $e\n');
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

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileDeleteRequest fileDeleteRequest = ; // FileDeleteRequest | 

try {
    final response = api.fileDelete(xCrPurchaseTicket, fileDeleteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileDelete: $e\n');
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

final api = CloudreveApiClient().getAuthJWTOptionalApi();
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
    print('Exception when calling AuthJWTOptionalApi->fileGet: $e\n');
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

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String uri = cloudreve://my/file.txt; // String | [URI](https://docs.cloudreve.org/api/file-uri) of the target file. If it's empty, `id` is required.
final String id = 98XDX8Sr; // String | ID of the file. If it's empty, `uri` is required. Getting file info by ID is only available to the owner of the file or administrators.
final bool extended = true; // bool | Whether to get additional info about this file.
final bool folderSummary = true; // bool | For folders, whether to calculate the size of this folder. The result might be cached.
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.

try {
    final response = api.fileInfoGet(uri, id, extended, folderSummary, xCrPurchaseTicket);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileInfoGet: $e\n');
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

# **fileMetadataPatch**
> FileMetadataPatch200Response fileMetadataPatch(xCrPurchaseTicket, fileMetadataPatchRequest)

Patch metadata

Modify [metadata](https://docs.cloudreve.org/api/metadata) of the given file.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileMetadataPatchRequest fileMetadataPatchRequest = ; // FileMetadataPatchRequest | 

try {
    final response = api.fileMetadataPatch(xCrPurchaseTicket, fileMetadataPatchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileMetadataPatch: $e\n');
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

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileMovePostRequest fileMovePostRequest = {"uris":["cloudreve://my/SIX%20-%20SIX.mp3","cloudreve://my/Background.mp3"],"dst":"cloudreve://my/alit"}; // FileMovePostRequest | 

try {
    final response = api.fileMovePost(xCrPurchaseTicket, fileMovePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileMovePost: $e\n');
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

# **fileRenamePost**
> FileRenamePost200Response fileRenamePost(xCrPurchaseTicket, fileRenamePostRequest)

Rename file



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileRenamePostRequest fileRenamePostRequest = {"uri":"cloudreve://my/Inspirations/old.txt","new_name":"new.txt"}; // FileRenamePostRequest | 

try {
    final response = api.fileRenamePost(xCrPurchaseTicket, fileRenamePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileRenamePost: $e\n');
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

# **fileThumbGet**
> FileThumbGet200Response fileThumbGet(uri, xCrContextHint, xCrPurchaseTicket)

Get thumbnail URL

Get the thumbnail URL of the given file.  ### How to decode obfuscated thumbnail URL?  If `obfuscated` is set to `true` in the response, you need addition step to recover the original image URL.    Here's implementation for the decode functioin in multiple languages         <AccordionGroup>   <Accordion title=\"JavaScript\"> ```js export const decodeTimeFlowString = (str: string) => {   let timeNow = Math.floor(new Date().getTime() / 1000);   try {     return decodeTimeFlowStringTime(str, timeNow);   } catch (e) {}   try {     return decodeTimeFlowStringTime(str, timeNow - 1000);   } catch (e) {}   try {     return decodeTimeFlowStringTime(str, timeNow + 1000);   } catch (e) {}    return \"\"; };      const decodeTimeFlowStringTime = (str: string, timeNow: number) => {   timeNow = Math.floor(timeNow / 1000);   const timeNowBackup = timeNow;   const timeDigits: number[] = [];   if (str.length === 0) {     return \"\";   }   while (timeNow > 0) {     timeDigits.push(timeNow % 10);     timeNow = Math.floor(timeNow / 10);   }      const res = Array.from(str);   let secret = Array.from(str);   let add = false;   if (secret.length % 2 === 0) {     add = true;   }   let timeDigitIndex = (secret.length - 1) % timeDigits.length;   const l = secret.length;   for (let pos = 0; pos < l; pos++) {     let newIndex = res.length - 1 - pos;     if (add) {       newIndex = newIndex + timeDigits[timeDigitIndex] * timeDigitIndex;     } else {       newIndex = 2 * timeDigitIndex * timeDigits[timeDigitIndex] - newIndex;     }      if (newIndex < 0) {       newIndex = newIndex * -1;     }      newIndex = newIndex % secret.length;      res[res.length - 1 - pos] = secret[newIndex];     const a = secret[res.length - 1 - pos];     const b = secret[newIndex];     secret[newIndex] = a;     secret[res.length - 1 - pos] = b;      secret = secret.slice(0, secret.length - 1);      add = !add;     // Add timeDigitIndex by 1, but does not exceed total digits in timeNow     timeDigitIndex--;     if (timeDigitIndex < 0) {       timeDigitIndex = timeDigits.length - 1;     }   }   const resStr = res.join(\"\");   const resSep = resStr.split(\"|\");   if (resSep.length < 1 || resSep[0] != timeNowBackup.toString()) {     throw new Error(\"Invalid time flow string\");   }    return resStr.slice(resSep[0].length + 1); }; ``` </Accordion> <Accordion title=\"Golang\"> ```go package main  import (  \"errors\"  \"strconv\"  \"strings\" )  func DecodeTimeFlowStringTime(str string, timeNowMillis int64) (string, error) {  if len(str) == 0 {   return \"\", nil  }   timeNow := timeNowMillis / 1000  timeNowBackup := timeNow   var timeDigits []int  if timeNow == 0 {   timeDigits = append(timeDigits, 0)  } else {   tempTime := timeNow   for tempTime > 0 {    timeDigits = append(timeDigits, int(tempTime%10))    tempTime /= 10   }  }   res := []rune(str)  secret := []rune(str)   add := len(secret)%2 == 0   timeDigitIndex := (len(secret) - 1) % len(timeDigits)   l := len(secret)  for pos := 0; pos < l; pos++ {   targetIndex := l - 1 - pos    newIndex := targetIndex   if add {    newIndex += timeDigits[timeDigitIndex] * timeDigitIndex   } else {    newIndex = 2*timeDigitIndex*timeDigits[timeDigitIndex] - newIndex   }    if newIndex < 0 {    newIndex *= -1   }    newIndex %= len(secret)    res[targetIndex] = secret[newIndex]    lastIndexInSecret := len(secret) - 1   secret[newIndex], secret[lastIndexInSecret] = secret[lastIndexInSecret], secret[newIndex]   secret = secret[:lastIndexInSecret]    add = !add    timeDigitIndex--   if timeDigitIndex < 0 {    timeDigitIndex = len(timeDigits) - 1   }  }   resStr := string(res)  resSep := strings.SplitN(resStr, \"|\", 2)   if len(resSep) < 2 || resSep[0] != strconv.FormatInt(timeNowBackup, 10) {   return \"\", errors.New(\"Invalid time flow string\")  }   return resSep[1], nil } ``` </Accordion>     <Accordion title=\"Java\"> ```java import java.util.ArrayList; import java.util.Collections; import java.util.List; import java.util.stream.Collectors;  public class TimeFlowDecoder {      public static String decodeTimeFlowStringTime(String str, long timeNowMillis) throws Exception {         if (str == null || str.isEmpty()) {             return \"\";         }          long timeNow = timeNowMillis / 1000;         long timeNowBackup = timeNow;          List<Integer> timeDigits = new ArrayList<>();         if (timeNow == 0) {             timeDigits.add(0);         } else {             long tempTime = timeNow;             while (tempTime > 0) {                 timeDigits.add((int) (tempTime % 10));                 tempTime /= 10;             }         }                  List<Character> res = new ArrayList<>();         for (char c : str.toCharArray()) {             res.add(c);         }          List<Character> secret = new ArrayList<>(res);          boolean add = secret.size() % 2 == 0;          int timeDigitIndex = (secret.size() - 1) % timeDigits.size();                  int l = secret.size();         for (int pos = 0; pos < l; pos++) {             int targetIndex = l - 1 - pos;              long newIndexLong = targetIndex;              if (add) {                 newIndexLong += (long) timeDigits.get(timeDigitIndex) * timeDigitIndex;             } else {                 newIndexLong = 2L * timeDigitIndex * timeDigits.get(timeDigitIndex) - newIndexLong;             }              if (newIndexLong < 0) {                 newIndexLong *= -1;             }              int newIndex = (int) (newIndexLong % secret.size());              res.set(targetIndex, secret.get(newIndex));              Collections.swap(secret, newIndex, secret.size() - 1);             secret.remove(secret.size() - 1);              add = !add;              timeDigitIndex--;             if (timeDigitIndex < 0) {                 timeDigitIndex = timeDigits.size() - 1;             }         }          String resStr = res.stream()                            .map(String::valueOf)                            .collect(Collectors.joining());          String[] resSep = resStr.split(\"\\\\|\", 2);          if (resSep.length < 2 || !resSep[0].equals(String.valueOf(timeNowBackup))) {             throw new Exception(\"Invalid time flow string\");         }          return resSep[1];     } } ``` </Accordion> <Accordion title=\"Python\"> ```python import math  def decode_time_flow_string_time(s: str, time_now_ms: int) -> str:     if not s:         return \"\"      time_now_s = math.floor(time_now_ms / 1000)     time_now_backup = time_now_s      time_digits = []     if time_now_s == 0:         time_digits.append(0)     else:         temp_time = time_now_s         while temp_time > 0:             time_digits.append(temp_time % 10)             temp_time = math.floor(temp_time / 10)          res = list(s)     secret = list(s)          add = len(secret) % 2 == 0          time_digit_index = (len(secret) - 1) % len(time_digits)          original_len = len(secret)     for pos in range(original_len):         target_index = original_len - 1 - pos                  new_index = target_index                  if add:             new_index += time_digits[time_digit_index] * time_digit_index         else:             new_index = 2 * time_digit_index * time_digits[time_digit_index] - new_index                      if new_index < 0:             new_index *= -1                      new_index %= len(secret)                  res[target_index] = secret[new_index]                  # Swap with the last element and pop to remove efficiently         last_index = len(secret) - 1         secret[new_index], secret[last_index] = secret[last_index], secret[new_index]         secret.pop()                  add = not add                  time_digit_index -= 1         if time_digit_index < 0:             time_digit_index = len(time_digits) - 1                  res_str = \"\".join(res)          parts = res_str.split(\"|\", 1)     if len(parts) < 2 or parts[0] != str(time_now_backup):         raise ValueError(\"Invalid time flow string\")              return parts[1] ``` </Accordion>     </AccordionGroup>

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String uri = cloudreve://my/pic.png; // String | [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
final String xCrContextHint = b832b998-7ece-4ffd-ba6b-afb64530ca70; // String | Optional context hint to speed up DB queries. You can get its value from the response of listing files. It is recommended to set this header if you need to perform action on files that are just listed by [List files](/list-files-300233178e0) API.
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.

try {
    final response = api.fileThumbGet(uri, xCrContextHint, xCrPurchaseTicket);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileThumbGet: $e\n');
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

# **fileUploadDelete**
> FileUploadDelete200Response fileUploadDelete(xCrPurchaseTicket, fileUploadDeleteRequest)

Delete upload session

Delete an upload session. Client should send this request if:  * User canceled an upload after uplaod session created. * Non-retryable error occurs. * Client need to delete the upload session, but it's undetermined if the session is already deleted.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileUploadDeleteRequest fileUploadDeleteRequest = {"id":"9897ebae-7b73-4169-aabc-6396f470e4bb","uri":"cloudreve://my/Inspirations/file.zip"}; // FileUploadDeleteRequest | 

try {
    final response = api.fileUploadDelete(xCrPurchaseTicket, fileUploadDeleteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileUploadDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **fileUploadDeleteRequest** | [**FileUploadDeleteRequest**](FileUploadDeleteRequest.md)|  | [optional] 

### Return type

[**FileUploadDelete200Response**](FileUploadDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileUploadPut**
> FileUploadPut200Response fileUploadPut(xCrPurchaseTicket, fileUploadPutRequest)

Create upload session

Create a upload session, which is required before uploading files. After upload session created, client should start uploading using the information included in the upload session. The implementation of upload differs from different storage policy type, you can find Cloudreve's implentation in [uploader](https://github.com/cloudreve/frontend/tree/master/src/component/Uploader/core/uploader).  A general file uploading includes 3 steps: Create upload session, upload chunks, finish upload request. For small files, please consider using [Update file content](./update-file-content-306591838e0).  ### 1. Create upload session  Use current method to create an upload session.  ### 2. Upload chunks  * For local storage policy, or any other storage policy with `storage_policy`.`relay` set to `true`, use [Upload file chunk](./upload-file-chunk-306698012e0); * For remote storage policy, send chunks to the URL defined in `upload_urls`, there should be only one element in `upload_urls`. The request is similar to [Upload file chunk](./upload-file-chunk-306698012e0), except:     * Chunk index is passed through query `chunk`, e.g. `http://slavecloudreve.com:5213/api/v4/slave/upload/f1dd2c8c-0c51-475b-a086-b338ae1d8109?chunk=2`     * `Authorization` shoud be the value of `credential` in upload session, e.g. `Bearer Cr sBnnQ3rZ-UBr7d8ohKpUFtsQc8OMLuWwn1VhuJtdc5k=:1749623351` * For any other storage policies, please refer to:     * S3: [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)     * OSS: [UploadPart](https://www.alibabacloud.com/help/en/oss/developer-reference/uploadpart)     * COS: [UploadPart](https://www.tencentcloud.com/document/product/436/7750)     * OBS: [Uploading Parts](https://support.huaweicloud.com/intl/en-us/api-obs/obs_04_0099.html)     * OneDrive: [Upload bytes to the upload session](https://learn.microsoft.com/en-us/onedrive/developer/rest-api/api/driveitem_createuploadsession?view=odsp-graph-online#upload-bytes-to-the-upload-session)     * Qiniu: [分块上传数据](https://developer.qiniu.com/kodo/6366/upload-part)     * Upyun: [大文件上传](https://help.upyun.com/knowledge-base/form_api/#e5a4a7e69687e4bbb6e4b88ae4bca0)  ### 3. Finish upload  * For local/remote/upyun storage policy, or any other storage policy with `storage_policy`.`relay` set to `true`, you don't need to finish upload, it's automatically finished after last chunk uploaded. * OneDrive: [Complete OneDrive upload](https://cloudrevev4.apifox.cn/complete-onedrive-upload-295173813e0.md) * S3: [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html), then send [Complete S3 upload](https://cloudrevev4.apifox.cn/complete-s3-upload-295177181e0.md) * COS: [Complete Multipart Upload](https://www.tencentcloud.com/ind/document/product/436/7742), then send [Complete COS upload](https://cloudrevev4.apifox.cn/complete-cos-upload-295177009e0.md) * OBS: [Completing a Multipart Upload](https://support.huaweicloud.com/intl/en-us/api-obs/obs_04_0102.html), then send [Complete OBS upload](https://cloudrevev4.apifox.cn/complete-obs-upload-295177687e0.md) * Qiniu: [完成文件上传](https://developer.qiniu.com/kodo/6368/complete-multipart-upload)

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileUploadPutRequest fileUploadPutRequest = {"uri":"cloudreve://my/Inspirations/archive%20(3).zip","size":65328441,"policy_id":"J7uV","last_modified":1749524701494,"mime_type":"application/zip"}; // FileUploadPutRequest | 

try {
    final response = api.fileUploadPut(xCrPurchaseTicket, fileUploadPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileUploadPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **fileUploadPutRequest** | [**FileUploadPutRequest**](FileUploadPutRequest.md)|  | [optional] 

### Return type

[**FileUploadPut200Response**](FileUploadPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileUploadSessionIdIndexPost**
> FileUploadSessionIdIndexPost200Response fileUploadSessionIdIndexPost(sessionId, index, contentLength, xCrPurchaseTicket, body)

Upload file chunk

Upload one chunk to Cloudreve. This method only applies to local storage policy, or storage policies with upload relay enabled.  * If mulitpart upload is disabled, all file data should be send in one request with `index` set to `0`; * Chunks must be uploaded in order, starting from index `0`; * `Content-Length` header is required.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String sessionId = 9897ebae-7b73-4169-aabc-6396f470e4bb; // String | ID of the upload session, can be get from [Create upload session](./create-upload-session-306671611e0)
final int index = 1; // int | Index of the chunk, starting from `0`.
final int contentLength = 553456; // int | Size of current chunk. Must match with the `chunk_size` in the upload session, except the last chunk.
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final MultipartFile body = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.fileUploadSessionIdIndexPost(sessionId, index, contentLength, xCrPurchaseTicket, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileUploadSessionIdIndexPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**| ID of the upload session, can be get from [Create upload session](./create-upload-session-306671611e0) | 
 **index** | **int**| Index of the chunk, starting from `0`. | 
 **contentLength** | **int**| Size of current chunk. Must match with the `chunk_size` in the upload session, except the last chunk. | 
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **body** | **MultipartFile**|  | [optional] 

### Return type

[**FileUploadSessionIdIndexPost200Response**](FileUploadSessionIdIndexPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileUrlPost**
> FileUrlPost200Response fileUrlPost(xCrContextHint, xCrPurchaseTicket, fileUrlPostRequest)

Create download URL

Create a temporary anonymous URLs to download file content.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String xCrContextHint = b832b998-7ece-4ffd-ba6b-afb64530ca70; // String | Optional context hint to speed up DB queries. You can get its value from the response of listing files. It is recommended to set this header if you need to perform action on files that are just listed by [List files](/list-files-300233178e0) API.
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileUrlPostRequest fileUrlPostRequest = ; // FileUrlPostRequest | 

try {
    final response = api.fileUrlPost(xCrContextHint, xCrPurchaseTicket, fileUrlPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileUrlPost: $e\n');
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

# **fileVersionCurrentPost**
> FileVersionCurrentPost200Response fileVersionCurrentPost(xCrPurchaseTicket, fileVersionCurrentPostRequest)

Set file version

Set the current version of the file.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileVersionCurrentPostRequest fileVersionCurrentPostRequest = {"uri":"cloudreve://my/copy.md","version":"9ewQi2"}; // FileVersionCurrentPostRequest | 

try {
    final response = api.fileVersionCurrentPost(xCrPurchaseTicket, fileVersionCurrentPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileVersionCurrentPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **fileVersionCurrentPostRequest** | [**FileVersionCurrentPostRequest**](FileVersionCurrentPostRequest.md)|  | [optional] 

### Return type

[**FileVersionCurrentPost200Response**](FileVersionCurrentPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileVersionDelete**
> FileVersionDelete200Response fileVersionDelete(uri, version, xCrPurchaseTicketCommaStringCommaFalseComma1f63aa26Edc040ce950aCb4d4323158eCommaCanBeUsedToAuthenticateToPaidShareLinksWithAAnonymousIdentityPeriodTheTicketValueCanBeObtainedAfterAnAnonymousUserPurchaseAPaidShareLink)

Delete file version

Delete a version from a file's version history.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String uri = cloudreve://my/copy.md; // String | [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
final String version = 9ewQi2; // String | ID of the version to set as \"current version\". The version blob must be linked to current file. List of available versions can be retrieved via [Get file info](./get-file-info-306769225e0). The version cannot be the currrent version of the file.
final String xCrPurchaseTicketCommaStringCommaFalseComma1f63aa26Edc040ce950aCb4d4323158eCommaCanBeUsedToAuthenticateToPaidShareLinksWithAAnonymousIdentityPeriodTheTicketValueCanBeObtainedAfterAnAnonymousUserPurchaseAPaidShareLink = ; // String | 

try {
    final response = api.fileVersionDelete(uri, version, xCrPurchaseTicketCommaStringCommaFalseComma1f63aa26Edc040ce950aCb4d4323158eCommaCanBeUsedToAuthenticateToPaidShareLinksWithAAnonymousIdentityPeriodTheTicketValueCanBeObtainedAfterAnAnonymousUserPurchaseAPaidShareLink);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileVersionDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| [URI](https://docs.cloudreve.org/api/file-uri) of the target file. | [optional] 
 **version** | **String**| ID of the version to set as \"current version\". The version blob must be linked to current file. List of available versions can be retrieved via [Get file info](./get-file-info-306769225e0). The version cannot be the currrent version of the file. | [optional] 
 **xCrPurchaseTicketCommaStringCommaFalseComma1f63aa26Edc040ce950aCb4d4323158eCommaCanBeUsedToAuthenticateToPaidShareLinksWithAAnonymousIdentityPeriodTheTicketValueCanBeObtainedAfterAnAnonymousUserPurchaseAPaidShareLink** | **String**|  | [optional] 

### Return type

[**FileVersionDelete200Response**](FileVersionDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileViewerSessionPut**
> FileViewerSessionPut200Response fileViewerSessionPut(xCrPurchaseTicket, fileViewerSessionPutRequest)

Create viewer session

Create a temporary WOPI session for 3rd party file apps or WOPI clients to download or edit files.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileViewerSessionPutRequest fileViewerSessionPutRequest = {"uri":"cloudreve://JbVTn@share/1.docx","viewer_id":"af01b85b-f57d-46d2-8ad6-1d9b96548e78","preferred_action":"edit","parent_uri":"cloudreve://my/Inspirations"}; // FileViewerSessionPutRequest | 

try {
    final response = api.fileViewerSessionPut(xCrPurchaseTicket, fileViewerSessionPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->fileViewerSessionPut: $e\n');
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

# **sessionOpenidPut**
> SessionOpenidPut200Response sessionOpenidPut(sessionOpenidPutRequest)

Prepare OpenID sign-in

Preapre a social connector sign in, can be used to sign in Cloudreve account, or link existing account with a social connector account. * For signing in with social connector, authorization is not required. * For account linking, authorization is required for a valid logged-in user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final SessionOpenidPutRequest sessionOpenidPutRequest = ; // SessionOpenidPutRequest | 

try {
    final response = api.sessionOpenidPut(sessionOpenidPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->sessionOpenidPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionOpenidPutRequest** | [**SessionOpenidPutRequest**](SessionOpenidPutRequest.md)|  | [optional] 

### Return type

[**SessionOpenidPut200Response**](SessionOpenidPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **shareInfoIdGet**
> ShareInfoIdGet200Response shareInfoIdGet(id, password, countViews, ownerExtended, xCrPurchaseTicket)

Get share link info

Get share link info from ID.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String id = g2guA; // String | ID of the share link. Can be parsed from `Username` part of the [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or the short link created in [Create share link](./create-share-link-306853462e0)
final String password = gcqzfaze; // String | Password of the share link for private share.  Can be parsed from `Password` part of the [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or the short link created in [Create share link](./create-share-link-306853462e0)
final bool countViews = true; // bool | If set to `true`, the visited counter of the share link will be increased.
final bool ownerExtended = true; // bool | If set to `true` and the requestor is the owner of the share, additional fields like `source_uri` will be available in the response.
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.

try {
    final response = api.shareInfoIdGet(id, password, countViews, ownerExtended, xCrPurchaseTicket);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->shareInfoIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the share link. Can be parsed from `Username` part of the [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or the short link created in [Create share link](./create-share-link-306853462e0) | 
 **password** | **String**| Password of the share link for private share.  Can be parsed from `Password` part of the [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or the short link created in [Create share link](./create-share-link-306853462e0) | [optional] 
 **countViews** | **bool**| If set to `true`, the visited counter of the share link will be increased. | [optional] 
 **ownerExtended** | **bool**| If set to `true` and the requestor is the owner of the share, additional fields like `source_uri` will be available in the response. | [optional] 
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 

### Return type

[**ShareInfoIdGet200Response**](ShareInfoIdGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **siteAbusePost**
> SiteAbusePost200Response siteAbusePost(siteAbusePostRequest)

Report abuse

Report abuse on share links or users.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final SiteAbusePostRequest siteAbusePostRequest = ; // SiteAbusePostRequest | 

try {
    final response = api.siteAbusePost(siteAbusePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->siteAbusePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteAbusePostRequest** | [**SiteAbusePostRequest**](SiteAbusePostRequest.md)|  | [optional] 

### Return type

[**SiteAbusePost200Response**](SiteAbusePost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **siteConfigSectionGet**
> SiteConfigSectionGet200Response siteConfigSectionGet(section)

Get site settings

Get global site settings paritioned by sections. Only settings in your requested section will be included in your response.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String section = basic; // String | Setting section name.

try {
    final response = api.siteConfigSectionGet(section);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->siteConfigSectionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **section** | **String**| Setting section name. | 

### Return type

[**SiteConfigSectionGet200Response**](SiteConfigSectionGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userInfoUserIdGet**
> UserInfoUserIdGet200Response userInfoUserIdGet(userId)

Get user

Get user by ID. Authorization is optional, but `email` field will be redacted for anonymous request.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String userId = Nru9; // String | User ID.

try {
    final response = api.userInfoUserIdGet(userId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->userInfoUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID. | 

### Return type

[**UserInfoUserIdGet200Response**](UserInfoUserIdGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vasPaymentPut**
> VasPaymentPut200Response vasPaymentPut(vasPaymentPutRequest)

Create a payment

Create a payment for given product.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final VasPaymentPutRequest vasPaymentPutRequest = {"product":{"type":3,"sku_id":"ea602ab6-bd1e-40c3-b674-bef18fda7fa9"},"quantity":1,"email":"","provider_id":"8ff2cceb-b4e6-4fa8-a934-04900a2e8699","language":"zh-CN"}; // VasPaymentPutRequest | 

try {
    final response = api.vasPaymentPut(vasPaymentPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->vasPaymentPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vasPaymentPutRequest** | [**VasPaymentPutRequest**](VasPaymentPutRequest.md)|  | [optional] 

### Return type

[**VasPaymentPut200Response**](VasPaymentPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vasPaymentStatusIdTradeNoGet**
> VasPaymentStatusIdTradeNoGet200Response vasPaymentStatusIdTradeNoGet(id, tradeNo)

Get payment status



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthJWTOptionalApi();
final String id = 1XbTb; // String | ID of the payment.
final String tradeNo = 20250612141601003370839825; // String | Trade number of the payment.

try {
    final response = api.vasPaymentStatusIdTradeNoGet(id, tradeNo);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthJWTOptionalApi->vasPaymentStatusIdTradeNoGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the payment. | 
 **tradeNo** | **String**| Trade number of the payment. | 

### Return type

[**VasPaymentStatusIdTradeNoGet200Response**](VasPaymentStatusIdTradeNoGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

