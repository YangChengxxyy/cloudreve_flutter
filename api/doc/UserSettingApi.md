# cloudreve_api_client.api.UserSettingApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userSetting2faGet**](UserSettingApi.md#usersetting2faget) | **GET** /user/setting/2fa | Prepare enabling 2FA
[**userSettingAvatarPut**](UserSettingApi.md#usersettingavatarput) | **PUT** /user/setting/avatar | Update profile pricture
[**userSettingGet**](UserSettingApi.md#usersettingget) | **GET** /user/setting | Get preferences
[**userSettingNodesGet**](UserSettingApi.md#usersettingnodesget) | **GET** /user/setting/nodes | List available nodes
[**userSettingPatch**](UserSettingApi.md#usersettingpatch) | **PATCH** /user/setting | Update preference setting
[**userSettingPoliciesGet**](UserSettingApi.md#usersettingpoliciesget) | **GET** /user/setting/policies | List available storage policies


# **userSetting2faGet**
> UserSetting2faGet200Response userSetting2faGet()

Prepare enabling 2FA

Before enabling 2FA, use this method to get a TOTP secret for generating QR Code.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getUserSettingApi();

try {
    final response = api.userSetting2faGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserSettingApi->userSetting2faGet: $e\n');
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

final api = CloudreveApiClient().getUserSettingApi();
final MultipartFile body = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.userSettingAvatarPut(body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserSettingApi->userSettingAvatarPut: $e\n');
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

final api = CloudreveApiClient().getUserSettingApi();

try {
    final response = api.userSettingGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserSettingApi->userSettingGet: $e\n');
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

final api = CloudreveApiClient().getUserSettingApi();

try {
    final response = api.userSettingNodesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserSettingApi->userSettingNodesGet: $e\n');
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

final api = CloudreveApiClient().getUserSettingApi();
final UserSettingPatchRequest userSettingPatchRequest = ; // UserSettingPatchRequest | 

try {
    final response = api.userSettingPatch(userSettingPatchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserSettingApi->userSettingPatch: $e\n');
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

final api = CloudreveApiClient().getUserSettingApi();

try {
    final response = api.userSettingPoliciesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserSettingApi->userSettingPoliciesGet: $e\n');
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

