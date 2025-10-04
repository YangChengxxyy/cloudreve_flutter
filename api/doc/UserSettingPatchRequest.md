# cloudreve_api_client.model.UserSettingPatchRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**nick** | **String** | Display name. | [optional] 
**groupExpires** | **bool** | Set this to `true` to manually cancel membership before expiration. Only appliable to Pro edition. | [optional] 
**language** | **String** | Preferred UI and Email language. | [optional] 
**preferredTheme** | **String** | Set preferred theme color. Available options can be get from [Get site settings](./get-site-settings-289489676e0). | [optional] 
**versionRetentionEnabled** | **bool** | Whether file version retention is enabled. | [optional] 
**versionRetentionExt** | **BuiltList&lt;String&gt;** | List of file extensions enabling file version retention. For null or empty list, all extensions are enabled. | [optional] 
**versionRetentionMax** | **int** | Max preserved version. For value `0`, all version will be preserved. | [optional] 
**currentPassword** | **String** | Current user password, required for updating password. | [optional] 
**newPassword** | **String** | New password. If set, `current_password` is required. | [optional] 
**twoFaEnabled** | **bool** | Whether 2FA is enabled. | [optional] 
**twoFaCode** | **String** | Required if `two_fa_enabled` is not `null`.   If `two_fa_enabled` is `true`, this is the 6-digts code for the [new 2FA secret](./prepare-enabling-2fa-308379967e0). If two_fa_enabled` is `false`, this is the 6-digts code for current enabled secret. | [optional] 
**disableViewSync** | **bool** | Whether explorer view setting sync is disabled. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


