# cloudreve_api_client.api.SessionPasskeyApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sessionAuthnPost**](SessionPasskeyApi.md#sessionauthnpost) | **POST** /session/authn | Finish Passkey sign-in
[**sessionAuthnPut**](SessionPasskeyApi.md#sessionauthnput) | **PUT** /session/authn | Prepare Passkey sign-in


# **sessionAuthnPost**
> SessionAuthnPost200Response sessionAuthnPost(sessionAuthnPostRequest)

Finish Passkey sign-in



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getSessionPasskeyApi();
final SessionAuthnPostRequest sessionAuthnPostRequest = {"session_id":"1d3fedd6-5542-4345-803c-0e7e757fd7b7","response":"{\"id\":\"hA0kDB_WS1GKXC9-O9Y5yQ\",\"type\":\"public-key\",\"rawId\":\"hA0kDB_WS1GKXC9-O9Y5yQ\",\"response\":{\"attestationObject\":\"\",\"clientDataJSON\":\"eyJ0eXBlIjoid2ViYXV0aG4uZ2V0IiwiY2hhbGxlbmdlIjoiLWV5bWEwMlZRcnZxYkdYcXlxMUI3bV9tdlkzdmNweFpTMXJHNmk4RFlPdyIsIm9yaWdpbiI6Imh0dHA6Ly9sb2NhbGhvc3Q6NTE3MyIsImNyb3NzT3JpZ2luIjpmYWxzZX0\",\"signature\":\"MEUCIAFLyQQb-0ivVQvGroWhl8op0E19gAYq1QeYVw6_eRiKAiEA6r_sBQ3r4IutCTmuTLPd7GrjKBbC17avP5RW0gNeUMk\",\"userHandle\":\"Z3hIZQ\",\"authenticatorData\":\"SZYN5YgOjGh0NBcPZHZgW4_krrmihjLHmVzzuoMdl2MdAAAAAA\"}}"}; // SessionAuthnPostRequest | 

try {
    final response = api.sessionAuthnPost(sessionAuthnPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionPasskeyApi->sessionAuthnPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionAuthnPostRequest** | [**SessionAuthnPostRequest**](SessionAuthnPostRequest.md)|  | [optional] 

### Return type

[**SessionAuthnPost200Response**](SessionAuthnPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionAuthnPut**
> SessionAuthnPut200Response sessionAuthnPut()

Prepare Passkey sign-in

Prepare a Passkey login session.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getSessionPasskeyApi();

try {
    final response = api.sessionAuthnPut();
    print(response);
} catch on DioException (e) {
    print('Exception when calling SessionPasskeyApi->sessionAuthnPut: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SessionAuthnPut200Response**](SessionAuthnPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

