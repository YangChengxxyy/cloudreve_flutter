# cloudreve_api_client.api.SessionOpenIDApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sessionOpenidPost**](SessionOpenIDApi.md#sessionopenidpost) | **POST** /session/openid | Finish OpenID sign-in
[**sessionOpenidProviderIdDelete**](SessionOpenIDApi.md#sessionopenidprovideriddelete) | **DELETE** /session/openid/{provider_id} | Unlink OpenID
[**sessionOpenidPut**](SessionOpenIDApi.md#sessionopenidput) | **PUT** /session/openid | Prepare OpenID sign-in


# **sessionOpenidPost**
> SessionOpenidPost200Response sessionOpenidPost(sessionOpenidPostRequest)

Finish OpenID sign-in

After user sign in via the URL obtained from [Prepare OpenID Sign-in](https://cloudrevev4.apifox.cn/prepare-openid-sign-in-289505034e0.md), request this to notify Cloudreve the result.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getSessionOpenIDApi();
final SessionOpenidPostRequest sessionOpenidPostRequest = ; // SessionOpenidPostRequest | 

try {
    final response = api.sessionOpenidPost(sessionOpenidPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionOpenIDApi->sessionOpenidPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionOpenidPostRequest** | [**SessionOpenidPostRequest**](SessionOpenidPostRequest.md)|  | [optional] 

### Return type

[**SessionOpenidPost200Response**](SessionOpenidPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionOpenidProviderIdDelete**
> SessionOpenidProviderIdDelete200Response sessionOpenidProviderIdDelete(providerId)

Unlink OpenID

Unlink an OpenID account from a Cloudreve account.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getSessionOpenIDApi();
final int providerId = 0; // int | 

try {
    final response = api.sessionOpenidProviderIdDelete(providerId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionOpenIDApi->sessionOpenidProviderIdDelete: $e\n');
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

# **sessionOpenidPut**
> SessionOpenidPut200Response sessionOpenidPut(sessionOpenidPutRequest)

Prepare OpenID sign-in

Preapre a social connector sign in, can be used to sign in Cloudreve account, or link existing account with a social connector account. * For signing in with social connector, authorization is not required. * For account linking, authorization is required for a valid logged-in user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getSessionOpenIDApi();
final SessionOpenidPutRequest sessionOpenidPutRequest = ; // SessionOpenidPutRequest | 

try {
    final response = api.sessionOpenidPut(sessionOpenidPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionOpenIDApi->sessionOpenidPut: $e\n');
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

