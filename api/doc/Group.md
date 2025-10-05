# cloudreve_api_client.model.Group

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the group. | [optional] 
**name** | **String** | Name of the group. | [optional] 
**permission** | **String** | Permission boolset of the group. Refer to [Boolset](https://docs.cloudreve.org/api/boolset) for how to read it. | [optional] 
**directLinkBatchSize** | **int** | The maximum number of files allowed for users to obtain direct links in a single batch, fill in 0 means no batch generation of direct links is allowed. | [optional] 
**trashRetention** | **int** | The retention time in seconds of files in the trash bin, files will be permanently deleted after the expiration time. Changing this setting will not affect files already in the trash bin. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


