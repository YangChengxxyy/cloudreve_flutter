# cloudreve_api_client.api.ShareApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**shareGet**](ShareApi.md#shareget) | **GET** /share | List my share links
[**shareIdDelete**](ShareApi.md#shareiddelete) | **DELETE** /share/{id} | Delete share link
[**shareIdPost**](ShareApi.md#shareidpost) | **POST** /share/{id} | Edit share link
[**shareInfoIdGet**](ShareApi.md#shareinfoidget) | **GET** /share/info/{id} | Get share link info
[**sharePut**](ShareApi.md#shareput) | **PUT** /share | Create share link


# **shareGet**
> ShareGet200Response shareGet(pageSize, orderBy, orderDirection, nextPageToken)

List my share links



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getShareApi();
final int pageSize = 10; // int | Page size.
final String orderBy = ; // String | Field name for ordering.
final String orderDirection = asc; // String | 
final String nextPageToken = ; // String | Token for requesting next page. Empty value means requesting the first page.

try {
    final response = api.shareGet(pageSize, orderBy, orderDirection, nextPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ShareApi->shareGet: $e\n');
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

# **shareIdDelete**
> ShareIdDelete200Response shareIdDelete(id)

Delete share link

Only the ower of the share link of administrators can delete it.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getShareApi();
final String id = LJ6cM; // String | ID of the share link.

try {
    final response = api.shareIdDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ShareApi->shareIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the share link. | 

### Return type

[**ShareIdDelete200Response**](ShareIdDelete200Response.md)

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

final api = CloudreveApiClient().getShareApi();
final String id = LJ6cM; // String | ID of the share link.
final ShareIdPostRequest shareIdPostRequest = {"permissions":{"anonymous":"BQ==","everyone":"AQ=="},"uri":"cloudreve://my/Inspirations","share_view":true,"expire":604800,"price":20}; // ShareIdPostRequest | 

try {
    final response = api.shareIdPost(id, shareIdPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ShareApi->shareIdPost: $e\n');
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

# **shareInfoIdGet**
> ShareInfoIdGet200Response shareInfoIdGet(id, password, countViews, ownerExtended, xCrPurchaseTicket)

Get share link info

Get share link info from ID.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getShareApi();
final String id = g2guA; // String | ID of the share link. Can be parsed from `Username` part of the [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or the short link created in [Create share link](./create-share-link-306853462e0)
final String password = gcqzfaze; // String | Password of the share link for private share.  Can be parsed from `Password` part of the [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or the short link created in [Create share link](./create-share-link-306853462e0)
final bool countViews = true; // bool | If set to `true`, the visited counter of the share link will be increased.
final bool ownerExtended = true; // bool | If set to `true` and the requestor is the owner of the share, additional fields like `source_uri` will be available in the response.
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.

try {
    final response = api.shareInfoIdGet(id, password, countViews, ownerExtended, xCrPurchaseTicket);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ShareApi->shareInfoIdGet: $e\n');
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

# **sharePut**
> SharePut200Response sharePut(shareCreateService)

Create share link

Create a share link to given file. Only file owner or administrator can create share links.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getShareApi();
final ShareCreateService shareCreateService = {"permissions":{"anonymous":"BQ==","everyone":"AQ=="},"uri":"cloudreve://my/Inspirations","is_private":true,"share_view":true,"expire":604800,"price":20}; // ShareCreateService | 

try {
    final response = api.sharePut(shareCreateService);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ShareApi->sharePut: $e\n');
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

