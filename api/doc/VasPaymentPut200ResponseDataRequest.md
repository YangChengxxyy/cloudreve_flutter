# cloudreve_api_client.model.VasPaymentPut200ResponseDataRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**paymentNeeded** | **bool** | Whether following payment is needed. For payments using points, this is `false`. | [optional] 
**url** | **String** | URL to the payment page. | [optional] 
**qrCodePreferred** | **bool** | If `true`, a QR Code is preferred to be shown to users. The content of the QR Code is `url`. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


