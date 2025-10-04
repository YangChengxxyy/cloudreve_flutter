# cloudreve_api_client.api.FileDirectLinkApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fileSourcePut**](FileDirectLinkApi.md#filesourceput) | **PUT** /file/source | Create direct links
[**fileSourceidDelete**](FileDirectLinkApi.md#filesourceiddelete) | **DELETE** /file/source{id} | Delete direct link


# **fileSourcePut**
> FileSourcePut200Response fileSourcePut(fileSourcePutRequest)

Create direct links

Create a direct link that can be used to access the file's content directly. Only file owners or administrators can create direct links.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileDirectLinkApi();
final FileSourcePutRequest fileSourcePutRequest = {"uris":["cloudreve://my/Inspirations/cloudreve_4.0.0-beta.7_windows_amd64.zip","cloudreve://my/Inspirations/archive.zip"]}; // FileSourcePutRequest | 

try {
    final response = api.fileSourcePut(fileSourcePutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileDirectLinkApi->fileSourcePut: $e\n');
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

# **fileSourceidDelete**
> FileSourceIdDelete200Response fileSourceidDelete(id)

Delete direct link

Only file owner can delete direct links.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileDirectLinkApi();
final String id = xMxIa; // String | ID of the delete link.

try {
    final response = api.fileSourceidDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileDirectLinkApi->fileSourceidDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the delete link. | 

### Return type

[**FileSourceIdDelete200Response**](FileSourceIdDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

