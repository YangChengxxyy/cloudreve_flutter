# cloudreve_api_client.model.UserSettingGet200ResponseData

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**groupExpires** | [**DateTime**](DateTime.md) | Datetime when the cuurent membership expired. Empty value means no active membership. Only presented in Pro edition. | [optional] 
**openId** | [**BuiltList&lt;UserSettingGet200ResponseDataOpenIdInner&gt;**](UserSettingGet200ResponseDataOpenIdInner.md) | List of linked external identity providers. Only presented in Pro edition. | [optional] 
**versionRetentionEnabled** | **bool** | Whether file version retention is enabled. | [optional] 
**versionRetentionExt** | **BuiltList&lt;String&gt;** | List of file extensions enabling file version retention. For null or empty list, all extensions are enabled. | [optional] 
**versionRetentionMax** | **int** | Max preserved version. For `0` or null, all version will be preserved. | [optional] 
**passwordless** | **bool** | Whether this account is passwordless (sign in via 3rd party identity provider). | [optional] 
**twoFaEnabled** | **bool** | Whether 2FA is enabled. | [optional] 
**passkeys** | [**BuiltList&lt;Passkey&gt;**](Passkey.md) | List of registered passkeys. | [optional] 
**loginActivity** | [**BuiltList&lt;UserSettingGet200ResponseDataLoginActivityInner&gt;**](UserSettingGet200ResponseDataLoginActivityInner.md) | List of recent login activities. Only presented in Pro edition. | [optional] 
**storagePacks** | [**BuiltList&lt;UserSettingGet200ResponseDataStoragePacksInner&gt;**](UserSettingGet200ResponseDataStoragePacksInner.md) | List of available extra storage packs | [optional] 
**credit** | **int** | Available points balance. | [optional] 
**disableViewSync** | **bool** | Whether explorer view setting sync is disabled. | [optional] 
**shareLinksInProfile** | **String** | What type of share link is visable in user's profile. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


