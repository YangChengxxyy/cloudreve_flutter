import 'package:cookie_jar/cookie_jar.dart';
import 'package:dio/dio.dart';

class HttpUtil {
  static CookieJar cookieJar = CookieJar();

  static String baseUrl = 'https://cloudreve.yycccloud.cn/';

  static BaseOptions normalOption = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000,
  );
  static Dio http = Dio(normalOption);

  static BaseOptions uploadOption = BaseOptions(
    baseUrl: baseUrl,
    connectTimeout: 5000,
    receiveTimeout: 3000,
    headers: {
      "Content-Type": "application/octet-stream"
    }
  );
}
