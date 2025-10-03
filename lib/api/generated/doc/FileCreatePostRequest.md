# cloudreve_api_client.model.FileCreatePostRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uri** | **String** | [URI](https://docs.cloudreve.org/api/file-uri) of the file to be created. | 
**type** | **String** | Type of the new file. | 
**metadata** | **BuiltMap&lt;String, String&gt;** | Key-value map of metadata for the new file. | [optional] 
**errOnConflict** | **String** | Define the behavior when there's conflict (object already existed) for given `uri`:  * If `true`, an error will be returned; * If `false`, no mutation is performed, the existing file in `uri` will be returned. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


