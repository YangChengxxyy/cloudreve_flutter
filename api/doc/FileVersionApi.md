# cloudreve_api_client.api.FileVersionApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fileVersionCurrentPost**](FileVersionApi.md#fileversioncurrentpost) | **POST** /file/version/current | Set file version
[**fileVersionDelete**](FileVersionApi.md#fileversiondelete) | **DELETE** /file/version | Delete file version


# **fileVersionCurrentPost**
> FileVersionCurrentPost200Response fileVersionCurrentPost(xCrPurchaseTicket, fileVersionCurrentPostRequest)

Set file version

Set the current version of the file.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileVersionApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileVersionCurrentPostRequest fileVersionCurrentPostRequest = {"uri":"cloudreve://my/copy.md","version":"9ewQi2"}; // FileVersionCurrentPostRequest | 

try {
    final response = api.fileVersionCurrentPost(xCrPurchaseTicket, fileVersionCurrentPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileVersionApi->fileVersionCurrentPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **fileVersionCurrentPostRequest** | [**FileVersionCurrentPostRequest**](FileVersionCurrentPostRequest.md)|  | [optional] 

### Return type

[**FileVersionCurrentPost200Response**](FileVersionCurrentPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileVersionDelete**
> FileVersionDelete200Response fileVersionDelete(uri, version, xCrPurchaseTicketCommaStringCommaFalseComma1f63aa26Edc040ce950aCb4d4323158eCommaCanBeUsedToAuthenticateToPaidShareLinksWithAAnonymousIdentityPeriodTheTicketValueCanBeObtainedAfterAnAnonymousUserPurchaseAPaidShareLink)

Delete file version

Delete a version from a file's version history.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileVersionApi();
final String uri = cloudreve://my/copy.md; // String | [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
final String version = 9ewQi2; // String | ID of the version to set as \"current version\". The version blob must be linked to current file. List of available versions can be retrieved via [Get file info](./get-file-info-306769225e0). The version cannot be the currrent version of the file.
final String xCrPurchaseTicketCommaStringCommaFalseComma1f63aa26Edc040ce950aCb4d4323158eCommaCanBeUsedToAuthenticateToPaidShareLinksWithAAnonymousIdentityPeriodTheTicketValueCanBeObtainedAfterAnAnonymousUserPurchaseAPaidShareLink = ; // String | 

try {
    final response = api.fileVersionDelete(uri, version, xCrPurchaseTicketCommaStringCommaFalseComma1f63aa26Edc040ce950aCb4d4323158eCommaCanBeUsedToAuthenticateToPaidShareLinksWithAAnonymousIdentityPeriodTheTicketValueCanBeObtainedAfterAnAnonymousUserPurchaseAPaidShareLink);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileVersionApi->fileVersionDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| [URI](https://docs.cloudreve.org/api/file-uri) of the target file. | [optional] 
 **version** | **String**| ID of the version to set as \"current version\". The version blob must be linked to current file. List of available versions can be retrieved via [Get file info](./get-file-info-306769225e0). The version cannot be the currrent version of the file. | [optional] 
 **xCrPurchaseTicketCommaStringCommaFalseComma1f63aa26Edc040ce950aCb4d4323158eCommaCanBeUsedToAuthenticateToPaidShareLinksWithAAnonymousIdentityPeriodTheTicketValueCanBeObtainedAfterAnAnonymousUserPurchaseAPaidShareLink** | **String**|  | [optional] 

### Return type

[**FileVersionDelete200Response**](FileVersionDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

