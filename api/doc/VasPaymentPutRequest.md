# cloudreve_api_client.model.VasPaymentPutRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**product** | [**VasPaymentPutRequestProduct**](VasPaymentPutRequestProduct.md) |  | [optional] 
**quantity** | **int** | Quantity of the product. For points product, this is the count of purchasing points. | [optional] 
**providerId** | **String** | ID of the payment provider. Empty value means paying using points.  List of available payment providers can be get from `payment` in the response of [Get site settings](./get-site-settings-289489676e0) under `vas` section. | [optional] 
**email** | **String** | Email of the payment owner to send receipt. Only required when `Authorization` header is missing. | [optional] 
**language** | **String** | Language code of the receipt email. Only appliable when `Authorization` header is missing. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


