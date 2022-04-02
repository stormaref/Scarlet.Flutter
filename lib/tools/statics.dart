import 'package:app/services/auth_service.dart';
import 'package:app/services/token_service.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class Statics {
  static String baseUrl = "http://135.181.126.65:8080/api/";

  static BoxDecoration purpleShadow = BoxDecoration(boxShadow: const [
    BoxShadow(color: Color(0xFF232122), spreadRadius: 0.5, blurRadius: 16),
  ], color: const Color(0xFF0B090A), borderRadius: BorderRadius.circular(8));

  static var storage = const FlutterSecureStorage();

  static Dio getDioInstance(String url) {
    var dio = Dio(BaseOptions(baseUrl: baseUrl + url));
    dio.interceptors.add(InterceptorsWrapper(onError: (e, handler) async {
      if (e.response?.statusCode == 401 && await TokenService().token != null) {
        return await renewRequest(e, handler);
      }
      handler.next(e);
    }, onRequest: (options, handler) async {
      var token = await getToken();
      if (token != null) options.headers["Authorization"] = "Bearer " + token;
      handler.next(options);
    }));
    return dio;
  }

  static Future<void> renewRequest(
      DioError e, ErrorInterceptorHandler handler) async {
    var dio = Dio();
    var token = await refreshToken(dio);
    if (token == null) return handler.next(e);
    var path = e.requestOptions.path;
    dio.options.headers["Authorization"] = "Bearer " + token;
    dio.options.baseUrl = e.requestOptions.baseUrl;
    var response = await dio.request(path,
        options: Options(method: e.requestOptions.method),
        data: e.requestOptions.data,
        queryParameters: e.requestOptions.queryParameters);
    return handler.resolve(response);
  }

  static Future<String?> refreshToken(Dio dio) async {
    var ts = TokenService();
    var token = await ts.token;
    var refreshToken = await ts.refreshToken;
    var result = await AuthService().refreshToken(dio, token!, refreshToken!);
    if (result == null) return null;
    ts.writeToken(result.token, result.refreshToken);
    return result.token;
  }

  static Future<String?> getToken() async {
    return await TokenService().token;
  }
}
