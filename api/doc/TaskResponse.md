# cloudreve_api_client.model.TaskResponse

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime.md) |  | [optional] 
**updatedAt** | [**DateTime**](DateTime.md) |  | [optional] 
**id** | **String** | ID of the tasks. | [optional] 
**status** | **String** | Status of the task | [optional] 
**type** | **String** |  | [optional] 
**summary** | [**TaskResponseSummary**](TaskResponseSummary.md) |  | [optional] 
**duration** | **int** | Tasl executed duration in milliseconds. | [optional] 
**resumeTime** | **int** | Time stamp of the next expected resume time for suspended task. | [optional] 
**error** | **String** | Error message (if any). | [optional] 
**errorHistory** | **BuiltList&lt;String&gt;** | List of error messages in previous retries (if any). | [optional] 
**retryCount** | **int** | Retry count. | [optional] 
**node** | [**Node**](Node.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


