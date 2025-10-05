# cloudreve_api_client.model.ExtendedInfo

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**storagePolicy** | [**ExtendedInfoStoragePolicy**](ExtendedInfoStoragePolicy.md) |  | [optional] 
**storagePolicyInherited** | **bool** | Only applies to folders. Indicating whether this storage policy setting is inherited from parent folders. | [optional] 
**storageUsed** | **int** | Storage used by this file, equals to sum of size for all referred blobs. | [optional] 
**shares** | [**BuiltList&lt;Share&gt;**](Share.md) | List of share links for this file. | [optional] 
**entities** | [**BuiltList&lt;Entity&gt;**](Entity.md) |  | [optional] 
**permissions** | [**PermissionSetting**](PermissionSetting.md) |  | [optional] 
**directLinks** | [**BuiltList&lt;ExtendedInfoDirectLinksInner&gt;**](ExtendedInfoDirectLinksInner.md) | List of redirected direct links. Only visable to file owners or administrators. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


