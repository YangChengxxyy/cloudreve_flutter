# cloudreve_api_client.api.FilePinApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**filePinDelete**](FilePinApi.md#filepindelete) | **DELETE** /file/pin | Delete a pin
[**filePinPut**](FilePinApi.md#filepinput) | **PUT** /file/pin | Pin to sidebar


# **filePinDelete**
> FilePinPut200Response filePinDelete(pinFileService)

Delete a pin

Remove a pinned URI from user's sidebar.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFilePinApi();
final PinFileService pinFileService = {"uri":"cloudreve://my/Inspirations?name=jpg&case_folding=","name":"My images"}; // PinFileService | 

try {
    final response = api.filePinDelete(pinFileService);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilePinApi->filePinDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pinFileService** | [**PinFileService**](PinFileService.md)|  | [optional] 

### Return type

[**FilePinPut200Response**](FilePinPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filePinPut**
> FilePinPut200Response filePinPut(pinFileService)

Pin to sidebar

Pin a [URI](https://docs.cloudreve.org/api/file-uri) to user's sidebar.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFilePinApi();
final PinFileService pinFileService = {"uri":"cloudreve://my/Inspirations?name=jpg&case_folding=","name":"My images"}; // PinFileService | 

try {
    final response = api.filePinPut(pinFileService);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FilePinApi->filePinPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pinFileService** | [**PinFileService**](PinFileService.md)|  | [optional] 

### Return type

[**FilePinPut200Response**](FilePinPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

