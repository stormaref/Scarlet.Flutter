import 'package:app/models/auth_response.dart';
import 'package:app/models/bool_result.dart';
import 'package:app/models/login_model.dart';
import 'package:app/models/refresh_token_model.dart';
import 'package:app/tools/statics.dart';
import 'package:dio/dio.dart';

class AuthService {
  static final Dio _dio = Statics.getDioInstance("Auth/");

  Future<AuthResponse> login(String email, String password) async {
    var model = LoginModel(email, password);
    var response = await _dio.post("EmailLogin", data: model.toJson());
    var output = AuthResponse.fromJson(response.data);
    return output;
  }

  Future<BoolResult> signup(String email, String password) async {
    var model = LoginModel(email, password);
    var response = await _dio.post("EmailRegister", data: model);
    var output = BoolResult.fromJson(response.data);
    return output;
  }

  Future<RefreshTokenModel?> refreshToken(
      Dio client, String token, String refreshToken) async {
    var refreshTokenModel = RefreshTokenModel(token, refreshToken);
    try {
      var result = await client.post(Statics.baseUrl + "Auth/RefreshToken",
          data: refreshTokenModel);
      var output = AuthResponse.fromJson(result.data);
      return RefreshTokenModel(output.token, output.refreshToken);
    } on DioError catch (e) {
      var error = e.error;
      var data = e.response?.data;
      if (e.response != null && e.response!.statusCode == 400) return null;
      rethrow;
    }
  }

  Future<bool> testToken(String token) async {
    try {
      var result = await _dio.get("Test");
      return result.statusCode == 200 ? true : false;
    } on DioError catch (e) {
      return false;
    }
  }
}
