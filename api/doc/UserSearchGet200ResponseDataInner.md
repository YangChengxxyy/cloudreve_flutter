# cloudreve_api_client.model.UserSearchGet200ResponseDataInner

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | ID of the user. | [optional] 
**email** | **String** | Email of the user. For anonymous session, it is empty. | [optional] 
**nickname** | **String** | Display name of the user. | [optional] 
**createdAt** | [**DateTime**](DateTime.md) | Time at which the user is created. For anonymous session, this value is invalid. | [optional] 
**group** | [**UserSearchGet200ResponseDataInnerGroup**](UserSearchGet200ResponseDataInnerGroup.md) |  | [optional] 
**avatar** | **String** | Source type of the profile picture. Empty value indicates no profile picture. | [optional] 
**shareLinksInProfile** | **String** | What type of share link is visable in user's profile. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


