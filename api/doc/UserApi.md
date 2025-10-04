# cloudreve_api_client.api.UserApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**userAvatarUserIdGet**](UserApi.md#useravataruseridget) | **GET** /user/avatar/{user_id} | Get profile picture
[**userCapacityGet**](UserApi.md#usercapacityget) | **GET** /user/capacity | Get storage capacity
[**userCreditChangesGet**](UserApi.md#usercreditchangesget) | **GET** /user/creditChanges | List credit changes
[**userInfoUserIdGet**](UserApi.md#userinfouseridget) | **GET** /user/info/{user_id} | Get user
[**userPaymentsGet**](UserApi.md#userpaymentsget) | **GET** /user/payments | List payments
[**userPost**](UserApi.md#userpost) | **POST** /user | Sign up
[**userResetPost**](UserApi.md#userresetpost) | **POST** /user/reset | Send reset password email
[**userResetUserIdPatch**](UserApi.md#userresetuseridpatch) | **PATCH** /user/reset/{user_id} | Reset password via temp link
[**userSearchGet**](UserApi.md#usersearchget) | **GET** /user/search | Search user
[**userSharesUserIdGet**](UserApi.md#usersharesuseridget) | **GET** /user/shares/{user-id} | List user&#39;s share links


# **userAvatarUserIdGet**
> JsonObject userAvatarUserIdGet(userId, nocache)

Get profile picture

Get given user's profile pciture, can be used as `src` for `img` tag directly, since it outputs the raw picture instead of standard Cloudreve's JSON response structure.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getUserApi();
final String userId = lpua; // String | ID of the user.
final bool nocache = true; // bool | Force `Cache-Control` header to be `nocache` to disable cache.

try {
    final response = api.userAvatarUserIdGet(userId, nocache);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->userAvatarUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID of the user. | 
 **nocache** | **bool**| Force `Cache-Control` header to be `nocache` to disable cache. | [optional] 

### Return type

[**JsonObject**](JsonObject.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: image/png

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCapacityGet**
> UserCapacityGet200Response userCapacityGet()

Get storage capacity

Get storage capacity summary for authenticated user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getUserApi();

try {
    final response = api.userCapacityGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->userCapacityGet: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**UserCapacityGet200Response**](UserCapacityGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userCreditChangesGet**
> UserCreditChangesGet200Response userCreditChangesGet(pageSize, orderDirection, nextPageToken)

List credit changes



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getUserApi();
final num pageSize = 50; // num | Page size.
final String orderDirection = asc; // String | 
final String nextPageToken = nextPageToken_example; // String | Token for requesting next page. Empty value means requesting the first page.

try {
    final response = api.userCreditChangesGet(pageSize, orderDirection, nextPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->userCreditChangesGet: $e\n');
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

# **userInfoUserIdGet**
> UserInfoUserIdGet200Response userInfoUserIdGet(userId)

Get user

Get user by ID. Authorization is optional, but `email` field will be redacted for anonymous request.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getUserApi();
final String userId = Nru9; // String | User ID.

try {
    final response = api.userInfoUserIdGet(userId);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->userInfoUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| User ID. | 

### Return type

[**UserInfoUserIdGet200Response**](UserInfoUserIdGet200Response.md)

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

final api = CloudreveApiClient().getUserApi();
final num pageSize = 50; // num | Page size.
final String orderDirection = asc; // String | 
final String nextPageToken = ; // String | Token for requesting next page. Empty value means requesting the first page.

try {
    final response = api.userPaymentsGet(pageSize, orderDirection, nextPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->userPaymentsGet: $e\n');
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

# **userPost**
> UserPost200Response userPost(userPostRequest)

Sign up

Create a new account from given email and password. 

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getUserApi();
final UserPostRequest userPostRequest = ; // UserPostRequest | 

try {
    final response = api.userPost(userPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->userPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userPostRequest** | [**UserPostRequest**](UserPostRequest.md)|  | [optional] 

### Return type

[**UserPost200Response**](UserPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userResetPost**
> UserResetPost200Response userResetPost(userResetPostRequest)

Send reset password email

Send a email for an existing account to reset the password.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getUserApi();
final UserResetPostRequest userResetPostRequest = ; // UserResetPostRequest | 

try {
    final response = api.userResetPost(userResetPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->userResetPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userResetPostRequest** | [**UserResetPostRequest**](UserResetPostRequest.md)|  | [optional] 

### Return type

[**UserResetPost200Response**](UserResetPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userResetUserIdPatch**
> UserResetUserIdPatch200Response userResetUserIdPatch(userId, userResetUserIdPatchRequest)

Reset password via temp link

Reset account password using the `secret` included in the temp URl from the Email sent by [Send reset password email](https://cloudrevev4.apifox.cn/send-reset-password-email-289518969e0.md).

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getUserApi();
final String userId = lpua; // String | 
final UserResetUserIdPatchRequest userResetUserIdPatchRequest = ; // UserResetUserIdPatchRequest | 

try {
    final response = api.userResetUserIdPatch(userId, userResetUserIdPatchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->userResetUserIdPatch: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**|  | 
 **userResetUserIdPatchRequest** | [**UserResetUserIdPatchRequest**](UserResetUserIdPatchRequest.md)|  | [optional] 

### Return type

[**UserResetUserIdPatch200Response**](UserResetUserIdPatch200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSearchGet**
> UserSearchGet200Response userSearchGet(keyword)

Search user

Search other users by display name of email.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getUserApi();
final String keyword = Aaron; // String | Search keyword, can be part of display name or email.

try {
    final response = api.userSearchGet(keyword);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->userSearchGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **keyword** | **String**| Search keyword, can be part of display name or email. | 

### Return type

[**UserSearchGet200Response**](UserSearchGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **userSharesUserIdGet**
> UserSharesUserIdGet200Response userSharesUserIdGet(userId, pageSize, orderBy, orderDirection, nextPageToken)

List user's share links

List public share links created by the given user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getUserApi();
final String userId = lpua; // String | ID of the user.
final int pageSize = 10; // int | Page size.
final String orderBy = orderBy_example; // String | Field name for ordering.
final String orderDirection = asc; // String | 
final String nextPageToken = nextPageToken_example; // String | Token for requesting next page. Empty value means requesting the first page.

try {
    final response = api.userSharesUserIdGet(userId, pageSize, orderBy, orderDirection, nextPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling UserApi->userSharesUserIdGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **userId** | **String**| ID of the user. | 
 **pageSize** | **int**| Page size. | 
 **orderBy** | **String**| Field name for ordering. | [optional] [default to 'id']
 **orderDirection** | **String**|  | [optional] [default to 'asc']
 **nextPageToken** | **String**| Token for requesting next page. Empty value means requesting the first page. | [optional] 

### Return type

[**UserSharesUserIdGet200Response**](UserSharesUserIdGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

