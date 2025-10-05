# cloudreve_api_client.model.SitePingGet200ResponseData

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**webauthnEnabled** | **bool** | Whether this account can be logged in with Passkeys. | [optional] 
**passwordEnabled** | **bool** | Whether this account can be logged in with password. | [optional] 
**qqEnabled** | **bool** | Whether this account can be logged in with Tencent QQ. | [optional] 
**ssoEnabled** | **bool** | Whether this account can be logged in with Logto. | [optional] 
**publicKey** | [**JsonObject**](.md) | A [PublicKeyCredentialCreationOptions](https://www.w3.org/TR/webauthn/#dictionary-makecredentialoptions) object that can be used to invoke passkey registration from browser. | [optional] 
**sessionId** | **String** | ID of the login session. | [optional] 
**options** | [**SitePingGet200ResponseDataOptions**](SitePingGet200ResponseDataOptions.md) |  | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


