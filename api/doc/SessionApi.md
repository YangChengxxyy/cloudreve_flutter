# cloudreve_api_client.api.SessionApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sessionPrepareGet**](SessionApi.md#sessionprepareget) | **GET** /session/prepare | Prepare login


# **sessionPrepareGet**
> SessionPrepareGet200Response sessionPrepareGet(email)

Prepare login

Query if a given is existed, and all possible login method for it. This method is not required to perform a sign in, it just provide more context for frontent UI.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getSessionApi();
final String email = example@cloudreve.org; // String | Account email.

try {
    final response = api.sessionPrepareGet(email);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionApi->sessionPrepareGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Account email. | 

### Return type

[**SessionPrepareGet200Response**](SessionPrepareGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

