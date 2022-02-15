import 'dart:io';

import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';
import 'package:dio_cookie_manager/dio_cookie_manager.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HttpUtil {
  static CookieJar cookieJar = CookieJar();

  static String _baseUrl = 'https://cloudreve.yycccloud.cn';

  static BaseOptions _normalOption = BaseOptions(
    baseUrl: _baseUrl,
    connectTimeout: 10000,
    receiveTimeout: 10000,
  );
  static Dio dio = Dio(_normalOption);

  static List<Dio> getCountDios(int count) {
    List<Dio> dios = [];
    for (int i = 0; i < count; i++) {
      Dio dio = Dio(_normalOption);
      dio.interceptors.add(CookieManager(cookieJar));
      dios.add(dio);
    }
    return dios;
  }
}

class GetCookieInterceptor extends CookieManager {
  GetCookieInterceptor(CookieJar cookieJar) : super(cookieJar);

  @override
  void onResponse(Response response, ResponseInterceptorHandler handler) {
    var cookies = response.headers[HttpHeaders.setCookieHeader];
    if (cookies != null) {
      _saveCookie(cookies[0]);
    }
    handler.next(response);
  }

  void _saveCookie(String cookie) async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setString(HttpHeaders.cookieHeader, cookie.toString());
  }
}
