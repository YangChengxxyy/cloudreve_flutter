# cloudreve_api_client.model.UserAuthnPostRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**response** | **String** | JSON encoded CredentialCreationResponse with additional fields, see example for details. | [optional] 
**u** | **String** | Name of the passkey. Available placeholders:  - `{os}`: OS name parsed from `ua`; - `{browser}`: Browser name parsed from `ua`; | [optional] 
**ua** | **String** | Client user agent. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


