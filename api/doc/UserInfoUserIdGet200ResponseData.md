# cloudreve_api_client.model.UserInfoUserIdGet200ResponseData

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the user. | 
**email** | **String** | Email of the user. For anonymous session, it is empty. | [optional] 
**nickname** | **String** | Display name of the user. | 
**createdAt** | [**DateTime**](DateTime.md) | Time at which the user is created. For anonymous session, this value is invalid. | 
**group** | [**UserInfoUserIdGet200ResponseDataGroup**](UserInfoUserIdGet200ResponseDataGroup.md) |  | 
**avatar** | **String** | Source type of the profile picture. Empty value indicates no profile picture. | 
**shareLinksInProfile** | **String** | What type of share link is visable in user's profile. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


