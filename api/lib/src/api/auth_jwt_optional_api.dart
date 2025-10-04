//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'dart:async';

import 'package:built_value/json_object.dart';
import 'package:built_value/serializer.dart';
import 'package:dio/dio.dart';

import 'package:cloudreve_api_client/src/api_util.dart';
import 'package:cloudreve_api_client/src/model/file_activities_get200_response.dart';
import 'package:cloudreve_api_client/src/model/file_archive_get200_response.dart';
import 'package:cloudreve_api_client/src/model/file_content_put200_response.dart';
import 'package:cloudreve_api_client/src/model/file_create_post200_response.dart';
import 'package:cloudreve_api_client/src/model/file_create_post_request.dart';
import 'package:cloudreve_api_client/src/model/file_delete200_response.dart';
import 'package:cloudreve_api_client/src/model/file_delete_request.dart';
import 'package:cloudreve_api_client/src/model/file_get200_response.dart';
import 'package:cloudreve_api_client/src/model/file_info_get200_response.dart';
import 'package:cloudreve_api_client/src/model/file_metadata_patch200_response.dart';
import 'package:cloudreve_api_client/src/model/file_metadata_patch_request.dart';
import 'package:cloudreve_api_client/src/model/file_move_post200_response.dart';
import 'package:cloudreve_api_client/src/model/file_move_post_request.dart';
import 'package:cloudreve_api_client/src/model/file_rename_post200_response.dart';
import 'package:cloudreve_api_client/src/model/file_rename_post_request.dart';
import 'package:cloudreve_api_client/src/model/file_thumb_get200_response.dart';
import 'package:cloudreve_api_client/src/model/file_upload_delete200_response.dart';
import 'package:cloudreve_api_client/src/model/file_upload_delete_request.dart';
import 'package:cloudreve_api_client/src/model/file_upload_put200_response.dart';
import 'package:cloudreve_api_client/src/model/file_upload_put_request.dart';
import 'package:cloudreve_api_client/src/model/file_upload_session_id_index_post200_response.dart';
import 'package:cloudreve_api_client/src/model/file_url_post200_response.dart';
import 'package:cloudreve_api_client/src/model/file_url_post_request.dart';
import 'package:cloudreve_api_client/src/model/file_version_current_post200_response.dart';
import 'package:cloudreve_api_client/src/model/file_version_current_post_request.dart';
import 'package:cloudreve_api_client/src/model/file_version_delete200_response.dart';
import 'package:cloudreve_api_client/src/model/file_viewer_session_put200_response.dart';
import 'package:cloudreve_api_client/src/model/file_viewer_session_put_request.dart';
import 'package:cloudreve_api_client/src/model/session_openid_put200_response.dart';
import 'package:cloudreve_api_client/src/model/session_openid_put_request.dart';
import 'package:cloudreve_api_client/src/model/share_info_id_get200_response.dart';
import 'package:cloudreve_api_client/src/model/site_abuse_post200_response.dart';
import 'package:cloudreve_api_client/src/model/site_abuse_post_request.dart';
import 'package:cloudreve_api_client/src/model/site_config_section_get200_response.dart';
import 'package:cloudreve_api_client/src/model/user_info_user_id_get200_response.dart';
import 'package:cloudreve_api_client/src/model/vas_payment_put200_response.dart';
import 'package:cloudreve_api_client/src/model/vas_payment_put_request.dart';
import 'package:cloudreve_api_client/src/model/vas_payment_status_id_trade_no_get200_response.dart';

class AuthJWTOptionalApi {

  final Dio _dio;

  final Serializers _serializers;

  const AuthJWTOptionalApi(this._dio, this._serializers);

  /// List file activities
  /// 
  ///
  /// Parameters:
  /// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the file.
  /// * [pageSize] - Page size.
  /// * [orderDirection] - Order direction.
  /// * [nextPageToken] - Token for requesting next page. Empty value means requesting the first page.
  /// * [filter] - Filter name. Use empty value to list all activities.
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileActivitiesGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileActivitiesGet200Response>> fileActivitiesGet({ 
    required String uri,
    required int pageSize,
    String? orderDirection = 'asc',
    String? nextPageToken,
    String? filter,
    String? xCrPurchaseTicket,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/activities';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (xCrPurchaseTicket != null) r'X-Cr-Purchase-Ticket': xCrPurchaseTicket,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'uri': encodeQueryParameter(_serializers, uri, const FullType(String)),
      r'page_size': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
      if (orderDirection != null) r'order_direction': encodeQueryParameter(_serializers, orderDirection, const FullType(String)),
      if (nextPageToken != null) r'next_page_token': encodeQueryParameter(_serializers, nextPageToken, const FullType(String)),
      if (filter != null) r'filter': encodeQueryParameter(_serializers, filter, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FileActivitiesGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileActivitiesGet200Response),
      ) as FileActivitiesGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileActivitiesGet200Response>(
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

  /// Get archive file list
  /// Get the content of archive files. Only supports &#x60;7z&#x60; or &#x60;zip&#x60; file.
  ///
  /// Parameters:
  /// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the archive file.
  /// * [entity] - Optional file version ID.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileArchiveGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileArchiveGet200Response>> fileArchiveGet({ 
    required String uri,
    String? entity,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/archive';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'uri': encodeQueryParameter(_serializers, uri, const FullType(String)),
      r'entity': encodeQueryParameter(_serializers, entity, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FileArchiveGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileArchiveGet200Response),
      ) as FileArchiveGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileArchiveGet200Response>(
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

  /// Update file content
  /// Update the content of given file, if it does not exit, a new file will be created with given content.
  ///
  /// Parameters:
  /// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
  /// * [contentLength] - Length of the request body.
  /// * [previous] - Previous version ID that the client side is aware of. Similar to `If-Match` in HTTP reuqest, if this field is set: - If the file version matches, update will be performed; - If latest file version does not match this value, conflict error will be raised. 
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [body] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileContentPut200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileContentPut200Response>> fileContentPut({ 
    required String uri,
    required int contentLength,
    String? previous,
    String? xCrPurchaseTicket,
    MultipartFile? body,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/content';
    final _options = Options(
      method: r'PUT',
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

    final _queryParameters = <String, dynamic>{
      r'uri': encodeQueryParameter(_serializers, uri, const FullType(String)),
      if (previous != null) r'previous': encodeQueryParameter(_serializers, previous, const FullType(String)),
    };

    dynamic _bodyData;

    try {
      _bodyData = body?.finalize();

    } catch(error, stackTrace) {
      throw DioException(
         requestOptions: _options.compose(
          _dio.options,
          _path,
          queryParameters: _queryParameters,
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
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FileContentPut200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileContentPut200Response),
      ) as FileContentPut200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileContentPut200Response>(
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

  /// Create file
  /// Create a new file with given URI and props. If ancestor folders does not existed for given &#x60;uri&#x60;, they will be created automatically.
  ///
  /// Parameters:
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [fileCreatePostRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileCreatePost200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileCreatePost200Response>> fileCreatePost({ 
    String? xCrPurchaseTicket,
    FileCreatePostRequest? fileCreatePostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/create';
    final _options = Options(
      method: r'POST',
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
      const _type = FullType(FileCreatePostRequest);
      _bodyData = fileCreatePostRequest == null ? null : _serializers.serialize(fileCreatePostRequest, specifiedType: _type);

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

    FileCreatePost200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileCreatePost200Response),
      ) as FileCreatePost200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileCreatePost200Response>(
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

  /// Delete file
  /// 
  ///
  /// Parameters:
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [fileDeleteRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileDelete200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileDelete200Response>> fileDelete({ 
    String? xCrPurchaseTicket,
    FileDeleteRequest? fileDeleteRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file';
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
      const _type = FullType(FileDeleteRequest);
      _bodyData = fileDeleteRequest == null ? null : _serializers.serialize(fileDeleteRequest, specifiedType: _type);

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

    FileDelete200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileDelete200Response),
      ) as FileDelete200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileDelete200Response>(
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

  /// List files
  /// List files under given [URI](https://docs.cloudreve.org/api/file-uri), can also be used to search files if the URI contains search conditions.
  ///
  /// Parameters:
  /// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the folder to list. You can specify [Query - Search Conditions](https://docs.cloudreve.org/api/file-uri#query) in the URI to search files.
  /// * [page] - Desired page, only used in offset pagination.
  /// * [pageSize] - Page size. Cannot exceed navigator's max supported size defined in `max_page_size` form list response.
  /// * [orderBy] - All possible values are defined in `order_by_options` from list response.
  /// * [orderDirection] - All possible values are defined in `order_direction_options` from list response.
  /// * [nextPageToken] - Token for requesting next page. Empty value means requesting the first page. Only used in cursor pagination.
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileGet200Response>> fileGet({ 
    required String uri,
    required int page,
    required int pageSize,
    String? orderBy = 'created_at',
    String? orderDirection = 'asc',
    String? nextPageToken,
    String? xCrPurchaseTicket,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (xCrPurchaseTicket != null) r'X-Cr-Purchase-Ticket': xCrPurchaseTicket,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      r'uri': encodeQueryParameter(_serializers, uri, const FullType(String)),
      r'page': encodeQueryParameter(_serializers, page, const FullType(int)),
      r'page_size': encodeQueryParameter(_serializers, pageSize, const FullType(int)),
      if (orderBy != null) r'order_by': encodeQueryParameter(_serializers, orderBy, const FullType(String)),
      if (orderDirection != null) r'order_direction': encodeQueryParameter(_serializers, orderDirection, const FullType(String)),
      if (nextPageToken != null) r'next_page_token': encodeQueryParameter(_serializers, nextPageToken, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FileGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileGet200Response),
      ) as FileGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileGet200Response>(
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

  /// Get file info
  /// Get info of a given file by [URI](https://docs.cloudreve.org/api/file-uri) of file ID. Additional info is available if requested.
  ///
  /// Parameters:
  /// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the target file. If it's empty, `id` is required.
  /// * [id] - ID of the file. If it's empty, `uri` is required. Getting file info by ID is only available to the owner of the file or administrators.
  /// * [extended] - Whether to get additional info about this file.
  /// * [folderSummary] - For folders, whether to calculate the size of this folder. The result might be cached.
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileInfoGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileInfoGet200Response>> fileInfoGet({ 
    String? uri,
    String? id,
    bool? extended,
    bool? folderSummary,
    String? xCrPurchaseTicket,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/info';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (xCrPurchaseTicket != null) r'X-Cr-Purchase-Ticket': xCrPurchaseTicket,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (uri != null) r'uri': encodeQueryParameter(_serializers, uri, const FullType(String)),
      if (id != null) r'id': encodeQueryParameter(_serializers, id, const FullType(String)),
      if (extended != null) r'extended': encodeQueryParameter(_serializers, extended, const FullType(bool)),
      if (folderSummary != null) r'folder_summary': encodeQueryParameter(_serializers, folderSummary, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FileInfoGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileInfoGet200Response),
      ) as FileInfoGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileInfoGet200Response>(
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

  /// Patch metadata
  /// Modify [metadata](https://docs.cloudreve.org/api/metadata) of the given file.
  ///
  /// Parameters:
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [fileMetadataPatchRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileMetadataPatch200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileMetadataPatch200Response>> fileMetadataPatch({ 
    String? xCrPurchaseTicket,
    FileMetadataPatchRequest? fileMetadataPatchRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/metadata';
    final _options = Options(
      method: r'PATCH',
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
      const _type = FullType(FileMetadataPatchRequest);
      _bodyData = fileMetadataPatchRequest == null ? null : _serializers.serialize(fileMetadataPatchRequest, specifiedType: _type);

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

    FileMetadataPatch200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileMetadataPatch200Response),
      ) as FileMetadataPatch200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileMetadataPatch200Response>(
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

  /// Move or copy files
  /// Move or copy files to given destination.
  ///
  /// Parameters:
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [fileMovePostRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileMovePost200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileMovePost200Response>> fileMovePost({ 
    String? xCrPurchaseTicket,
    FileMovePostRequest? fileMovePostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/move';
    final _options = Options(
      method: r'POST',
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
      const _type = FullType(FileMovePostRequest);
      _bodyData = fileMovePostRequest == null ? null : _serializers.serialize(fileMovePostRequest, specifiedType: _type);

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

    FileMovePost200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileMovePost200Response),
      ) as FileMovePost200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileMovePost200Response>(
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

  /// Rename file
  /// 
  ///
  /// Parameters:
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [fileRenamePostRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileRenamePost200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileRenamePost200Response>> fileRenamePost({ 
    String? xCrPurchaseTicket,
    FileRenamePostRequest? fileRenamePostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/rename';
    final _options = Options(
      method: r'POST',
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
      const _type = FullType(FileRenamePostRequest);
      _bodyData = fileRenamePostRequest == null ? null : _serializers.serialize(fileRenamePostRequest, specifiedType: _type);

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

    FileRenamePost200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileRenamePost200Response),
      ) as FileRenamePost200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileRenamePost200Response>(
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

  /// Get thumbnail URL
  /// Get the thumbnail URL of the given file.  ### How to decode obfuscated thumbnail URL?  If &#x60;obfuscated&#x60; is set to &#x60;true&#x60; in the response, you need addition step to recover the original image URL.    Here&#39;s implementation for the decode functioin in multiple languages         &lt;AccordionGroup&gt;   &lt;Accordion title&#x3D;\&quot;JavaScript\&quot;&gt; &#x60;&#x60;&#x60;js export const decodeTimeFlowString &#x3D; (str: string) &#x3D;&gt; {   let timeNow &#x3D; Math.floor(new Date().getTime() / 1000);   try {     return decodeTimeFlowStringTime(str, timeNow);   } catch (e) {}   try {     return decodeTimeFlowStringTime(str, timeNow - 1000);   } catch (e) {}   try {     return decodeTimeFlowStringTime(str, timeNow + 1000);   } catch (e) {}    return \&quot;\&quot;; };      const decodeTimeFlowStringTime &#x3D; (str: string, timeNow: number) &#x3D;&gt; {   timeNow &#x3D; Math.floor(timeNow / 1000);   const timeNowBackup &#x3D; timeNow;   const timeDigits: number[] &#x3D; [];   if (str.length &#x3D;&#x3D;&#x3D; 0) {     return \&quot;\&quot;;   }   while (timeNow &gt; 0) {     timeDigits.push(timeNow % 10);     timeNow &#x3D; Math.floor(timeNow / 10);   }      const res &#x3D; Array.from(str);   let secret &#x3D; Array.from(str);   let add &#x3D; false;   if (secret.length % 2 &#x3D;&#x3D;&#x3D; 0) {     add &#x3D; true;   }   let timeDigitIndex &#x3D; (secret.length - 1) % timeDigits.length;   const l &#x3D; secret.length;   for (let pos &#x3D; 0; pos &lt; l; pos++) {     let newIndex &#x3D; res.length - 1 - pos;     if (add) {       newIndex &#x3D; newIndex + timeDigits[timeDigitIndex] * timeDigitIndex;     } else {       newIndex &#x3D; 2 * timeDigitIndex * timeDigits[timeDigitIndex] - newIndex;     }      if (newIndex &lt; 0) {       newIndex &#x3D; newIndex * -1;     }      newIndex &#x3D; newIndex % secret.length;      res[res.length - 1 - pos] &#x3D; secret[newIndex];     const a &#x3D; secret[res.length - 1 - pos];     const b &#x3D; secret[newIndex];     secret[newIndex] &#x3D; a;     secret[res.length - 1 - pos] &#x3D; b;      secret &#x3D; secret.slice(0, secret.length - 1);      add &#x3D; !add;     // Add timeDigitIndex by 1, but does not exceed total digits in timeNow     timeDigitIndex--;     if (timeDigitIndex &lt; 0) {       timeDigitIndex &#x3D; timeDigits.length - 1;     }   }   const resStr &#x3D; res.join(\&quot;\&quot;);   const resSep &#x3D; resStr.split(\&quot;|\&quot;);   if (resSep.length &lt; 1 || resSep[0] !&#x3D; timeNowBackup.toString()) {     throw new Error(\&quot;Invalid time flow string\&quot;);   }    return resStr.slice(resSep[0].length + 1); }; &#x60;&#x60;&#x60; &lt;/Accordion&gt; &lt;Accordion title&#x3D;\&quot;Golang\&quot;&gt; &#x60;&#x60;&#x60;go package main  import (  \&quot;errors\&quot;  \&quot;strconv\&quot;  \&quot;strings\&quot; )  func DecodeTimeFlowStringTime(str string, timeNowMillis int64) (string, error) {  if len(str) &#x3D;&#x3D; 0 {   return \&quot;\&quot;, nil  }   timeNow :&#x3D; timeNowMillis / 1000  timeNowBackup :&#x3D; timeNow   var timeDigits []int  if timeNow &#x3D;&#x3D; 0 {   timeDigits &#x3D; append(timeDigits, 0)  } else {   tempTime :&#x3D; timeNow   for tempTime &gt; 0 {    timeDigits &#x3D; append(timeDigits, int(tempTime%10))    tempTime /&#x3D; 10   }  }   res :&#x3D; []rune(str)  secret :&#x3D; []rune(str)   add :&#x3D; len(secret)%2 &#x3D;&#x3D; 0   timeDigitIndex :&#x3D; (len(secret) - 1) % len(timeDigits)   l :&#x3D; len(secret)  for pos :&#x3D; 0; pos &lt; l; pos++ {   targetIndex :&#x3D; l - 1 - pos    newIndex :&#x3D; targetIndex   if add {    newIndex +&#x3D; timeDigits[timeDigitIndex] * timeDigitIndex   } else {    newIndex &#x3D; 2*timeDigitIndex*timeDigits[timeDigitIndex] - newIndex   }    if newIndex &lt; 0 {    newIndex *&#x3D; -1   }    newIndex %&#x3D; len(secret)    res[targetIndex] &#x3D; secret[newIndex]    lastIndexInSecret :&#x3D; len(secret) - 1   secret[newIndex], secret[lastIndexInSecret] &#x3D; secret[lastIndexInSecret], secret[newIndex]   secret &#x3D; secret[:lastIndexInSecret]    add &#x3D; !add    timeDigitIndex--   if timeDigitIndex &lt; 0 {    timeDigitIndex &#x3D; len(timeDigits) - 1   }  }   resStr :&#x3D; string(res)  resSep :&#x3D; strings.SplitN(resStr, \&quot;|\&quot;, 2)   if len(resSep) &lt; 2 || resSep[0] !&#x3D; strconv.FormatInt(timeNowBackup, 10) {   return \&quot;\&quot;, errors.New(\&quot;Invalid time flow string\&quot;)  }   return resSep[1], nil } &#x60;&#x60;&#x60; &lt;/Accordion&gt;     &lt;Accordion title&#x3D;\&quot;Java\&quot;&gt; &#x60;&#x60;&#x60;java import java.util.ArrayList; import java.util.Collections; import java.util.List; import java.util.stream.Collectors;  public class TimeFlowDecoder {      public static String decodeTimeFlowStringTime(String str, long timeNowMillis) throws Exception {         if (str &#x3D;&#x3D; null || str.isEmpty()) {             return \&quot;\&quot;;         }          long timeNow &#x3D; timeNowMillis / 1000;         long timeNowBackup &#x3D; timeNow;          List&lt;Integer&gt; timeDigits &#x3D; new ArrayList&lt;&gt;();         if (timeNow &#x3D;&#x3D; 0) {             timeDigits.add(0);         } else {             long tempTime &#x3D; timeNow;             while (tempTime &gt; 0) {                 timeDigits.add((int) (tempTime % 10));                 tempTime /&#x3D; 10;             }         }                  List&lt;Character&gt; res &#x3D; new ArrayList&lt;&gt;();         for (char c : str.toCharArray()) {             res.add(c);         }          List&lt;Character&gt; secret &#x3D; new ArrayList&lt;&gt;(res);          boolean add &#x3D; secret.size() % 2 &#x3D;&#x3D; 0;          int timeDigitIndex &#x3D; (secret.size() - 1) % timeDigits.size();                  int l &#x3D; secret.size();         for (int pos &#x3D; 0; pos &lt; l; pos++) {             int targetIndex &#x3D; l - 1 - pos;              long newIndexLong &#x3D; targetIndex;              if (add) {                 newIndexLong +&#x3D; (long) timeDigits.get(timeDigitIndex) * timeDigitIndex;             } else {                 newIndexLong &#x3D; 2L * timeDigitIndex * timeDigits.get(timeDigitIndex) - newIndexLong;             }              if (newIndexLong &lt; 0) {                 newIndexLong *&#x3D; -1;             }              int newIndex &#x3D; (int) (newIndexLong % secret.size());              res.set(targetIndex, secret.get(newIndex));              Collections.swap(secret, newIndex, secret.size() - 1);             secret.remove(secret.size() - 1);              add &#x3D; !add;              timeDigitIndex--;             if (timeDigitIndex &lt; 0) {                 timeDigitIndex &#x3D; timeDigits.size() - 1;             }         }          String resStr &#x3D; res.stream()                            .map(String::valueOf)                            .collect(Collectors.joining());          String[] resSep &#x3D; resStr.split(\&quot;\\\\|\&quot;, 2);          if (resSep.length &lt; 2 || !resSep[0].equals(String.valueOf(timeNowBackup))) {             throw new Exception(\&quot;Invalid time flow string\&quot;);         }          return resSep[1];     } } &#x60;&#x60;&#x60; &lt;/Accordion&gt; &lt;Accordion title&#x3D;\&quot;Python\&quot;&gt; &#x60;&#x60;&#x60;python import math  def decode_time_flow_string_time(s: str, time_now_ms: int) -&gt; str:     if not s:         return \&quot;\&quot;      time_now_s &#x3D; math.floor(time_now_ms / 1000)     time_now_backup &#x3D; time_now_s      time_digits &#x3D; []     if time_now_s &#x3D;&#x3D; 0:         time_digits.append(0)     else:         temp_time &#x3D; time_now_s         while temp_time &gt; 0:             time_digits.append(temp_time % 10)             temp_time &#x3D; math.floor(temp_time / 10)          res &#x3D; list(s)     secret &#x3D; list(s)          add &#x3D; len(secret) % 2 &#x3D;&#x3D; 0          time_digit_index &#x3D; (len(secret) - 1) % len(time_digits)          original_len &#x3D; len(secret)     for pos in range(original_len):         target_index &#x3D; original_len - 1 - pos                  new_index &#x3D; target_index                  if add:             new_index +&#x3D; time_digits[time_digit_index] * time_digit_index         else:             new_index &#x3D; 2 * time_digit_index * time_digits[time_digit_index] - new_index                      if new_index &lt; 0:             new_index *&#x3D; -1                      new_index %&#x3D; len(secret)                  res[target_index] &#x3D; secret[new_index]                  # Swap with the last element and pop to remove efficiently         last_index &#x3D; len(secret) - 1         secret[new_index], secret[last_index] &#x3D; secret[last_index], secret[new_index]         secret.pop()                  add &#x3D; not add                  time_digit_index -&#x3D; 1         if time_digit_index &lt; 0:             time_digit_index &#x3D; len(time_digits) - 1                  res_str &#x3D; \&quot;\&quot;.join(res)          parts &#x3D; res_str.split(\&quot;|\&quot;, 1)     if len(parts) &lt; 2 or parts[0] !&#x3D; str(time_now_backup):         raise ValueError(\&quot;Invalid time flow string\&quot;)              return parts[1] &#x60;&#x60;&#x60; &lt;/Accordion&gt;     &lt;/AccordionGroup&gt;
  ///
  /// Parameters:
  /// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
  /// * [xCrContextHint] - Optional context hint to speed up DB queries. You can get its value from the response of listing files. It is recommended to set this header if you need to perform action on files that are just listed by [List files](/list-files-300233178e0) API.
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileThumbGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileThumbGet200Response>> fileThumbGet({ 
    String? uri,
    String? xCrContextHint,
    String? xCrPurchaseTicket,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/thumb';
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (xCrContextHint != null) r'X-Cr-Context-Hint': xCrContextHint,
        if (xCrPurchaseTicket != null) r'X-Cr-Purchase-Ticket': xCrPurchaseTicket,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (uri != null) r'uri': encodeQueryParameter(_serializers, uri, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FileThumbGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileThumbGet200Response),
      ) as FileThumbGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileThumbGet200Response>(
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

  /// Create download URL
  /// Create a temporary anonymous URLs to download file content.
  ///
  /// Parameters:
  /// * [xCrContextHint] - Optional context hint to speed up DB queries. You can get its value from the response of listing files. It is recommended to set this header if you need to perform action on files that are just listed by [List files](/list-files-300233178e0) API.
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [fileUrlPostRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileUrlPost200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileUrlPost200Response>> fileUrlPost({ 
    String? xCrContextHint,
    String? xCrPurchaseTicket,
    FileUrlPostRequest? fileUrlPostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/url';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
        if (xCrContextHint != null) r'X-Cr-Context-Hint': xCrContextHint,
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
      const _type = FullType(FileUrlPostRequest);
      _bodyData = fileUrlPostRequest == null ? null : _serializers.serialize(fileUrlPostRequest, specifiedType: _type);

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

    FileUrlPost200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileUrlPost200Response),
      ) as FileUrlPost200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileUrlPost200Response>(
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

  /// Set file version
  /// Set the current version of the file.
  ///
  /// Parameters:
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [fileVersionCurrentPostRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileVersionCurrentPost200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileVersionCurrentPost200Response>> fileVersionCurrentPost({ 
    String? xCrPurchaseTicket,
    FileVersionCurrentPostRequest? fileVersionCurrentPostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/version/current';
    final _options = Options(
      method: r'POST',
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
      const _type = FullType(FileVersionCurrentPostRequest);
      _bodyData = fileVersionCurrentPostRequest == null ? null : _serializers.serialize(fileVersionCurrentPostRequest, specifiedType: _type);

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

    FileVersionCurrentPost200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileVersionCurrentPost200Response),
      ) as FileVersionCurrentPost200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileVersionCurrentPost200Response>(
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

  /// Delete file version
  /// Delete a version from a file&#39;s version history.
  ///
  /// Parameters:
  /// * [uri] - [URI](https://docs.cloudreve.org/api/file-uri) of the target file.
  /// * [version] - ID of the version to set as \"current version\". The version blob must be linked to current file. List of available versions can be retrieved via [Get file info](./get-file-info-306769225e0). The version cannot be the currrent version of the file.
  /// * [xCrPurchaseTicketCommaStringCommaFalseComma1f63aa26Edc040ce950aCb4d4323158eCommaCanBeUsedToAuthenticateToPaidShareLinksWithAAnonymousIdentityPeriodTheTicketValueCanBeObtainedAfterAnAnonymousUserPurchaseAPaidShareLink] - 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileVersionDelete200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileVersionDelete200Response>> fileVersionDelete({ 
    String? uri,
    String? version,
    String? xCrPurchaseTicketCommaStringCommaFalseComma1f63aa26Edc040ce950aCb4d4323158eCommaCanBeUsedToAuthenticateToPaidShareLinksWithAAnonymousIdentityPeriodTheTicketValueCanBeObtainedAfterAnAnonymousUserPurchaseAPaidShareLink,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/version';
    final _options = Options(
      method: r'DELETE',
      headers: <String, dynamic>{
        if (xCrPurchaseTicketCommaStringCommaFalseComma1f63aa26Edc040ce950aCb4d4323158eCommaCanBeUsedToAuthenticateToPaidShareLinksWithAAnonymousIdentityPeriodTheTicketValueCanBeObtainedAfterAnAnonymousUserPurchaseAPaidShareLink != null) r'X-Cr-Purchase-Ticket,string,false,1f63aa26-edc0-40ce-950a-cb4d4323158e,Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link': xCrPurchaseTicketCommaStringCommaFalseComma1f63aa26Edc040ce950aCb4d4323158eCommaCanBeUsedToAuthenticateToPaidShareLinksWithAAnonymousIdentityPeriodTheTicketValueCanBeObtainedAfterAnAnonymousUserPurchaseAPaidShareLink,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (uri != null) r'uri': encodeQueryParameter(_serializers, uri, const FullType(String)),
      if (version != null) r'version': encodeQueryParameter(_serializers, version, const FullType(String)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    FileVersionDelete200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileVersionDelete200Response),
      ) as FileVersionDelete200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileVersionDelete200Response>(
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

  /// Create viewer session
  /// Create a temporary WOPI session for 3rd party file apps or WOPI clients to download or edit files.
  ///
  /// Parameters:
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [fileViewerSessionPutRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [FileViewerSessionPut200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<FileViewerSessionPut200Response>> fileViewerSessionPut({ 
    String? xCrPurchaseTicket,
    FileViewerSessionPutRequest? fileViewerSessionPutRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/file/viewerSession';
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
      const _type = FullType(FileViewerSessionPutRequest);
      _bodyData = fileViewerSessionPutRequest == null ? null : _serializers.serialize(fileViewerSessionPutRequest, specifiedType: _type);

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

    FileViewerSessionPut200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(FileViewerSessionPut200Response),
      ) as FileViewerSessionPut200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<FileViewerSessionPut200Response>(
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

  /// Prepare OpenID sign-in
  /// Preapre a social connector sign in, can be used to sign in Cloudreve account, or link existing account with a social connector account. * For signing in with social connector, authorization is not required. * For account linking, authorization is required for a valid logged-in user.
  ///
  /// Parameters:
  /// * [sessionOpenidPutRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SessionOpenidPut200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SessionOpenidPut200Response>> sessionOpenidPut({ 
    SessionOpenidPutRequest? sessionOpenidPutRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/session/openid';
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
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
      const _type = FullType(SessionOpenidPutRequest);
      _bodyData = sessionOpenidPutRequest == null ? null : _serializers.serialize(sessionOpenidPutRequest, specifiedType: _type);

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

    SessionOpenidPut200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SessionOpenidPut200Response),
      ) as SessionOpenidPut200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SessionOpenidPut200Response>(
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

  /// Get share link info
  /// Get share link info from ID.
  ///
  /// Parameters:
  /// * [id] - ID of the share link. Can be parsed from `Username` part of the [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or the short link created in [Create share link](./create-share-link-306853462e0)
  /// * [password] - Password of the share link for private share.  Can be parsed from `Password` part of the [URI](https://docs.cloudreve.org/api/file-uri) of the shared file or the short link created in [Create share link](./create-share-link-306853462e0)
  /// * [countViews] - If set to `true`, the visited counter of the share link will be increased.
  /// * [ownerExtended] - If set to `true` and the requestor is the owner of the share, additional fields like `source_uri` will be available in the response.
  /// * [xCrPurchaseTicket] - Can be used to authenticate to paid share links with a anonymous identity. The ticket value can be obtained after an anonymous user purchase a paid share link.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [ShareInfoIdGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<ShareInfoIdGet200Response>> shareInfoIdGet({ 
    required String id,
    String? password,
    bool? countViews,
    bool? ownerExtended,
    String? xCrPurchaseTicket,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/share/info/{id}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        if (xCrPurchaseTicket != null) r'X-Cr-Purchase-Ticket': xCrPurchaseTicket,
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _queryParameters = <String, dynamic>{
      if (password != null) r'password': encodeQueryParameter(_serializers, password, const FullType(String)),
      if (countViews != null) r'count_views': encodeQueryParameter(_serializers, countViews, const FullType(bool)),
      if (ownerExtended != null) r'owner_extended': encodeQueryParameter(_serializers, ownerExtended, const FullType(bool)),
    };

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      queryParameters: _queryParameters,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    ShareInfoIdGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(ShareInfoIdGet200Response),
      ) as ShareInfoIdGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<ShareInfoIdGet200Response>(
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

  /// Report abuse
  /// Report abuse on share links or users.
  ///
  /// Parameters:
  /// * [siteAbusePostRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SiteAbusePost200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SiteAbusePost200Response>> siteAbusePost({ 
    SiteAbusePostRequest? siteAbusePostRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/site/abuse';
    final _options = Options(
      method: r'POST',
      headers: <String, dynamic>{
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
      const _type = FullType(SiteAbusePostRequest);
      _bodyData = siteAbusePostRequest == null ? null : _serializers.serialize(siteAbusePostRequest, specifiedType: _type);

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

    SiteAbusePost200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SiteAbusePost200Response),
      ) as SiteAbusePost200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SiteAbusePost200Response>(
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

  /// Get site settings
  /// Get global site settings paritioned by sections. Only settings in your requested section will be included in your response.
  ///
  /// Parameters:
  /// * [section] - Setting section name.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [SiteConfigSectionGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<SiteConfigSectionGet200Response>> siteConfigSectionGet({ 
    required String section,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/site/config/{section}'.replaceAll('{' r'section' '}', encodeQueryParameter(_serializers, section, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    SiteConfigSectionGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(SiteConfigSectionGet200Response),
      ) as SiteConfigSectionGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<SiteConfigSectionGet200Response>(
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

  /// Get user
  /// Get user by ID. Authorization is optional, but &#x60;email&#x60; field will be redacted for anonymous request.
  ///
  /// Parameters:
  /// * [userId] - User ID.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [UserInfoUserIdGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<UserInfoUserIdGet200Response>> userInfoUserIdGet({ 
    required String userId,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/user/info/{user_id}'.replaceAll('{' r'user_id' '}', encodeQueryParameter(_serializers, userId, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    UserInfoUserIdGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(UserInfoUserIdGet200Response),
      ) as UserInfoUserIdGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<UserInfoUserIdGet200Response>(
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

  /// Create a payment
  /// Create a payment for given product.
  ///
  /// Parameters:
  /// * [vasPaymentPutRequest] 
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [VasPaymentPut200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<VasPaymentPut200Response>> vasPaymentPut({ 
    VasPaymentPutRequest? vasPaymentPutRequest,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/vas/payment';
    final _options = Options(
      method: r'PUT',
      headers: <String, dynamic>{
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
      const _type = FullType(VasPaymentPutRequest);
      _bodyData = vasPaymentPutRequest == null ? null : _serializers.serialize(vasPaymentPutRequest, specifiedType: _type);

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

    VasPaymentPut200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(VasPaymentPut200Response),
      ) as VasPaymentPut200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<VasPaymentPut200Response>(
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

  /// Get payment status
  /// 
  ///
  /// Parameters:
  /// * [id] - ID of the payment.
  /// * [tradeNo] - Trade number of the payment.
  /// * [cancelToken] - A [CancelToken] that can be used to cancel the operation
  /// * [headers] - Can be used to add additional headers to the request
  /// * [extras] - Can be used to add flags to the request
  /// * [validateStatus] - A [ValidateStatus] callback that can be used to determine request success based on the HTTP status of the response
  /// * [onSendProgress] - A [ProgressCallback] that can be used to get the send progress
  /// * [onReceiveProgress] - A [ProgressCallback] that can be used to get the receive progress
  ///
  /// Returns a [Future] containing a [Response] with a [VasPaymentStatusIdTradeNoGet200Response] as data
  /// Throws [DioException] if API call or serialization fails
  Future<Response<VasPaymentStatusIdTradeNoGet200Response>> vasPaymentStatusIdTradeNoGet({ 
    required String id,
    required String tradeNo,
    CancelToken? cancelToken,
    Map<String, dynamic>? headers,
    Map<String, dynamic>? extra,
    ValidateStatus? validateStatus,
    ProgressCallback? onSendProgress,
    ProgressCallback? onReceiveProgress,
  }) async {
    final _path = r'/vas/payment/status/{id}/{trade_no}'.replaceAll('{' r'id' '}', encodeQueryParameter(_serializers, id, const FullType(String)).toString()).replaceAll('{' r'trade_no' '}', encodeQueryParameter(_serializers, tradeNo, const FullType(String)).toString());
    final _options = Options(
      method: r'GET',
      headers: <String, dynamic>{
        ...?headers,
      },
      extra: <String, dynamic>{
        'secure': <Map<String, String>>[],
        ...?extra,
      },
      validateStatus: validateStatus,
    );

    final _response = await _dio.request<Object>(
      _path,
      options: _options,
      cancelToken: cancelToken,
      onSendProgress: onSendProgress,
      onReceiveProgress: onReceiveProgress,
    );

    VasPaymentStatusIdTradeNoGet200Response? _responseData;

    try {
      final rawResponse = _response.data;
      _responseData = rawResponse == null ? null : _serializers.deserialize(
        rawResponse,
        specifiedType: const FullType(VasPaymentStatusIdTradeNoGet200Response),
      ) as VasPaymentStatusIdTradeNoGet200Response;

    } catch (error, stackTrace) {
      throw DioException(
        requestOptions: _response.requestOptions,
        response: _response,
        type: DioExceptionType.unknown,
        error: error,
        stackTrace: stackTrace,
      );
    }

    return Response<VasPaymentStatusIdTradeNoGet200Response>(
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
