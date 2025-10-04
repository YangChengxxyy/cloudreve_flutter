# cloudreve_api_client.model.ShareCreateService

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**permissions** | [**PermissionSetting**](PermissionSetting.md) |  | 
**uri** | **String** | [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or folder. | 
**isPrivate** | **bool** | Whether this share link is protected with addition password and hidden in user's profile. | [optional] 
**shareView** | **bool** | Whether view settings within the shared folder is exposed to other user. If `uri` points to a file, this field is appliable. | [optional] 
**expire** | **int** | Number of seconds after which the link will be expired. Empty value means permanent link. | [optional] 
**price** | **int** | Only in Pro edition. Set the price (in points) to pay for this link. | [optional] 
**password** | **String** | Set custom share link password if `is_private` is `true`. | [optional] 
**showReadme** | **bool** | Whether client UI should automatically render and shoe `README.md` file. Only for share folder. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


