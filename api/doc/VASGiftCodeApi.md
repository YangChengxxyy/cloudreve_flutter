# cloudreve_api_client.api.VASGiftCodeApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vasGiftcodeCodeGet**](VASGiftCodeApi.md#vasgiftcodecodeget) | **GET** /vas/giftcode/{code} | Check gift code
[**vasGiftcodeCodeRedeemPost**](VASGiftCodeApi.md#vasgiftcodecoderedeempost) | **POST** /vas/giftcode/{code}/redeem | Redeem gift code


# **vasGiftcodeCodeGet**
> VasGiftcodeCodeGet200Response vasGiftcodeCodeGet(code)

Check gift code

Get details of given gift code, but it does not process redemption.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getVASGiftCodeApi();
final String code = d6695b49-1eca-4975-813f-0dafd90c1705; // String | Gift code.

try {
    final response = api.vasGiftcodeCodeGet(code);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VASGiftCodeApi->vasGiftcodeCodeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Gift code. | 

### Return type

[**VasGiftcodeCodeGet200Response**](VasGiftcodeCodeGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vasGiftcodeCodeRedeemPost**
> VasGiftcodeCodeRedeemPost200Response vasGiftcodeCodeRedeemPost(code)

Redeem gift code



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getVASGiftCodeApi();
final String code = d6695b49-1eca-4975-813f-0dafd90c1705; // String | Gift code.

try {
    final response = api.vasGiftcodeCodeRedeemPost(code);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VASGiftCodeApi->vasGiftcodeCodeRedeemPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Gift code. | 

### Return type

[**VasGiftcodeCodeRedeemPost200Response**](VasGiftcodeCodeRedeemPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

