//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:cloudreve_api_client/src/api_util.dart';
import 'package:cloudreve_api_client/src/model/file_upload_delete200_response.dart';
import 'package:cloudreve_api_client/src/model/file_upload_delete_request.dart';
import 'package:cloudreve_api_client/src/model/file_upload_put200_response.dart';
import 'package:cloudreve_api_client/src/model/file_upload_put_request.dart';
import 'package:cloudreve_api_client/src/model/file_upload_session_id_index_post200_response.dart';

class FileUploadApi {

  final Dio _dio;

  final Serializers _serializers;

  const FileUploadApi(this._dio, this._serializers);

  /// Delete upload session
  /// Delete an upload session. Client should send this request if:  * User canceled an upload after uplaod session created. * Non-retryable error occurs. * Client need to delete the upload session, but it&#39;s undetermined if the session is already deleted.
  ///
  /// Parameters:
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [fileUploadDeleteRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileUploadDelete200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileUploadDelete200Response>> fileUploadDelete({ 
    String? xCrPurchaseTicket,
    FileUploadDeleteRequest? fileUploadDeleteRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/upload';
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        if (xCrPurchaseTicket != null) r'X-Cr-Purchase-Ticket': xCrPurchaseTicket,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(FileUploadDeleteRequest);
      _bodyData = fileUploadDeleteRequest == null ? null : _serializers.serialize(fileUploadDeleteRequest, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FileUploadDelete200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileUploadDelete200Response),
      ) as FileUploadDelete200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileUploadDelete200Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Create upload session
  /// Create a upload session, which is required before uploading files. After upload session created, client should start uploading using the information included in the upload session. The implementation of upload differs from different storage policy type, you can find Cloudreve&#39;s implentation in [uploader](https://github.com/cloudreve/frontend/tree/master/src/component/Uploader/core/uploader).  A general file uploading includes 3 steps: Create upload session, upload chunks, finish upload request. For small files, please consider using [Update file content](./update-file-content-306591838e0).  ### 1. Create upload session  Use current method to create an upload session.  ### 2. Upload chunks  * For local storage policy, or any other storage policy with &#x60;storage_policy&#x60;.&#x60;relay&#x60; set to &#x60;true&#x60;, use [Upload file chunk](./upload-file-chunk-306698012e0); * For remote storage policy, send chunks to the URL defined in &#x60;upload_urls&#x60;, there should be only one element in &#x60;upload_urls&#x60;. The request is similar to [Upload file chunk](./upload-file-chunk-306698012e0), except:     * Chunk index is passed through query &#x60;chunk&#x60;, e.g. &#x60;http://slavecloudreve.com:5213/api/v4/slave/upload/f1dd2c8c-0c51-475b-a086-b338ae1d8109?chunk&#x3D;2&#x60;     * &#x60;Authorization&#x60; shoud be the value of &#x60;credential&#x60; in upload session, e.g. &#x60;Bearer Cr sBnnQ3rZ-UBr7d8ohKpUFtsQc8OMLuWwn1VhuJtdc5k&#x3D;:1749623351&#x60; * For any other storage policies, please refer to:     * S3: [UploadPart](https://docs.aws.amazon.com/AmazonS3/latest/API/API_UploadPart.html)     * OSS: [UploadPart](https://www.alibabacloud.com/help/en/oss/developer-reference/uploadpart)     * COS: [UploadPart](https://www.tencentcloud.com/document/product/436/7750)     * OBS: [Uploading Parts](https://support.huaweicloud.com/intl/en-us/api-obs/obs_04_0099.html)     * OneDrive: [Upload bytes to the upload session](https://learn.microsoft.com/en-us/onedrive/developer/rest-api/api/driveitem_createuploadsession?view&#x3D;odsp-graph-online#upload-bytes-to-the-upload-session)     * Qiniu: [分块上传数据](https://developer.qiniu.com/kodo/6366/upload-part)     * Upyun: [大文件上传](https://help.upyun.com/knowledge-base/form_api/#e5a4a7e69687e4bbb6e4b88ae4bca0)  ### 3. Finish upload  * For local/remote/upyun storage policy, or any other storage policy with &#x60;storage_policy&#x60;.&#x60;relay&#x60; set to &#x60;true&#x60;, you don&#39;t need to finish upload, it&#39;s automatically finished after last chunk uploaded. * OneDrive: [Complete OneDrive upload](https://cloudrevev4.apifox.cn/complete-onedrive-upload-295173813e0.md) * S3: [CompleteMultipartUpload](https://docs.aws.amazon.com/AmazonS3/latest/API/API_CompleteMultipartUpload.html), then send [Complete S3 upload](https://cloudrevev4.apifox.cn/complete-s3-upload-295177181e0.md) * COS: [Complete Multipart Upload](https://www.tencentcloud.com/ind/document/product/436/7742), then send [Complete COS upload](https://cloudrevev4.apifox.cn/complete-cos-upload-295177009e0.md) * OBS: [Completing a Multipart Upload](https://support.huaweicloud.com/intl/en-us/api-obs/obs_04_0102.html), then send [Complete OBS upload](https://cloudrevev4.apifox.cn/complete-obs-upload-295177687e0.md) * Qiniu: [完成文件上传](https://developer.qiniu.com/kodo/6368/complete-multipart-upload)
  ///
  /// Parameters:
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [fileUploadPutRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileUploadPut200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileUploadPut200Response>> fileUploadPut({ 
    String? xCrPurchaseTicket,
    FileUploadPutRequest? fileUploadPutRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/upload';
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
        if (xCrPurchaseTicket != null) r'X-Cr-Purchase-Ticket': xCrPurchaseTicket,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/json',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      const _type = FullType(FileUploadPutRequest);
      _bodyData = fileUploadPutRequest == null ? null : _serializers.serialize(fileUploadPutRequest, specifiedType: _type);

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FileUploadPut200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileUploadPut200Response),
      ) as FileUploadPut200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileUploadPut200Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

  /// Upload file chunk
  /// Upload one chunk to Cloudreve. This method only applies to local storage policy, or storage policies with upload relay enabled.  * If mulitpart upload is disabled, all file data should be send in one request with &#x60;index&#x60; set to &#x60;0&#x60;; * Chunks must be uploaded in order, starting from index &#x60;0&#x60;; * &#x60;Content-Length&#x60; header is required.
  ///
  /// Parameters:
  /// * [sessionId] - ID of the upload session, can be get from [Create upload session](./create-upload-session-306671611e0)
  /// * [index] - Index of the chunk, starting from `0`.
  /// * [contentLength] - Size of current chunk. Must match with the `chunk_size` in the upload session, except the last chunk.
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [body] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileUploadSessionIdIndexPost200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileUploadSessionIdIndexPost200Response>> fileUploadSessionIdIndexPost({ 
    required String sessionId,
    required int index,
    required int contentLength,
    String? xCrPurchaseTicket,
    MultipartFile? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/upload/{sessionId}/{index}'.replaceAll('{' r'sessionId' '}', encodeQueryParameter(_serializers, sessionId, const FullType(String)).toString()).replaceAll('{' r'index' '}', encodeQueryParameter(_serializers, index, const FullType(int)).toString());
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        r'Content-Length': contentLength,
        if (xCrPurchaseTicket != null) r'X-Cr-Purchase-Ticket': xCrPurchaseTicket,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      contentType: 'application/octet-stream',
      validateStatus: validateStatus,
    );

    dynamic _bodyData;

    try {
      _bodyData = body?.finalize();

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
        ),
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    final _response = await _dio.request<Object>(
      _path,
      data: _bodyData,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FileUploadSessionIdIndexPost200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileUploadSessionIdIndexPost200Response),
      ) as FileUploadSessionIdIndexPost200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileUploadSessionIdIndexPost200Response>(
      data: _responseData,
      headers: _response.headers,
      isRedirect: _response.isRedirect,
      requestOptions: _response.requestOptions,
      redirects: _response.redirects,
      statusCode: _response.statusCode,
      statusMessage: _response.statusMessage,
      extra: _response.extra,
    );
  }

}
