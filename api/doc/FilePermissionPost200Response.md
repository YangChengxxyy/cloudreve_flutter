# cloudreve_api_client.model.FilePermissionPost200Response

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**code** | **int** | Response code. `0` - Success. | [default to 0]
**msg** | **String** | Human readable error message (if any). | [optional] 
**error** | **String** | Internal error message, only visable in debug mode. | [optional] 
**aggregatedError** | [**BuiltMap&lt;String, Response&gt;**](Response.md) | Map of multiple error in batch request. The key is the failed resource ID, it could be a file URI or a resource ID, the value is a `Response`. | [optional] 
**correlationId** | **String** | Correlation ID of the request. Only presented on failed reqeust. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


