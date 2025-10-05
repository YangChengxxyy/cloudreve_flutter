# cloudreve_api_client.model.FolderSummary

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**size** | **int** | Total size of this folder. | [optional] 
**files** | **int** | Count of files under this folder (recursive). | [optional] 
**folders** | **int** | Count of folders under this folder (recursive). | [optional] 
**completed** | **bool** | Whether the size calculation is completed. If there're too many children under this folder, it may exceed the limit, in this case only subset of files are counted. | [optional] 
**calculatedAt** | **String** | When the summary is calculated. It may be a cached result. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


