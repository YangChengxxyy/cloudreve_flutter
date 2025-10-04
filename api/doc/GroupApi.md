# cloudreve_api_client.api.GroupApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**groupListGet**](GroupApi.md#grouplistget) | **GET** /group/list | List groups


# **groupListGet**
> GroupListGet200Response groupListGet()

List groups

List all user groups.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getGroupApi();

try {
    final response = api.groupListGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling GroupApi->groupListGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GroupListGet200Response**](GroupListGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

