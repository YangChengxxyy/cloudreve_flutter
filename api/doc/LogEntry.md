# cloudreve_api_client.model.LogEntry

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**category** | **int** | Category of this log. Definition can be found in [`explorer.ts`](https://github.com/cloudreve/frontend/blob/master/src/api/explorer.ts#L20). | [optional] 
**exts** | [**BuiltMap&lt;String, JsonObject&gt;**](JsonObject.md) | Extra key-value props. | [optional] 
**originalName** | **String** | Original name of the file in renaming operation. | [optional] 
**newName** | **String** | New name of the file in renaming operation. | [optional] 
**from** | **String** | URI of the source file. | [optional] 
**to** | **String** | URI of the destination file. | [optional] 
**entityCreateTime** | [**DateTime**](DateTime.md) | Entity creation datetime. | [optional] 
**storagePolicyId** | **String** | ID of the correlated storage policy. | [optional] 
**storagePolicy** | **String** | Name of the correlated storage policy. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


