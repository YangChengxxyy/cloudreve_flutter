# cloudreve_api_client.api.UserPasskeyApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userAuthnDelete**](UserPasskeyApi.md#userauthndelete) | **DELETE** /user/authn | Delete passkey
[**userAuthnPost**](UserPasskeyApi.md#userauthnpost) | **POST** /user/authn | Finish passkey registration
[**userAuthnPut**](UserPasskeyApi.md#userauthnput) | **PUT** /user/authn | Prepare passkey registration


# **userAuthnDelete**
> UserAuthnDelete200Response userAuthnDelete(id)

Delete passkey

Delete a registered passkey by ID.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getUserPasskeyApi();
final String id = 7urNE/WTQSGqA06D0w+1Xw==; // String | ID

try {
    final response = api.userAuthnDelete(id);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserPasskeyApi->userAuthnDelete: $e\n');
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

final api = CloudreveApiClient().getUserPasskeyApi();
final UserAuthnPostRequest userAuthnPostRequest = {"response":"{\"id\":\"7urNE_WTQSGqA06D0w-1Xw\",\"type\":\"public-key\",\"rawId\":\"7urNE_WTQSGqA06D0w-1Xw\",\"response\":{\"attestationObject\":\"o2NmbXRkbm9uZWdhdHRTdG10oGhhdXRoRGF0YViUSZYN5YgOjGh0NBcPZHZgW4_krrmihjLHmVzzuoMdl2NdAAAAANVIgm55tNtAo9gREW9-g0kAEO7qzRP1k0EhqgNOg9MPtV-lAQIDJiABIVggg1lGbgriP72Ro5GpDhgyH_FwmxDFbg_9IAvb1kKqtuUiWCA-wxwgCMp5OVE0s0E8U7ZR-v9HcVr88onxRbauZDUD9A\",\"clientDataJSON\":\"eyJ0eXBlIjoid2ViYXV0aG4uY3JlYXRlIiwiY2hhbGxlbmdlIjoiZnlFQ2I2aDh0bXZRcnZUV1p2Y05RZ0VUb08zMExqRHRmNzIxeUlHVTA0RSIsIm9yaWdpbiI6Imh0dHA6Ly9sb2NhbGhvc3Q6NTE3MyIsImNyb3NzT3JpZ2luIjpmYWxzZX0\"}}","name":"{browser} on {os}","ua":"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_15_7) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/137.0.0.0 Safari/537.36"}; // UserAuthnPostRequest | 

try {
    final response = api.userAuthnPost(userAuthnPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserPasskeyApi->userAuthnPost: $e\n');
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

final api = CloudreveApiClient().getUserPasskeyApi();

try {
    final response = api.userAuthnPut();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserPasskeyApi->userAuthnPut: $e\n');
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

