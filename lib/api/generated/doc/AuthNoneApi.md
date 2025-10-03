# cloudreve_api_client.api.AuthNoneApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**callbackCosSessionIdKeyGet**](AuthNoneApi.md#callbackcossessionidkeyget) | **GET** /callback/cos/{session_id}/{key} | Complete COS upload
[**callbackObsSessionIdKeyPost**](AuthNoneApi.md#callbackobssessionidkeypost) | **POST** /callback/obs/{session_id}/{key} | Complete OBS upload
[**callbackOnedriveSessionIdKeyPost**](AuthNoneApi.md#callbackonedrivesessionidkeypost) | **POST** /callback/onedrive/{session_id}/{key} | Complete OneDrive upload
[**callbackS3SessionIdKeyGet**](AuthNoneApi.md#callbacks3sessionidkeyget) | **GET** /callback/s3/{session_id}/{key} | Complete S3 upload
[**fileLockDelete**](AuthNoneApi.md#filelockdelete) | **DELETE** /file/lock | Force unlock
[**sessionAuthnPost**](AuthNoneApi.md#sessionauthnpost) | **POST** /session/authn | Finish Passkey sign-in
[**sessionAuthnPut**](AuthNoneApi.md#sessionauthnput) | **PUT** /session/authn | Prepare Passkey sign-in
[**sessionOpenidPost**](AuthNoneApi.md#sessionopenidpost) | **POST** /session/openid | Finish OpenID sign-in
[**sessionPrepareGet**](AuthNoneApi.md#sessionprepareget) | **GET** /session/prepare | Prepare login
[**sessionToken2faPost**](AuthNoneApi.md#sessiontoken2fapost) | **POST** /session/token/2fa | Finish sign-in with 2FA
[**sessionTokenDelete**](AuthNoneApi.md#sessiontokendelete) | **DELETE** /session/token | Sign out
[**sessionTokenPost**](AuthNoneApi.md#sessiontokenpost) | **POST** /session/token | Password sign-in
[**sessionTokenRefreshPost**](AuthNoneApi.md#sessiontokenrefreshpost) | **POST** /session/token/refresh | Refresh Token
[**siteCaptchaGet**](AuthNoneApi.md#sitecaptchaget) | **GET** /site/captcha | Get CAPTCHA
[**sitePingGet**](AuthNoneApi.md#sitepingget) | **GET** /site/ping | Ping
[**userAvatarUserIdGet**](AuthNoneApi.md#useravataruseridget) | **GET** /user/avatar/{user_id} | Get profile picture
[**userPost**](AuthNoneApi.md#userpost) | **POST** /user | Sign up
[**userResetPost**](AuthNoneApi.md#userresetpost) | **POST** /user/reset | Send reset password email
[**userResetUserIdPatch**](AuthNoneApi.md#userresetuseridpatch) | **PATCH** /user/reset/{user_id} | Reset password via temp link
[**userSharesUserIdGet**](AuthNoneApi.md#usersharesuseridget) | **GET** /user/shares/{user-id} | List user&#39;s share links


# **callbackCosSessionIdKeyGet**
> CallbackCosSessionIdKeyGet200Response callbackCosSessionIdKeyGet(sessionId, key)

Complete COS upload

Notify Cloudreve that a file is uploaded into Tencent COS.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();
final String sessionId = 28563a9-d4f5-4e83-ad1d-dff877762d89; // String | ID of the upload session.
final String key = EuVaIPr3hhlQPK6vYJ2lv9wQaMP05H22; // String | Key of the complete upload URL.

try {
    final response = api.callbackCosSessionIdKeyGet(sessionId, key);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->callbackCosSessionIdKeyGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**| ID of the upload session. | 
 **key** | **String**| Key of the complete upload URL. | 

### Return type

[**CallbackCosSessionIdKeyGet200Response**](CallbackCosSessionIdKeyGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callbackObsSessionIdKeyPost**
> CallbackCosSessionIdKeyGet200Response callbackObsSessionIdKeyPost(sessionId, key)

Complete OBS upload

Notify Cloudreve that a file is uploaded into Huawei OBS.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();
final String sessionId = 28563a9-d4f5-4e83-ad1d-dff877762d89; // String | ID of the upload session.
final String key = EuVaIPr3hhlQPK6vYJ2lv9wQaMP05H22; // String | Key of the complete upload URL.

try {
    final response = api.callbackObsSessionIdKeyPost(sessionId, key);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->callbackObsSessionIdKeyPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**| ID of the upload session. | 
 **key** | **String**| Key of the complete upload URL. | 

### Return type

[**CallbackCosSessionIdKeyGet200Response**](CallbackCosSessionIdKeyGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callbackOnedriveSessionIdKeyPost**
> CallbackCosSessionIdKeyGet200Response callbackOnedriveSessionIdKeyPost(sessionId, key)

Complete OneDrive upload

Notify Cloudreve that a file is uploaded into OneDrive.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();
final String sessionId = 28563a9-d4f5-4e83-ad1d-dff877762d89; // String | ID of the upload session.
final String key = EuVaIPr3hhlQPK6vYJ2lv9wQaMP05H22; // String | Key of the complete upload URL.

try {
    final response = api.callbackOnedriveSessionIdKeyPost(sessionId, key);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->callbackOnedriveSessionIdKeyPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**| ID of the upload session. | 
 **key** | **String**| Key of the complete upload URL. | 

### Return type

[**CallbackCosSessionIdKeyGet200Response**](CallbackCosSessionIdKeyGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **callbackS3SessionIdKeyGet**
> CallbackCosSessionIdKeyGet200Response callbackS3SessionIdKeyGet(sessionId, key)

Complete S3 upload

Notify Cloudreve that a file is uploaded into S3.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();
final String sessionId = 28563a9-d4f5-4e83-ad1d-dff877762d89; // String | ID of the upload session.
final String key = EuVaIPr3hhlQPK6vYJ2lv9wQaMP05H22; // String | Key of the complete upload URL.

try {
    final response = api.callbackS3SessionIdKeyGet(sessionId, key);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->callbackS3SessionIdKeyGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**| ID of the upload session. | 
 **key** | **String**| Key of the complete upload URL. | 

### Return type

[**CallbackCosSessionIdKeyGet200Response**](CallbackCosSessionIdKeyGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileLockDelete**
> FileLockDelete200Response fileLockDelete(fileLockDeleteRequest)

Force unlock

If a file is locked by other user/application, file mutation might fail with errors like below:  ```json {     \"code\": 40073,     \"data\": [         {             \"path\": \"cloudreve://my/newdfox.docx\",             \"token\": \"cool-lock0a4b4f68\",             \"owner\": {                 \"owner\": \"bnUn\",                 \"application\": {                     \"type\": \"viewer\",                     \"viewer_id\": \"af01b85b-f57d-46d2-8ad6-1d9b96548e78\"                 }             },             \"type\": 0         }     ],     \"msg\": \"Lock conflict\",     \"error\": \"conflict with locked resource: \\\"cloudreve://my/newdfox.docx\\\"\",     \"correlation_id\": \"64210cda-5bd1-4fe1-9102-77b86f768395\" } ``` The lock token `cool-lock0a4b4f68` in above example is only visable to file owners. This method can be used to force unlock files if the file owners wish to do so.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();
final FileLockDeleteRequest fileLockDeleteRequest = ; // FileLockDeleteRequest | 

try {
    final response = api.fileLockDelete(fileLockDeleteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->fileLockDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **fileLockDeleteRequest** | [**FileLockDeleteRequest**](FileLockDeleteRequest.md)|  | [optional] 

### Return type

[**FileLockDelete200Response**](FileLockDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionAuthnPost**
> SessionAuthnPost200Response sessionAuthnPost(sessionAuthnPostRequest)

Finish Passkey sign-in



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();
final SessionAuthnPostRequest sessionAuthnPostRequest = {"session_id":"1d3fedd6-5542-4345-803c-0e7e757fd7b7","response":"{\"id\":\"hA0kDB_WS1GKXC9-O9Y5yQ\",\"type\":\"public-key\",\"rawId\":\"hA0kDB_WS1GKXC9-O9Y5yQ\",\"response\":{\"attestationObject\":\"\",\"clientDataJSON\":\"eyJ0eXBlIjoid2ViYXV0aG4uZ2V0IiwiY2hhbGxlbmdlIjoiLWV5bWEwMlZRcnZxYkdYcXlxMUI3bV9tdlkzdmNweFpTMXJHNmk4RFlPdyIsIm9yaWdpbiI6Imh0dHA6Ly9sb2NhbGhvc3Q6NTE3MyIsImNyb3NzT3JpZ2luIjpmYWxzZX0\",\"signature\":\"MEUCIAFLyQQb-0ivVQvGroWhl8op0E19gAYq1QeYVw6_eRiKAiEA6r_sBQ3r4IutCTmuTLPd7GrjKBbC17avP5RW0gNeUMk\",\"userHandle\":\"Z3hIZQ\",\"authenticatorData\":\"SZYN5YgOjGh0NBcPZHZgW4_krrmihjLHmVzzuoMdl2MdAAAAAA\"}}"}; // SessionAuthnPostRequest | 

try {
    final response = api.sessionAuthnPost(sessionAuthnPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->sessionAuthnPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionAuthnPostRequest** | [**SessionAuthnPostRequest**](SessionAuthnPostRequest.md)|  | [optional] 

### Return type

[**SessionAuthnPost200Response**](SessionAuthnPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionAuthnPut**
> SessionAuthnPut200Response sessionAuthnPut()

Prepare Passkey sign-in

Prepare a Passkey login session.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();

try {
    final response = api.sessionAuthnPut();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->sessionAuthnPut: $e\n');
}
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**SessionAuthnPut200Response**](SessionAuthnPut200Response.md)

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

final api = CloudreveApiClient().getAuthNoneApi();
final SessionOpenidPostRequest sessionOpenidPostRequest = ; // SessionOpenidPostRequest | 

try {
    final response = api.sessionOpenidPost(sessionOpenidPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->sessionOpenidPost: $e\n');
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

# **sessionPrepareGet**
> SessionPrepareGet200Response sessionPrepareGet(email)

Prepare login

Query if a given is existed, and all possible login method for it. This method is not required to perform a sign in, it just provide more context for frontent UI.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();
final String email = example@cloudreve.org; // String | Account email.

try {
    final response = api.sessionPrepareGet(email);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->sessionPrepareGet: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Account email. | 

### Return type

[**SessionPrepareGet200Response**](SessionPrepareGet200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionToken2faPost**
> SessionToken2faPost200Response sessionToken2faPost(sessionToken2faPostRequest)

Finish sign-in with 2FA

After [Password Login](https://cloudrevev4.apifox.cn/password-sign-in-289490586e0.md), if 2FA is required, this API is used to finish 2FA challenge and obtain a pair of token.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();
final SessionToken2faPostRequest sessionToken2faPostRequest = ; // SessionToken2faPostRequest | 

try {
    final response = api.sessionToken2faPost(sessionToken2faPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->sessionToken2faPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionToken2faPostRequest** | [**SessionToken2faPostRequest**](SessionToken2faPostRequest.md)|  | [optional] 

### Return type

[**SessionToken2faPost200Response**](SessionToken2faPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionTokenDelete**
> SessionTokenDelete200Response sessionTokenDelete(sessionTokenDeleteRequest)

Sign out

Sign out current session and revoke the refresh token. All refresh tokens issued from the root token will be revoked. For SSO sign in sessions, this method also give the redirect URL from SSO side to sign out its session.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();
final SessionTokenDeleteRequest sessionTokenDeleteRequest = ; // SessionTokenDeleteRequest | 

try {
    final response = api.sessionTokenDelete(sessionTokenDeleteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->sessionTokenDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionTokenDeleteRequest** | [**SessionTokenDeleteRequest**](SessionTokenDeleteRequest.md)|  | [optional] 

### Return type

[**SessionTokenDelete200Response**](SessionTokenDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionTokenPost**
> SessionTokenPost200Response sessionTokenPost(sessionTokenPostRequest)

Password sign-in



### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();
final SessionTokenPostRequest sessionTokenPostRequest = ; // SessionTokenPostRequest | 

try {
    final response = api.sessionTokenPost(sessionTokenPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->sessionTokenPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionTokenPostRequest** | [**SessionTokenPostRequest**](SessionTokenPostRequest.md)|  | [optional] 

### Return type

[**SessionTokenPost200Response**](SessionTokenPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **sessionTokenRefreshPost**
> SessionTokenRefreshPost200Response sessionTokenRefreshPost(sessionTokenDeleteRequest)

Refresh Token

Refresh access token with a valid refresh token.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();
final SessionTokenDeleteRequest sessionTokenDeleteRequest = ; // SessionTokenDeleteRequest | 

try {
    final response = api.sessionTokenRefreshPost(sessionTokenDeleteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->sessionTokenRefreshPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionTokenDeleteRequest** | [**SessionTokenDeleteRequest**](SessionTokenDeleteRequest.md)|  | [optional] 

### Return type

[**SessionTokenRefreshPost200Response**](SessionTokenRefreshPost200Response.md)

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

final api = CloudreveApiClient().getAuthNoneApi();

try {
    final response = api.siteCaptchaGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->siteCaptchaGet: $e\n');
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

# **sitePingGet**
> SitePingGet200Response sitePingGet()

Ping

Get the version of the instance.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();

try {
    final response = api.sitePingGet();
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->sitePingGet: $e\n');
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

# **userAvatarUserIdGet**
> JsonObject userAvatarUserIdGet(userId, nocache)

Get profile picture

Get given user's profile pciture, can be used as `src` for `img` tag directly, since it outputs the raw picture instead of standard Cloudreve's JSON response structure.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();
final String userId = lpua; // String | ID of the user.
final bool nocache = true; // bool | Force `Cache-Control` header to be `nocache` to disable cache.

try {
    final response = api.userAvatarUserIdGet(userId, nocache);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->userAvatarUserIdGet: $e\n');
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

# **userPost**
> UserPost200Response userPost(userPostRequest)

Sign up

Create a new account from given email and password. 

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();
final UserPostRequest userPostRequest = ; // UserPostRequest | 

try {
    final response = api.userPost(userPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->userPost: $e\n');
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

final api = CloudreveApiClient().getAuthNoneApi();
final UserResetPostRequest userResetPostRequest = ; // UserResetPostRequest | 

try {
    final response = api.userResetPost(userResetPostRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->userResetPost: $e\n');
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

final api = CloudreveApiClient().getAuthNoneApi();
final String userId = lpua; // String | 
final UserResetUserIdPatchRequest userResetUserIdPatchRequest = ; // UserResetUserIdPatchRequest | 

try {
    final response = api.userResetUserIdPatch(userId, userResetUserIdPatchRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->userResetUserIdPatch: $e\n');
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

# **userSharesUserIdGet**
> UserSharesUserIdGet200Response userSharesUserIdGet(userId, pageSize, orderBy, orderDirection, nextPageToken)

List user's share links

List public share links created by the given user.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getAuthNoneApi();
final String userId = lpua; // String | ID of the user.
final int pageSize = 10; // int | Page size.
final String orderBy = orderBy_example; // String | Field name for ordering.
final String orderDirection = asc; // String | 
final String nextPageToken = nextPageToken_example; // String | Token for requesting next page. Empty value means requesting the first page.

try {
    final response = api.userSharesUserIdGet(userId, pageSize, orderBy, orderDirection, nextPageToken);
    print(response);
} catch on DioException (e) {
    print('Exception when calling AuthNoneApi->userSharesUserIdGet: $e\n');
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

