# cloudreve_api_client.api.FileUploadApi

## Load the API package
```dart
import 'package:cloudreve_api_client/api.dart';
```

All URIs are relative to *http://localhost*

Method | HTTP request | Description
------------- | ------------- | -------------
[**fileUploadDelete**](FileUploadApi.md#fileuploaddelete) | **DELETE** /file/upload | Delete upload session
[**fileUploadPut**](FileUploadApi.md#fileuploadput) | **PUT** /file/upload | Create upload session
[**fileUploadSessionIdIndexPost**](FileUploadApi.md#fileuploadsessionidindexpost) | **POST** /file/upload/{sessionId}/{index} | Upload file chunk


# **fileUploadDelete**
> FileUploadDelete200Response fileUploadDelete(xCrPurchaseTicket, fileUploadDeleteRequest)

Delete upload session

Delete an upload session. Client should send this request if:  * User canceled an upload after uplaod session created. * Non-retryable error occurs. * Client need to delete the upload session, but it's undetermined if the session is already deleted.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileUploadApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileUploadDeleteRequest fileUploadDeleteRequest = {"id":"9897ebae-7b73-4169-aabc-6396f470e4bb","uri":"cloudreve://my/Inspirations/file.zip"}; // FileUploadDeleteRequest | 

try {
    final response = api.fileUploadDelete(xCrPurchaseTicket, fileUploadDeleteRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileUploadApi->fileUploadDelete: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **fileUploadDeleteRequest** | [**FileUploadDeleteRequest**](FileUploadDeleteRequest.md)|  | [optional] 

### Return type

[**FileUploadDelete200Response**](FileUploadDelete200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileUploadPut**
> FileUploadPut200Response fileUploadPut(xCrPurchaseTicket, fileUploadPutRequest)

Create upload session

Create a upload session, which is required before uploading files. After upload session created, client should start uploading using the information included in the upload session. The implementation of upload differs from different storage policy type, you can find Cloudreve's implentation in [uploader](https://github.com/cloudreve/frontend/tree/master/src/component/Uploader/core/uploader).  A general file uploading includes 3 steps: Create upload session, upload chunks, finish upload request. For small files, please consider using [Update file content](./update-file-content-306591838e0).  ### 1. Create upload session  Use current method to create an upload session.  ### 2. Upload chunks  * For local storage policy, or any other storage policy with `storage_policy`.`relay` set to `true`, use [Upload file chunk](./upload-file-chunk-306698012e0); * For remote storage policy, send chunks to the URL defined in `upload_urls`, there should be only one element in `upload_urls`. The request is similar to [Upload file chunk](./upload-file-chunk-306698012e0), except:     * Chunk index is passed through query `chunk`, e.g. `http://slavecloudreve.com:5213/api/v4/slave/upload/f1dd2c8c-0c51-475b-a086-b338ae1d8109?chunk=2`     * `Authorization` shoud be the value of `credential` in upload session, e.g. `Bearer Cr sBnnQ3rZ-UBr7d8ohKpUFtsQc8OMLuWwn1VhuJtdc5k=:1749623351` * For any other storage policies, please refer to:     * S3: [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)     * OSS: [UploadPart](https://www.alibabacloud.com/help/en/oss/developer-reference/uploadpart)     * COS: [UploadPart](https://www.tencentcloud.com/document/product/436/7750)     * OBS: [Uploading Parts](https://support.huaweicloud.com/intl/en-us/api-obs/obs_04_0099.html)     * OneDrive: [Upload bytes to the upload session](https://learn.microsoft.com/en-us/onedrive/developer/rest-api/api/driveitem_createuploadsession?view=odsp-graph-online#upload-bytes-to-the-upload-session)     * Qiniu: [分块上传数据](https://developer.qiniu.com/kodo/6366/upload-part)     * Upyun: [大文件上传](https://help.upyun.com/knowledge-base/form_api/#e5a4a7e69687e4bbb6e4b88ae4bca0)  ### 3. Finish upload  * For local/remote/upyun storage policy, or any other storage policy with `storage_policy`.`relay` set to `true`, you don't need to finish upload, it's automatically finished after last chunk uploaded. * OneDrive: [Complete OneDrive upload](https://cloudrevev4.apifox.cn/complete-onedrive-upload-295173813e0.md) * S3: [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html), then send [Complete S3 upload](https://cloudrevev4.apifox.cn/complete-s3-upload-295177181e0.md) * COS: [Complete Multipart Upload](https://www.tencentcloud.com/ind/document/product/436/7742), then send [Complete COS upload](https://cloudrevev4.apifox.cn/complete-cos-upload-295177009e0.md) * OBS: [Completing a Multipart Upload](https://support.huaweicloud.com/intl/en-us/api-obs/obs_04_0102.html), then send [Complete OBS upload](https://cloudrevev4.apifox.cn/complete-obs-upload-295177687e0.md) * Qiniu: [完成文件上传](https://developer.qiniu.com/kodo/6368/complete-multipart-upload)

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileUploadApi();
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final FileUploadPutRequest fileUploadPutRequest = {"uri":"cloudreve://my/Inspirations/archive%20(3).zip","size":65328441,"policy_id":"J7uV","last_modified":1749524701494,"mime_type":"application/zip"}; // FileUploadPutRequest | 

try {
    final response = api.fileUploadPut(xCrPurchaseTicket, fileUploadPutRequest);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileUploadApi->fileUploadPut: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **fileUploadPutRequest** | [**FileUploadPutRequest**](FileUploadPutRequest.md)|  | [optional] 

### Return type

[**FileUploadPut200Response**](FileUploadPut200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **fileUploadSessionIdIndexPost**
> FileUploadSessionIdIndexPost200Response fileUploadSessionIdIndexPost(sessionId, index, contentLength, xCrPurchaseTicket, body)

Upload file chunk

Upload one chunk to Cloudreve. This method only applies to local storage policy, or storage policies with upload relay enabled.  * If mulitpart upload is disabled, all file data should be send in one request with `index` set to `0`; * Chunks must be uploaded in order, starting from index `0`; * `Content-Length` header is required.

### Example
```dart
import 'package:cloudreve_api_client/api.dart';

final api = CloudreveApiClient().getFileUploadApi();
final String sessionId = 9897ebae-7b73-4169-aabc-6396f470e4bb; // String | ID of the upload session, can be get from [Create upload session](./create-upload-session-306671611e0)
final int index = 1; // int | Index of the chunk, starting from `0`.
final int contentLength = 553456; // int | Size of current chunk. Must match with the `chunk_size` in the upload session, except the last chunk.
final String xCrPurchaseTicket = 1f63aa26-edc0-40ce-950a-cb4d4323158e; // String | Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
final MultipartFile body = BINARY_DATA_HERE; // MultipartFile | 

try {
    final response = api.fileUploadSessionIdIndexPost(sessionId, index, contentLength, xCrPurchaseTicket, body);
    print(response);
} catch on DioException (e) {
    print('Exception when calling FileUploadApi->fileUploadSessionIdIndexPost: $e\n');
}
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sessionId** | **String**| ID of the upload session, can be get from [Create upload session](./create-upload-session-306671611e0) | 
 **index** | **int**| Index of the chunk, starting from `0`. | 
 **contentLength** | **int**| Size of current chunk. Must match with the `chunk_size` in the upload session, except the last chunk. | 
 **xCrPurchaseTicket** | **String**| Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link. | [optional] 
 **body** | **MultipartFile**|  | [optional] 

### Return type

[**FileUploadSessionIdIndexPost200Response**](FileUploadSessionIdIndexPost200Response.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/octet-stream
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

