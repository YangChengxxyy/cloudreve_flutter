# cloudreve_api_client.model.FileMetadataPatchRequestPatchesInner

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**key** | **String** | Metadata key. For patch operation, only a set of selected key prefixs are allowed: `sys:*`,`dav:*`, `customize:*`, `tag:*`. | [optional] 
**value** | **String** | Value of the metadata. | [optional] 
**remove** | **bool** | If set to `true`, metadata with given key will be removed. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


