# cloudreve_api_client.model.UserSettingGet200ResponseDataLoginActivityInner

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**createdAt** | [**DateTime**](DateTime.md) | When the login activity initiated. | 
**ip** | **String** | IP address of the client. | 
**browser** | **String** | Name of the browser, parsed from user agent. | 
**device** | **String** | Name of the device, parsed from user agent. | 
**os** | **String** | Name of the operating system, parsed from user agent. | 
**loginWith** | **String** | Method for sign in. Empty string means sign in using password. | 
**openIdProvider** | **int** | Type of the 3rd party identity provider. Only valid if `login_with` is `openid`. | 
**success** | **bool** | Whether this sign in succeed. | 
**webdav** | **bool** | Whether this request is from WebDAV client. Currently we only record failed sign in activities for WebDAV requests. | 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


