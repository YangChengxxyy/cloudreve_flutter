# cloudreve_api_client.api.FilePermissionApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**filePermissionDelete**](FilePermissionApi.md#filepermissiondelete) | **DELETE** /file/permission | Delete permission setting
[**filePermissionPost**](FilePermissionApi.md#filepermissionpost) | **POST** /file/permission | Set permission


# **filePermissionDelete**
> FilePermissionDelete200Response filePermissionDelete(filePermissionDeleteRequest)

Delete permission setting

Clear existing permission setting of target files, whose permission settings will be inherited from parent after this action. Only owner of the file or administrators can perform this action.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFilePermissionApi();
final FilePermissionDeleteRequest filePermissionDeleteRequest = {"uris":["cloudreve://my/main.c"]}; // FilePermissionDeleteRequest | 

try {
    final response = api.filePermissionDelete(filePermissionDeleteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilePermissionApi->filePermissionDelete: $e\n');
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

final api = CloudreveApiClient().getFilePermissionApi();
final FilePermissionPostRequest filePermissionPostRequest = {"uris":["cloudreve://my/newfile.docx","cloudreve://my/main.c"],"setting":{"user_explicit":{"bnUn":"Dw=="},"same_group":"Dw==","anonymous":"Aw==","everyone":"Cw=="}}; // FilePermissionPostRequest | 

try {
    final response = api.filePermissionPost(filePermissionPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilePermissionApi->filePermissionPost: $e\n');
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

