# cloudreve_api_client.model.FileDeleteRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**uris** | **BuiltList&lt;String&gt;** | List of [URI](https://docs.cloudreve.org/api/file-uri) of the target files. | 
**unlink** | **bool** | Whether to keep physical files while recycling file blobs. This option only works if the user group have \"Advanced delete option` enabed. | [optional] 
**skipSoftDelete** | **bool** | Whether to skip trash bin, directly delete those files. This option only works file file owner or administrators. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


