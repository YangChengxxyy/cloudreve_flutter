# cloudreve_api_client.model.WorkflowDownloadPostRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**dst** | **String** | URI of the destination folder. | [optional] 
**srcFile** | **String** | URI of the source torrent file. If this field is empty, `src` is required. | [optional] 
**src** | **BuiltList&lt;String&gt;** | List of URL to be download. Can be HTTP or magnet link, depending on the configured downloader. If this field is empty, `src_file` is required. | [optional] 
**preferredNodeId** | **String** | ID of preferred node to process | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


