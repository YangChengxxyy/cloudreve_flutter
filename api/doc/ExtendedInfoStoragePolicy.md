# cloudreve_api_client.model.ExtendedInfoStoragePolicy

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the storage policy. | [optional] 
**name** | **String** | Display name of the storage policy. | [optional] 
**allowedSuffix** | **BuiltList&lt;String&gt;** | List of file extensions allowed in this storage policy. Empty list means no limit on allowed extensions. | [optional] 
**deniedSuffix** | **BuiltList&lt;String&gt;** | List of file extensions denied in this storage policy. Empty list means no limit on denied extensions. | [optional] 
**type** | **String** | Storage provider type. | [optional] 
**allowedNameRegexp** | **String** | If not empty, file name must match this regex. | [optional] 
**deniedNameRegexp** | **String** | If not empty, file name must NOT match this regex. | [optional] 
**maxSize** | **num** | Max allowed size of a single file. `0` means no limit. | [optional] 
**relay** | **bool** | Indicates whether upload needs to be proxyed by Cloudreve. If `true`, the client should treat it as a `local` storage policy to process uploading. | [optional] 
**weight** | **num** | Load balance weight of this storage policy. Only presented if this storage policy is child of a load balance storage policy. | [optional] 
**children** | [**BuiltList&lt;StoragePolicy&gt;**](StoragePolicy.md) | Child storage policies, only presented if policy type equals `load_balance`. | [optional] 
**chunkConcurrency** | **int** | Number of threads to use for concurrent chunk uploading. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


