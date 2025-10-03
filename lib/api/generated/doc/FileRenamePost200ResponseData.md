# cloudreve_api_client.model.FileRenamePost200ResponseData

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**type** | **int** | Type of this file. | 
**id** | **String** | ID of this file. | 
**name** | **String** | Name of this file.   It might not be expected display name. For files under trash bin, this field is a non-readable UUID. The expected display name should be retrieved from `metadata` with name `sys:restore_uri`, which can be parsed as a [URI](https://docs.cloudreve.org/api/file-uri). | 
**permission** | **String** | [Boolset](https://docs.cloudreve.org/api/boolset) encoded permissions granted by current authenticated user. For `null`, all permissions are granted. Permission definition can be found at [File Permissions](https://docs.cloudreve.org/api/boolset#file-permission) | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | Datetime when the file is created. | 
**updatedAt** | [**DateTime**](DateTime.md) | Datetime when the file is last updated. | 
**size** | **int** | Size of the file, also the size of current primary version blob. | 
**path** | **String** | [URI](https://docs.cloudreve.org/api/file-uri) of this file. | 
**shared** | **bool** | Whether this file has share links. | [optional] 
**capability** | **String** | [Boolset](https://docs.cloudreve.org/api/boolset) encoded set of capabilities supported. | [optional] 
**owned** | **bool** | Whether this file is owned by current authenticated user. | 
**primaryEntity** | **String** | ID of the primary version blob. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


