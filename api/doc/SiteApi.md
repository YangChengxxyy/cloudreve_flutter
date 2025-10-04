# cloudreve_api_client.api.SiteApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**siteAbusePost**](SiteApi.md#siteabusepost) | **POST** /site/abuse | Report abuse
[**siteCaptchaGet**](SiteApi.md#sitecaptchaget) | **GET** /site/captcha | Get CAPTCHA
[**siteConfigSectionGet**](SiteApi.md#siteconfigsectionget) | **GET** /site/config/{section} | Get site settings
[**sitePingGet**](SiteApi.md#sitepingget) | **GET** /site/ping | Ping


# **siteAbusePost**
> SiteAbusePost200Response siteAbusePost(siteAbusePostRequest)

Report abuse

Report abuse on share links or users.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getSiteApi();
final SiteAbusePostRequest siteAbusePostRequest = ; // SiteAbusePostRequest | 

try {
    final response = api.siteAbusePost(siteAbusePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SiteApi->siteAbusePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **siteAbusePostRequest** | [**SiteAbusePostRequest**](SiteAbusePostRequest.md)|  | [optional] 

### Return type

[**SiteAbusePost200Response**](SiteAbusePost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **siteCaptchaGet**
> SiteCaptchaGet200Response siteCaptchaGet()

Get CAPTCHA

Request a CAPTCHA image and a ticket.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getSiteApi();

try {
    final response = api.siteCaptchaGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling SiteApi->siteCaptchaGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SiteCaptchaGet200Response**](SiteCaptchaGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **siteConfigSectionGet**
> SiteConfigSectionGet200Response siteConfigSectionGet(section)

Get site settings

Get global site settings paritioned by sections. Only settings in your requested section will be included in your response.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getSiteApi();
final String section = basic; // String | Setting section name.

try {
    final response = api.siteConfigSectionGet(section);
    print(response);
} catch on DioException (e) {
    print('Exception when calling SiteApi->siteConfigSectionGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **section** | **String**| Setting section name. | 

### Return type

[**SiteConfigSectionGet200Response**](SiteConfigSectionGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sitePingGet**
> SitePingGet200Response sitePingGet()

Ping

Get the version of the instance.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getSiteApi();

try {
    final response = api.sitePingGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling SiteApi->sitePingGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SitePingGet200Response**](SitePingGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

