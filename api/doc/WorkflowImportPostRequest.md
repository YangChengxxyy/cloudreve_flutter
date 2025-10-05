# cloudreve_api_client.model.WorkflowImportPostRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**src** | **String** | Path of the folder to be imported in external storage provider. | [optional] 
**dst** | **String** | Path of the folder to store imported files in user's `my` filesystem. | [optional] 
**extractMediaMeta** | **bool** | Whether to extract media metadata right after a file is imported. | [optional] 
**userId** | **String** | ID of the user that files are imported to. | [optional] 
**recursive** | **bool** | Whether to recursively import child folders. | [optional] 
**policyId** | **int** | ID of the storage policy which have to be imported files. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


