# cloudreve_api_client.model.FileMovePostRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uris** | **BuiltList&lt;String&gt;** | List of [URI](https://docs.cloudreve.org/api/file-uri) of the files to be moved or copied. | [optional] 
**dst** | **String** | [URI](https://docs.cloudreve.org/api/file-uri) of thr destination folder. | [optional] 
**copy** | **bool** | Whether this is a copy operation. If set to `false` or `null`, move operation is performed. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


