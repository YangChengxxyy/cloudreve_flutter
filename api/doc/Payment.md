# cloudreve_api_client.model.Payment

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the payment. | [optional] 
**tradeNo** | **String** | Trade number of the payment. | [optional] 
**name** | **String** | Title of the payment. | [optional] 
**status** | **String** | Status of the payment. | [optional] 
**qyt** | **int** | Quantity of desired product. | [optional] 
**priceUnit** | **int** | Price for one product, in the minimum currency unit, or in points. | [optional] 
**priceId** | **String** | ISO [currency code](https://docs.cloudreve.org/en/payment/official#currency-symbol). Empty value means paying by points. | [optional] 
**priceMark** | **String** | [Currency symbol](https://docs.cloudreve.org/en/payment/official#currency-symbol). Empty value means paying by points. | [optional] 
**priceOneUnit** | **int** | Minimum [currency unit](https://docs.cloudreve.org/en/payment/official#currency-unit). Empty value means paying by points. | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | Datetime when the payment is created. | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) | Datetime when the payment is updated. | [optional] 
**productType** | **int** | Type of the product. | [optional] 
**ticket** | **String** | The access ticket for paid share. Only presented when an anonymous user purshaed a paid share link. It can be used in `X-Cr-Purchase-Ticket` to proof purchasing and access file related APIs. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


