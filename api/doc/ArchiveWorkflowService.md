# cloudreve_api_client.model.ArchiveWorkflowService

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**src** | **BuiltList&lt;String&gt;** | Source file URIs. | 
**dst** | **String** | URI of destination folder to store output files. | 
**preferredNodeId** | **String** | Select preferred node to handle this task. Only available in pro edition. Option of nodes can be get from [List available nodes](./list-available-nodes-308315715e0). | [optional] 
**encoding** | **String** | Encoding charset of the source archive file. By default it's `utf8`. | [optional] 
**password** | **String** | Optional paassword for `zip` or `7z` archive files. | [optional] 
**fileMask** | **BuiltList&lt;String&gt;** | List of files to select. If presented, only files in this list, or contains any of it as prefix will be extracted. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


