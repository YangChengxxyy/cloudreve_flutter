import 'dart:io';

import 'package:cloudreve_api_client/cloudreve_api_client.dart'
    as cloudreve_api;
import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HttpUtil {
  static CookieJar cookieJar = CookieJar();

  static String _baseUrl = 'http://47.96.113.32:5212/api/v4/';

  static BaseOptions _normalOption = BaseOptions(
    baseUrl: _baseUrl,
    connectTimeout: const Duration(milliseconds: 10000),
    receiveTimeout: const Duration(milliseconds: 10000),
  );
  static Dio dio = Dio(_normalOption);

  static String? _accessToken;
  static DateTime? _accessTokenExpiresAt;
  static String? _refreshToken;
  static DateTime? _refreshTokenExpiresAt;
  static cloudreve_api.CloudreveApiClient? _apiClient;

  static cloudreve_api.CloudreveApiClient get apiClient {
    _apiClient ??= cloudreve_api.CloudreveApiClient(
      dio: dio,
      serializers: cloudreve_api.standardSerializers,
    );
    return _apiClient!;
  }

  static void updateAuthToken({
    required String accessToken,
    required DateTime accessExpires,
    required String refreshToken,
    required DateTime refreshExpires,
  }) {
    _accessToken = accessToken;
    _accessTokenExpiresAt = accessExpires;
    _refreshToken = refreshToken;
    _refreshTokenExpiresAt = refreshExpires;
    dio.options.headers['Authorization'] = 'Bearer $accessToken';
  }

  static void clearAuthToken() {
    _accessToken = null;
    _accessTokenExpiresAt = null;
    _refreshToken = null;
    _refreshTokenExpiresAt = null;
    dio.options.headers.remove('Authorization');
  }

  static String? get accessToken => _accessToken;

  static DateTime? get accessTokenExpiresAt => _accessTokenExpiresAt;

  static String? get refreshToken => _refreshToken;

  static DateTime? get refreshTokenExpiresAt => _refreshTokenExpiresAt;
}

class GetCookieInterceptor extends CookieManager {
  GetCookieInterceptor(CookieJar cookieJar) : super(cookieJar);

  @override
  Future<void> onResponse(
      Response<dynamic> response, ResponseInterceptorHandler handler) async {
    final cookies = response.headers[HttpHeaders.setCookieHeader];
    if (cookies != null && cookies.isNotEmpty) {
      await _saveCookie(cookies[0]);
    }
    handler.next(response);
  }

  Future<void> _saveCookie(String cookie) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setString(HttpHeaders.cookieHeader, cookie.toString());
  }
}
