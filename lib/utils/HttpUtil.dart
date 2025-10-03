import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HttpUtil {
  static CookieJar cookieJar = CookieJar();

  static String _baseUrl = 'http://47.96.113.32:5212';

  static BaseOptions _normalOption = BaseOptions(
    baseUrl: _baseUrl,
    connectTimeout: const Duration(milliseconds: 10000),
    receiveTimeout: const Duration(milliseconds: 10000),
  );
  static Dio dio = Dio(_normalOption);
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
