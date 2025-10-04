# cloudreve_api_client.api.VASPaymentApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**vasPaymentPut**](VASPaymentApi.md#vaspaymentput) | **PUT** /vas/payment | Create a payment
[**vasPaymentStatusIdTradeNoGet**](VASPaymentApi.md#vaspaymentstatusidtradenoget) | **GET** /vas/payment/status/{id}/{trade_no} | Get payment status


# **vasPaymentPut**
> VasPaymentPut200Response vasPaymentPut(vasPaymentPutRequest)

Create a payment

Create a payment for given product.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getVASPaymentApi();
final VasPaymentPutRequest vasPaymentPutRequest = {"product":{"type":3,"sku_id":"ea602ab6-bd1e-40c3-b674-bef18fda7fa9"},"quantity":1,"email":"","provider_id":"8ff2cceb-b4e6-4fa8-a934-04900a2e8699","language":"zh-CN"}; // VasPaymentPutRequest | 

try {
    final response = api.vasPaymentPut(vasPaymentPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VASPaymentApi->vasPaymentPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vasPaymentPutRequest** | [**VasPaymentPutRequest**](VasPaymentPutRequest.md)|  | [optional] 

### Return type

[**VasPaymentPut200Response**](VasPaymentPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vasPaymentStatusIdTradeNoGet**
> VasPaymentStatusIdTradeNoGet200Response vasPaymentStatusIdTradeNoGet(id, tradeNo)

Get payment status



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getVASPaymentApi();
final String id = 1XbTb; // String | ID of the payment.
final String tradeNo = 20250612141601003370839825; // String | Trade number of the payment.

try {
    final response = api.vasPaymentStatusIdTradeNoGet(id, tradeNo);
    print(response);
} catch on DioException (e) {
    print('Exception when calling VASPaymentApi->vasPaymentStatusIdTradeNoGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the payment. | 
 **tradeNo** | **String**| Trade number of the payment. | 

### Return type

[**VasPaymentStatusIdTradeNoGet200Response**](VasPaymentStatusIdTradeNoGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

