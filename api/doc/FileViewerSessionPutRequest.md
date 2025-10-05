# cloudreve_api_client.model.FileViewerSessionPutRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | [URI](https://docs.cloudreve.org/api/file-uri) of the target file. | [optional] 
**version** | **String** | Desired version ID to open. Empty value indicating the current version. | [optional] 
**viewerId** | **String** | ID of the file apps. List of available file apps can be get from `file_viewers` in [Get site settings](./get-site-settings-289489676e0) under `explorer` section. | [optional] 
**preferredAction** | **String** | Preferred action for this session. | [optional] 
**parentUri** | **String** | [URI](https://docs.cloudreve.org/api/file-uri) of the parent folder where the file is located. Usualy it can be calculated from `uri` field. But for single-file symbolic links, `uri` can be a different folder or filesystem from where the symbolic link is located. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


