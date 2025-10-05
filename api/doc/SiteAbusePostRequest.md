# cloudreve_api_client.model.SiteAbusePostRequest

## Load the model package
```dart
import 'package:cloudreve_api_client/api.dart';
```

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**captcha** | **String** | User input value of the graphical CAPTCHA. Required if graphic CAPTCHA enabled for current action. | [optional] 
**ticket** | **String** | Ticket/Token of the CAPTCHA. Required if CAPTCHA is enabled for current action. Can be obtained from [Get CAPTCHA](https://cloudrevev4.apifox.cn/get-captcha-289470260e0.md). | [optional] 
**fileUri** | **String** | If reporting target is a share link, this should be the [URI](https://docs.cloudreve.org/api/file-uri) of the folder in which user submitted the report. | [optional] 
**category** | **num** | Category of the report. | [optional] 
**description** | **String** | Additional descriptions. | [optional] 
**shareId** | **String** | ID of the reporting share link. Must be omitted if `user_id` is set. | [optional] 
**userId** | **String** | ID of the reporting user. Must be omitted if `share_id` is set. | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


