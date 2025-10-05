# cloudreve_api_client.model.UserPostRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Account email. | [optional] 
**password** | **String** | Account password. | [optional] 
**language** | **String** | Primary UI and Email language code, should be a registered language in [i18n.ts](https://github.com/cloudreve/frontend/blob/master/src/i18n.ts#L44). | [optional] 
**captcha** | **String** | User input value of the graphical CAPTCHA. Required if graphic CAPTCHA enabled for current action. | [optional] 
**ticket** | **String** | Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for current action. Can be obtained from [Get CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md). | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


