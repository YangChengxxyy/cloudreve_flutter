# cloudreve_api_client.api.WebDAVApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**devicesDavGet**](WebDAVApi.md#devicesdavget) | **GET** /devices/dav | List accounts
[**devicesDavIdDelete**](WebDAVApi.md#devicesdaviddelete) | **DELETE** /devices/dav/{id} | Delete account
[**devicesDavIdPatch**](WebDAVApi.md#devicesdavidpatch) | **PATCH** /devices/dav/{id} | Update account
[**devicesDavPut**](WebDAVApi.md#devicesdavput) | **PUT** /devices/dav | Create account


# **devicesDavGet**
> DevicesDavGet200Response devicesDavGet(pageSize, nextPageToken)

List accounts

List all WebDAV accounts under authenticated user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getWebDAVApi();
final int pageSize = 50; // int | Page size.
final String nextPageToken = nextPageToken_example; // String | Token for requesting next page. Empty value means requesting the first page.

try {
    final response = api.devicesDavGet(pageSize, nextPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WebDAVApi->devicesDavGet: $e\n');
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

final api = CloudreveApiClient().getWebDAVApi();
final String id = YnCp; // String | ID of the existing WebDAV account.

try {
    final response = api.devicesDavIdDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WebDAVApi->devicesDavIdDelete: $e\n');
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

final api = CloudreveApiClient().getWebDAVApi();
final String id = YnCp; // String | ID of the existing WebDAV account.
final CreateDavAccountService createDavAccountService = {"name":"new account","uri":"cloudreve://my/002i8OT6osgrXrQEqPp1mMqB9UfxjB0q","proxy":true,"readonly":true}; // CreateDavAccountService | 

try {
    final response = api.devicesDavIdPatch(id, createDavAccountService);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WebDAVApi->devicesDavIdPatch: $e\n');
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

final api = CloudreveApiClient().getWebDAVApi();
final CreateDavAccountService createDavAccountService = {"name":"new account","uri":"cloudreve://my/0","proxy":true,"readonly":true}; // CreateDavAccountService | 

try {
    final response = api.devicesDavPut(createDavAccountService);
    print(response);
} catch on DioException (e) {
    print('Exception when calling WebDAVApi->devicesDavPut: $e\n');
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

