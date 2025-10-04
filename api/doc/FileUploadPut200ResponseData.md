# cloudreve_api_client.model.FileUploadPut200ResponseData

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**sessionId** | **String** | ID of the upload session. Might be used in following upload requests. | 
**uploadId** | **String** | ID of the multipart upload request. Only used by some storage policy.  | [optional] 
**chunkSize** | **int** | Size of a chunk in multipart uplaod. `0` means multipart upload is disabled. | 
**expires** | **int** | Unix timestamp of the expiration date for this uplaod session. Client must finish the uploading before this time. | 
**uploadUrls** | **BuiltList&lt;String&gt;** | List of URLs to upload each chunk. Some storage policy use only one URL for all chunks, in this case only one URL is included in the list. | [optional] 
**credential** | **String** | Some storage policy (qiniu, upyun, remote) requires addition credential to upload. | [optional] 
**completeURL** | **String** | URL to finish multipart upload. Used by cos, oss, s3 and obs. | [optional] 
**storagePolicy** | [**StoragePolicy**](StoragePolicy.md) |  | 
**mimeType** | **String** | Desired value of content-type in uplaod requests. Only used by qiniu and upyun. | [optional] 
**uploadPolicy** | **String** | Upyun upload policy. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


