import 'dart:developer';

import 'package:app/models/auth_response.dart';
import 'package:app/models/login_model.dart';
import 'package:dio/dio.dart';

class AuthService {
  static final Dio _dio =
      Dio(BaseOptions(baseUrl: "http://135.181.126.65:8080/api/Auth/"));

  Future<AuthResponse> login(String email, String password) async {
    var model = LoginModel(email, password);
    var response = await _dio.post("EmailLogin", data: model.toJson());
    var output = AuthResponse.fromJson(response.data);
    return output;
  }
}
