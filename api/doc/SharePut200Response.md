# cloudreve_api_client.model.SharePut200Response

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**data** | **String** | URL of the share link. The formt is `{siteURL}/s/{Share ID}/{Password}`. | [optional] 
**code** | **int** | Response code. `0` - Success. | [optional] [default to 0]
**msg** | **String** | Human readable error message (if any). | [optional] 
**error** | **String** | Internal error message, only visable in debug mode. | [optional] 
**correlationId** | **String** | Correlation ID of the request. Only presented on failed reqeust. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


