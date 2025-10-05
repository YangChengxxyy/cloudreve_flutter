# cloudreve_api_client.model.ListResponse

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**files** | [**BuiltList&lt;FileResponse&gt;**](FileResponse.md) | List of files. | [optional] 
**parent** | [**FileResponse**](FileResponse.md) |  | [optional] 
**pagination** | [**PaginationResults**](PaginationResults.md) |  | [optional] 
**props** | [**NavigatorProps**](NavigatorProps.md) |  | [optional] 
**contextHint** | **String** | ContextHint is used to speed up following operations under this listed directory. It persists some intermedia state so that the following request don't need to query database again. One typical case is loading thumbnails under the listed folder, carry context hint in `X-Cr-Context-Hint` header in the thumbnail request can speed up backend database operations. | [optional] 
**recursionLimitReached** | **bool** | Only applies to search list, indicating whether the recursion limit has been reached. Client side should suggest user narrow down search root folder in this case. | [optional] 
**mixedType** | **bool** | If it's `false`, folders is alway placed in front of the file list. If it's `true`, folders might be mixed with files in the list. Cloudreve will try its best not to mix file types, but in search result list, this value is `false`. | [optional] 
**singleFileView** | **bool** | Indicating the frontend UI should use \"Single share file\" UI, since there's only one file in single file share link. | [optional] 
**storagePolicy** | [**StoragePolicy**](StoragePolicy.md) |  | [optional] 
**view** | [**ExplorerView**](ExplorerView.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


