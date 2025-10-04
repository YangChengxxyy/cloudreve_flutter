# cloudreve_api_client.api.ProApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fileActivitiesGet**](ProApi.md#fileactivitiesget) | **GET** /file/activities | List file activities
[**filePermissionDelete**](ProApi.md#filepermissiondelete) | **DELETE** /file/permission | Delete permission setting
[**filePermissionPost**](ProApi.md#filepermissionpost) | **POST** /file/permission | Set permission
[**groupListGet**](ProApi.md#grouplistget) | **GET** /group/list | List groups
[**sessionOpenidPost**](ProApi.md#sessionopenidpost) | **POST** /session/openid | Finish OpenID sign-in
[**sessionOpenidProviderIdDelete**](ProApi.md#sessionopenidprovideriddelete) | **DELETE** /session/openid/{provider_id} | Unlink OpenID
[**sessionOpenidPut**](ProApi.md#sessionopenidput) | **PUT** /session/openid | Prepare OpenID sign-in
[**siteAbusePost**](ProApi.md#siteabusepost) | **POST** /site/abuse | Report abuse
[**userCreditChangesGet**](ProApi.md#usercreditchangesget) | **GET** /user/creditChanges | List credit changes
[**userPaymentsGet**](ProApi.md#userpaymentsget) | **GET** /user/payments | List payments
[**userSettingNodesGet**](ProApi.md#usersettingnodesget) | **GET** /user/setting/nodes | List available nodes
[**userSettingPoliciesGet**](ProApi.md#usersettingpoliciesget) | **GET** /user/setting/policies | List available storage policies
[**vasGiftcodeCodeGet**](ProApi.md#vasgiftcodecodeget) | **GET** /vas/giftcode/{code} | Check gift code
[**vasGiftcodeCodeRedeemPost**](ProApi.md#vasgiftcodecoderedeempost) | **POST** /vas/giftcode/{code}/redeem | Redeem gift code
[**vasPaymentPut**](ProApi.md#vaspaymentput) | **PUT** /vas/payment | Create a payment
[**vasPaymentStatusIdTradeNoGet**](ProApi.md#vaspaymentstatusidtradenoget) | **GET** /vas/payment/status/{id}/{trade_no} | Get payment status
[**workflowReloactePost**](ProApi.md#workflowreloactepost) | **POST** /workflow/reloacte | Relocate storage policy


# **fileActivitiesGet**
> FileActivitiesGet200Response fileActivitiesGet(uri, pageSize, orderDirection, nextPageToken, filter, xCrPurchaseTicket)

List file activities



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();
final String uri = cloudreve://my/Luke's%20AMA; // String | [URI](https://docs.cloudreve.org/api/file-uri) of the file.
final int pageSize = 50; // int | Page size.
final String orderDirection = asc; // String | Order direction.
final String nextPageToken = eyJpZCI6IjFibFdJTyJ9; // String | Token for requesting next page. Empty value means requesting the first page.
final String filter = filter_example; // String | Filter name. Use empty value to list all activities.
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.

try {
    final response = api.fileActivitiesGet(uri, pageSize, orderDirection, nextPageToken, filter, xCrPurchaseTicket);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->fileActivitiesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **uri** | **String**| [URI](https://docs.cloudreve.org/api/file-uri) of the file. | 
 **pageSize** | **int**| Page size. | 
 **orderDirection** | **String**| Order direction. | [optional] [default to 'asc']
 **nextPageToken** | **String**| Token for requesting next page. Empty value means requesting the first page. | [optional] 
 **filter** | **String**| Filter name. Use empty value to list all activities. | [optional] 
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 

### Return type

[**FileActivitiesGet200Response**](FileActivitiesGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filePermissionDelete**
> FilePermissionDelete200Response filePermissionDelete(filePermissionDeleteRequest)

Delete permission setting

Clear existing permission setting of target files, whose permission settings will be inherited from parent after this action. Only owner of the file or administrators can perform this action.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();
final FilePermissionDeleteRequest filePermissionDeleteRequest = {"uris":["cloudreve://my/main.c"]}; // FilePermissionDeleteRequest | 

try {
    final response = api.filePermissionDelete(filePermissionDeleteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->filePermissionDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filePermissionDeleteRequest** | [**FilePermissionDeleteRequest**](FilePermissionDeleteRequest.md)|  | [optional] 

### Return type

[**FilePermissionDelete200Response**](FilePermissionDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **filePermissionPost**
> FilePermissionPost200Response filePermissionPost(filePermissionPostRequest)

Set permission

Set file permissions. Only owner of the file or administrators can perform this action.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();
final FilePermissionPostRequest filePermissionPostRequest = {"uris":["cloudreve://my/newfile.docx","cloudreve://my/main.c"],"setting":{"user_explicit":{"bnUn":"Dw=="},"same_group":"Dw==","anonymous":"Aw==","everyone":"Cw=="}}; // FilePermissionPostRequest | 

try {
    final response = api.filePermissionPost(filePermissionPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->filePermissionPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **filePermissionPostRequest** | [**FilePermissionPostRequest**](FilePermissionPostRequest.md)|  | [optional] 

### Return type

[**FilePermissionPost200Response**](FilePermissionPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **groupListGet**
> GroupListGet200Response groupListGet()

List groups

List all user groups.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();

try {
    final response = api.groupListGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->groupListGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GroupListGet200Response**](GroupListGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionOpenidPost**
> SessionOpenidPost200Response sessionOpenidPost(sessionOpenidPostRequest)

Finish OpenID sign-in

After user sign in via the URL obtained from [Prepare OpenID Sign-in](https://cloudrevev4.apifox.cn/prepare-openid-sign-in-289505034e0.md), request this to notify Cloudreve the result.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();
final SessionOpenidPostRequest sessionOpenidPostRequest = ; // SessionOpenidPostRequest | 

try {
    final response = api.sessionOpenidPost(sessionOpenidPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->sessionOpenidPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionOpenidPostRequest** | [**SessionOpenidPostRequest**](SessionOpenidPostRequest.md)|  | [optional] 

### Return type

[**SessionOpenidPost200Response**](SessionOpenidPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionOpenidProviderIdDelete**
> SessionOpenidProviderIdDelete200Response sessionOpenidProviderIdDelete(providerId)

Unlink OpenID

Unlink an OpenID account from a Cloudreve account.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();
final int providerId = 0; // int | 

try {
    final response = api.sessionOpenidProviderIdDelete(providerId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->sessionOpenidProviderIdDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **providerId** | **int**|  | 

### Return type

[**SessionOpenidProviderIdDelete200Response**](SessionOpenidProviderIdDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionOpenidPut**
> SessionOpenidPut200Response sessionOpenidPut(sessionOpenidPutRequest)

Prepare OpenID sign-in

Preapre a social connector sign in, can be used to sign in Cloudreve account, or link existing account with a social connector account. * For signing in with social connector, authorization is not required. * For account linking, authorization is required for a valid logged-in user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();
final SessionOpenidPutRequest sessionOpenidPutRequest = ; // SessionOpenidPutRequest | 

try {
    final response = api.sessionOpenidPut(sessionOpenidPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->sessionOpenidPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionOpenidPutRequest** | [**SessionOpenidPutRequest**](SessionOpenidPutRequest.md)|  | [optional] 

### Return type

[**SessionOpenidPut200Response**](SessionOpenidPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **siteAbusePost**
> SiteAbusePost200Response siteAbusePost(siteAbusePostRequest)

Report abuse

Report abuse on share links or users.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();
final SiteAbusePostRequest siteAbusePostRequest = ; // SiteAbusePostRequest | 

try {
    final response = api.siteAbusePost(siteAbusePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->siteAbusePost: $e\n');
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

# **userCreditChangesGet**
> UserCreditChangesGet200Response userCreditChangesGet(pageSize, orderDirection, nextPageToken)

List credit changes



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();
final num pageSize = 50; // num | Page size.
final String orderDirection = asc; // String | 
final String nextPageToken = nextPageToken_example; // String | Token for requesting next page. Empty value means requesting the first page.

try {
    final response = api.userCreditChangesGet(pageSize, orderDirection, nextPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->userCreditChangesGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **num**| Page size. | 
 **orderDirection** | **String**|  | [optional] [default to 'asc']
 **nextPageToken** | **String**| Token for requesting next page. Empty value means requesting the first page. | [optional] 

### Return type

[**UserCreditChangesGet200Response**](UserCreditChangesGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userPaymentsGet**
> UserPaymentsGet200Response userPaymentsGet(pageSize, orderDirection, nextPageToken)

List payments



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();
final num pageSize = 50; // num | Page size.
final String orderDirection = asc; // String | 
final String nextPageToken = ; // String | Token for requesting next page. Empty value means requesting the first page.

try {
    final response = api.userPaymentsGet(pageSize, orderDirection, nextPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->userPaymentsGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageSize** | **num**| Page size. | 
 **orderDirection** | **String**|  | [optional] [default to 'asc']
 **nextPageToken** | **String**| Token for requesting next page. Empty value means requesting the first page. | [optional] 

### Return type

[**UserPaymentsGet200Response**](UserPaymentsGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingNodesGet**
> UserSettingNodesGet200Response userSettingNodesGet()

List available nodes

List available nodes assigned to authenticated user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();

try {
    final response = api.userSettingNodesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->userSettingNodesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserSettingNodesGet200Response**](UserSettingNodesGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSettingPoliciesGet**
> UserSettingPoliciesGet200Response userSettingPoliciesGet()

List available storage policies

List available storage policies for authenticated user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();

try {
    final response = api.userSettingPoliciesGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->userSettingPoliciesGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserSettingPoliciesGet200Response**](UserSettingPoliciesGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vasGiftcodeCodeGet**
> VasGiftcodeCodeGet200Response vasGiftcodeCodeGet(code)

Check gift code

Get details of given gift code, but it does not process redemption.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();
final String code = d6695b49-1eca-4975-813f-0dafd90c1705; // String | Gift code.

try {
    final response = api.vasGiftcodeCodeGet(code);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->vasGiftcodeCodeGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Gift code. | 

### Return type

[**VasGiftcodeCodeGet200Response**](VasGiftcodeCodeGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vasGiftcodeCodeRedeemPost**
> VasGiftcodeCodeRedeemPost200Response vasGiftcodeCodeRedeemPost(code)

Redeem gift code



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();
final String code = d6695b49-1eca-4975-813f-0dafd90c1705; // String | Gift code.

try {
    final response = api.vasGiftcodeCodeRedeemPost(code);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->vasGiftcodeCodeRedeemPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **code** | **String**| Gift code. | 

### Return type

[**VasGiftcodeCodeRedeemPost200Response**](VasGiftcodeCodeRedeemPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vasPaymentPut**
> VasPaymentPut200Response vasPaymentPut(vasPaymentPutRequest)

Create a payment

Create a payment for given product.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();
final VasPaymentPutRequest vasPaymentPutRequest = {"product":{"type":3,"sku_id":"ea602ab6-bd1e-40c3-b674-bef18fda7fa9"},"quantity":1,"email":"","provider_id":"8ff2cceb-b4e6-4fa8-a934-04900a2e8699","language":"zh-CN"}; // VasPaymentPutRequest | 

try {
    final response = api.vasPaymentPut(vasPaymentPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->vasPaymentPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **vasPaymentPutRequest** | [**VasPaymentPutRequest**](VasPaymentPutRequest.md)|  | [optional] 

### Return type

[**VasPaymentPut200Response**](VasPaymentPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **vasPaymentStatusIdTradeNoGet**
> VasPaymentStatusIdTradeNoGet200Response vasPaymentStatusIdTradeNoGet(id, tradeNo)

Get payment status



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();
final String id = 1XbTb; // String | ID of the payment.
final String tradeNo = 20250612141601003370839825; // String | Trade number of the payment.

try {
    final response = api.vasPaymentStatusIdTradeNoGet(id, tradeNo);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->vasPaymentStatusIdTradeNoGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **id** | **String**| ID of the payment. | 
 **tradeNo** | **String**| Trade number of the payment. | 

### Return type

[**VasPaymentStatusIdTradeNoGet200Response**](VasPaymentStatusIdTradeNoGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **workflowReloactePost**
> WorkflowReloactePost200Response workflowReloactePost(workflowReloactePostRequest)

Relocate storage policy

Create a task to relocate storage policy for given files.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getProApi();
final WorkflowReloactePostRequest workflowReloactePostRequest = {"src":["cloudreve://my/1/test_folder","cloudreve://my/1/cloudreve.exe"],"dst_policy_id":"J7uV"}; // WorkflowReloactePostRequest | 

try {
    final response = api.workflowReloactePost(workflowReloactePostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling ProApi->workflowReloactePost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **workflowReloactePostRequest** | [**WorkflowReloactePostRequest**](WorkflowReloactePostRequest.md)|  | [optional] 

### Return type

[**WorkflowReloactePost200Response**](WorkflowReloactePost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

