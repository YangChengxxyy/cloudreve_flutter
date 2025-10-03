# cloudreve_api_client.api.CallbackApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callbackCosSessionIdKeyGet**](CallbackApi.md#callbackcossessionidkeyget) | **GET** /callback/cos/{session_id}/{key} | Complete COS upload
[**callbackObsSessionIdKeyPost**](CallbackApi.md#callbackobssessionidkeypost) | **POST** /callback/obs/{session_id}/{key} | Complete OBS upload
[**callbackOnedriveSessionIdKeyPost**](CallbackApi.md#callbackonedrivesessionidkeypost) | **POST** /callback/onedrive/{session_id}/{key} | Complete OneDrive upload
[**callbackS3SessionIdKeyGet**](CallbackApi.md#callbacks3sessionidkeyget) | **GET** /callback/s3/{session_id}/{key} | Complete S3 upload


# **callbackCosSessionIdKeyGet**
> CallbackCosSessionIdKeyGet200Response callbackCosSessionIdKeyGet(sessionId, key)

Complete COS upload

Notify Cloudreve that a file is uploaded into Tencent COS.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getCallbackApi();
final String sessionId = 28563a9-d4f5-4e83-ad1d-dff877762d89; // String | ID of the upload session.
final String key = EuVaIPr3hhlQPK6vYJ2lv9wQaMP05H22; // String | Key of the complete upload URL.

try {
    final response = api.callbackCosSessionIdKeyGet(sessionId, key);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CallbackApi->callbackCosSessionIdKeyGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**| ID of the upload session. | 
 **key** | **String**| Key of the complete upload URL. | 

### Return type

[**CallbackCosSessionIdKeyGet200Response**](CallbackCosSessionIdKeyGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callbackObsSessionIdKeyPost**
> CallbackCosSessionIdKeyGet200Response callbackObsSessionIdKeyPost(sessionId, key)

Complete OBS upload

Notify Cloudreve that a file is uploaded into Huawei OBS.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getCallbackApi();
final String sessionId = 28563a9-d4f5-4e83-ad1d-dff877762d89; // String | ID of the upload session.
final String key = EuVaIPr3hhlQPK6vYJ2lv9wQaMP05H22; // String | Key of the complete upload URL.

try {
    final response = api.callbackObsSessionIdKeyPost(sessionId, key);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CallbackApi->callbackObsSessionIdKeyPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**| ID of the upload session. | 
 **key** | **String**| Key of the complete upload URL. | 

### Return type

[**CallbackCosSessionIdKeyGet200Response**](CallbackCosSessionIdKeyGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callbackOnedriveSessionIdKeyPost**
> CallbackCosSessionIdKeyGet200Response callbackOnedriveSessionIdKeyPost(sessionId, key)

Complete OneDrive upload

Notify Cloudreve that a file is uploaded into OneDrive.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getCallbackApi();
final String sessionId = 28563a9-d4f5-4e83-ad1d-dff877762d89; // String | ID of the upload session.
final String key = EuVaIPr3hhlQPK6vYJ2lv9wQaMP05H22; // String | Key of the complete upload URL.

try {
    final response = api.callbackOnedriveSessionIdKeyPost(sessionId, key);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CallbackApi->callbackOnedriveSessionIdKeyPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**| ID of the upload session. | 
 **key** | **String**| Key of the complete upload URL. | 

### Return type

[**CallbackCosSessionIdKeyGet200Response**](CallbackCosSessionIdKeyGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callbackS3SessionIdKeyGet**
> CallbackCosSessionIdKeyGet200Response callbackS3SessionIdKeyGet(sessionId, key)

Complete S3 upload

Notify Cloudreve that a file is uploaded into S3.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getCallbackApi();
final String sessionId = 28563a9-d4f5-4e83-ad1d-dff877762d89; // String | ID of the upload session.
final String key = EuVaIPr3hhlQPK6vYJ2lv9wQaMP05H22; // String | Key of the complete upload URL.

try {
    final response = api.callbackS3SessionIdKeyGet(sessionId, key);
    print(response);
} catch on DioException (e) {
    print('Exception when calling CallbackApi->callbackS3SessionIdKeyGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**| ID of the upload session. | 
 **key** | **String**| Key of the complete upload URL. | 

### Return type

[**CallbackCosSessionIdKeyGet200Response**](CallbackCosSessionIdKeyGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

