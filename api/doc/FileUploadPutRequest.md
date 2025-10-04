# cloudreve_api_client.model.FileUploadPutRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | [URI](https://docs.cloudreve.org/api/file-uri) of the target file. | 
**size** | **int** | Size of the file. | 
**lastModified** | **int** | Optional Unix milliseconds timestamp of when the file is last modified. | [optional] 
**mimeType** | **String** | Optional mime type of the file. If not set, will try to guess from file extension name. | [optional] 
**policyId** | **String** | ID of the storage policy to use. | 
**metadata** | **BuiltMap&lt;String, String&gt;** | Optional key-value of file metadata. | [optional] 
**entityType** | **String** | Optional blob type.  By default (omit this field), request will fail if file name conflict with exsting file. If set to `version`, exsiting file will be overwritten. If set to `live_photo`, the file specified in `uri` must be an existing file. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


