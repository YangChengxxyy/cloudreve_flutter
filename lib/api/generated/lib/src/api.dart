//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:cloudreve_api_client/src/serializers.dart';
import 'package:cloudreve_api_client/src/auth/api_key_auth.dart';
import 'package:cloudreve_api_client/src/auth/basic_auth.dart';
import 'package:cloudreve_api_client/src/auth/bearer_auth.dart';
import 'package:cloudreve_api_client/src/auth/oauth.dart';
import 'package:cloudreve_api_client/src/api/auth_jwt_optional_api.dart';
import 'package:cloudreve_api_client/src/api/auth_jwt_required_api.dart';
import 'package:cloudreve_api_client/src/api/auth_none_api.dart';
import 'package:cloudreve_api_client/src/api/callback_api.dart';
import 'package:cloudreve_api_client/src/api/file_api.dart';
import 'package:cloudreve_api_client/src/api/file_direct_link_api.dart';
import 'package:cloudreve_api_client/src/api/file_permission_api.dart';
import 'package:cloudreve_api_client/src/api/file_pin_api.dart';
import 'package:cloudreve_api_client/src/api/file_upload_api.dart';
import 'package:cloudreve_api_client/src/api/file_version_api.dart';
import 'package:cloudreve_api_client/src/api/group_api.dart';
import 'package:cloudreve_api_client/src/api/pro_api.dart';
import 'package:cloudreve_api_client/src/api/session_api.dart';
import 'package:cloudreve_api_client/src/api/session_open_id_api.dart';
import 'package:cloudreve_api_client/src/api/session_passkey_api.dart';
import 'package:cloudreve_api_client/src/api/session_token_api.dart';
import 'package:cloudreve_api_client/src/api/share_api.dart';
import 'package:cloudreve_api_client/src/api/site_api.dart';
import 'package:cloudreve_api_client/src/api/user_api.dart';
import 'package:cloudreve_api_client/src/api/user_passkey_api.dart';
import 'package:cloudreve_api_client/src/api/user_setting_api.dart';
import 'package:cloudreve_api_client/src/api/vas_gift_code_api.dart';
import 'package:cloudreve_api_client/src/api/vas_payment_api.dart';
import 'package:cloudreve_api_client/src/api/web_dav_api.dart';
import 'package:cloudreve_api_client/src/api/workflow_api.dart';
import 'package:cloudreve_api_client/src/api/workflow_remote_download_api.dart';

class CloudreveApiClient {
  static const String basePath = r'http://localhost';

  final Dio dio;
  final Serializers serializers;

  CloudreveApiClient({
    Dio? dio,
    Serializers? serializers,
    String? basePathOverride,
    List<Interceptor>? interceptors,
  })  : this.serializers = serializers ?? standardSerializers,
        this.dio = dio ??
            Dio(BaseOptions(
              baseUrl: basePathOverride ?? basePath,
              connectTimeout: const Duration(milliseconds: 5000),
              receiveTimeout: const Duration(milliseconds: 3000),
            )) {
    if (interceptors == null) {
      this.dio.interceptors.addAll([
        OAuthInterceptor(),
        BasicAuthInterceptor(),
        BearerAuthInterceptor(),
        ApiKeyAuthInterceptor(),
      ]);
    } else {
      this.dio.interceptors.addAll(interceptors);
    }
  }

  void setOAuthToken(String name, String token) {
    if (this.dio.interceptors.any((i) => i is OAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is OAuthInterceptor) as OAuthInterceptor).tokens[name] = token;
    }
  }

  void setBearerAuth(String name, String token) {
    if (this.dio.interceptors.any((i) => i is BearerAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BearerAuthInterceptor) as BearerAuthInterceptor).tokens[name] = token;
    }
  }

  void setBasicAuth(String name, String username, String password) {
    if (this.dio.interceptors.any((i) => i is BasicAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((i) => i is BasicAuthInterceptor) as BasicAuthInterceptor).authInfo[name] = BasicAuthInfo(username, password);
    }
  }

  void setApiKey(String name, String apiKey) {
    if (this.dio.interceptors.any((i) => i is ApiKeyAuthInterceptor)) {
      (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor) as ApiKeyAuthInterceptor).apiKeys[name] = apiKey;
    }
  }

  /// Get AuthJWTOptionalApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthJWTOptionalApi getAuthJWTOptionalApi() {
    return AuthJWTOptionalApi(dio, serializers);
  }

  /// Get AuthJWTRequiredApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthJWTRequiredApi getAuthJWTRequiredApi() {
    return AuthJWTRequiredApi(dio, serializers);
  }

  /// Get AuthNoneApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  AuthNoneApi getAuthNoneApi() {
    return AuthNoneApi(dio, serializers);
  }

  /// Get CallbackApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  CallbackApi getCallbackApi() {
    return CallbackApi(dio, serializers);
  }

  /// Get FileApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FileApi getFileApi() {
    return FileApi(dio, serializers);
  }

  /// Get FileDirectLinkApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FileDirectLinkApi getFileDirectLinkApi() {
    return FileDirectLinkApi(dio, serializers);
  }

  /// Get FilePermissionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FilePermissionApi getFilePermissionApi() {
    return FilePermissionApi(dio, serializers);
  }

  /// Get FilePinApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FilePinApi getFilePinApi() {
    return FilePinApi(dio, serializers);
  }

  /// Get FileUploadApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FileUploadApi getFileUploadApi() {
    return FileUploadApi(dio, serializers);
  }

  /// Get FileVersionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  FileVersionApi getFileVersionApi() {
    return FileVersionApi(dio, serializers);
  }

  /// Get GroupApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  GroupApi getGroupApi() {
    return GroupApi(dio, serializers);
  }

  /// Get ProApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ProApi getProApi() {
    return ProApi(dio, serializers);
  }

  /// Get SessionApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SessionApi getSessionApi() {
    return SessionApi(dio, serializers);
  }

  /// Get SessionOpenIDApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SessionOpenIDApi getSessionOpenIDApi() {
    return SessionOpenIDApi(dio, serializers);
  }

  /// Get SessionPasskeyApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SessionPasskeyApi getSessionPasskeyApi() {
    return SessionPasskeyApi(dio, serializers);
  }

  /// Get SessionTokenApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SessionTokenApi getSessionTokenApi() {
    return SessionTokenApi(dio, serializers);
  }

  /// Get ShareApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  ShareApi getShareApi() {
    return ShareApi(dio, serializers);
  }

  /// Get SiteApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  SiteApi getSiteApi() {
    return SiteApi(dio, serializers);
  }

  /// Get UserApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserApi getUserApi() {
    return UserApi(dio, serializers);
  }

  /// Get UserPasskeyApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserPasskeyApi getUserPasskeyApi() {
    return UserPasskeyApi(dio, serializers);
  }

  /// Get UserSettingApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  UserSettingApi getUserSettingApi() {
    return UserSettingApi(dio, serializers);
  }

  /// Get VASGiftCodeApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  VASGiftCodeApi getVASGiftCodeApi() {
    return VASGiftCodeApi(dio, serializers);
  }

  /// Get VASPaymentApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  VASPaymentApi getVASPaymentApi() {
    return VASPaymentApi(dio, serializers);
  }

  /// Get WebDAVApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WebDAVApi getWebDAVApi() {
    return WebDAVApi(dio, serializers);
  }

  /// Get WorkflowApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WorkflowApi getWorkflowApi() {
    return WorkflowApi(dio, serializers);
  }

  /// Get WorkflowRemoteDownloadApi instance, base route and serializer can be overridden by a given but be careful,
  /// by doing that all interceptors will not be executed
  WorkflowRemoteDownloadApi getWorkflowRemoteDownloadApi() {
    return WorkflowRemoteDownloadApi(dio, serializers);
  }
}
