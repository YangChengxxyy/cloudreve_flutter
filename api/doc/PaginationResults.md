# cloudreve_api_client.model.PaginationResults

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**page** | **int** | Current page starting from `0`, only applied to offset pagination. | [optional] 
**pageSize** | **int** | Maximum items included in one page. | [optional] 
**totalItems** | **int** | Total count of items, only applied to offset pagination. | [optional] 
**nextToken** | **String** | Token used to request the next page in cursor pagination. | [optional] 
**isCursor** | **bool** | Whether the response is using cursor pagination. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


