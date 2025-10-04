# cloudreve_api_client.model.WorkflowArchivePostRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**src** | **BuiltList&lt;String&gt;** | Source file URIs. | 
**dst** | **String** | URI of destination archive file. | 
**preferredNodeId** | **String** | Select preferred node to handle this task. Only available in pro edition. Option of nodes can be get from [List available nodes](./list-available-nodes-308315715e0). | [optional] 
**password** | **String** | Optional paassword for `zip` or `7z` archive files. | [optional] 
**fileMask** | **BuiltList&lt;String&gt;** | List of files to select. If presented, only files in this list, or contains any of it as prefix will be extracted. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


