# cloudreve_api_client.api.SessionTokenApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sessionToken2faPost**](SessionTokenApi.md#sessiontoken2fapost) | **POST** /session/token/2fa | Finish sign-in with 2FA
[**sessionTokenDelete**](SessionTokenApi.md#sessiontokendelete) | **DELETE** /session/token | Sign out
[**sessionTokenPost**](SessionTokenApi.md#sessiontokenpost) | **POST** /session/token | Password sign-in
[**sessionTokenRefreshPost**](SessionTokenApi.md#sessiontokenrefreshpost) | **POST** /session/token/refresh | Refresh Token


# **sessionToken2faPost**
> SessionToken2faPost200Response sessionToken2faPost(sessionToken2faPostRequest)

Finish sign-in with 2FA

After [Password Login](https://cloudrevev4.apifox.cn/password-sign-in-289490586e0.md), if 2FA is required, this API is used to finish 2FA challenge and obtain a pair of token.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getSessionTokenApi();
final SessionToken2faPostRequest sessionToken2faPostRequest = ; // SessionToken2faPostRequest | 

try {
    final response = api.sessionToken2faPost(sessionToken2faPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionTokenApi->sessionToken2faPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionToken2faPostRequest** | [**SessionToken2faPostRequest**](SessionToken2faPostRequest.md)|  | [optional] 

### Return type

[**SessionToken2faPost200Response**](SessionToken2faPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionTokenDelete**
> SessionTokenDelete200Response sessionTokenDelete(sessionTokenDeleteRequest)

Sign out

Sign out current session and revoke the refresh token. All refresh tokens issued from the root token will be revoked. For SSO sign in sessions, this method also give the redirect URL from SSO side to sign out its session.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getSessionTokenApi();
final SessionTokenDeleteRequest sessionTokenDeleteRequest = ; // SessionTokenDeleteRequest | 

try {
    final response = api.sessionTokenDelete(sessionTokenDeleteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionTokenApi->sessionTokenDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionTokenDeleteRequest** | [**SessionTokenDeleteRequest**](SessionTokenDeleteRequest.md)|  | [optional] 

### Return type

[**SessionTokenDelete200Response**](SessionTokenDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionTokenPost**
> SessionTokenPost200Response sessionTokenPost(sessionTokenPostRequest)

Password sign-in



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getSessionTokenApi();
final SessionTokenPostRequest sessionTokenPostRequest = ; // SessionTokenPostRequest | 

try {
    final response = api.sessionTokenPost(sessionTokenPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionTokenApi->sessionTokenPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionTokenPostRequest** | [**SessionTokenPostRequest**](SessionTokenPostRequest.md)|  | [optional] 

### Return type

[**SessionTokenPost200Response**](SessionTokenPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionTokenRefreshPost**
> SessionTokenRefreshPost200Response sessionTokenRefreshPost(sessionTokenDeleteRequest)

Refresh Token

Refresh access token with a valid refresh token.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getSessionTokenApi();
final SessionTokenDeleteRequest sessionTokenDeleteRequest = ; // SessionTokenDeleteRequest | 

try {
    final response = api.sessionTokenRefreshPost(sessionTokenDeleteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionTokenApi->sessionTokenRefreshPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionTokenDeleteRequest** | [**SessionTokenDeleteRequest**](SessionTokenDeleteRequest.md)|  | [optional] 

### Return type

[**SessionTokenRefreshPost200Response**](SessionTokenRefreshPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

