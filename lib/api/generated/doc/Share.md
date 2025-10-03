# cloudreve_api_client.model.Share

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the share link. | 
**name** | **String** | Name of the shared file/folder. | [optional] 
**visited** | **int** | Count of views to this share link. | 
**downloaded** | **int** | Count of downloads to this share link. Only appliable to share links with a file(not folder) as source type. | [optional] 
**price** | **int** | Price of this share link, in points. | [optional] 
**unlocked** | **bool** | Whether this share link is accessible to current user. | 
**sourceType** | **int** | Type of the shared source file. | [optional] [default to ShareSourceTypeEnum.number1]
**owner** | [**ShareOwner**](ShareOwner.md) |  | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | Create time. | [optional] 
**expired** | **bool** | Whether this link is already expired. | [optional] 
**url** | **String** | URL of the share link. | [optional] 
**permissionSetting** | [**SharePermissionSetting**](SharePermissionSetting.md) |  | [optional] 
**isPrivate** | **bool** | Only visable to owner. Whether this link is private (with password). | [optional] 
**password** | **String** | Only visable to owner. Password of this share. | [optional] 
**sourceUri** | **String** | Only visable to owner, the [`File URI`](https://docs.cloudreve.org/api/file-uri) of the source file in owner's `my` filesystem. | [optional] 
**shareView** | **bool** | Only visable to owner, whether the explorer view setting is shared with others. | [optional] 
**showReadme** | **bool** | Whether client UI should automatically render and shoe `README.md` file. Only for share folder. | [optional] 
**passwordProtected** | **bool** | Whether this share link is private (password protected). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


