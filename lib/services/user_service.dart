import 'package:app/models/user_profile.dart';
import 'package:app/tools/statics.dart';
import 'package:dio/dio.dart';

class UserService {
  static final Dio _dio = Statics.getDioInstance("User/");

  Future<UserProfileModel> getProfile() async {
    var response = await _dio.get("");
    return UserProfileModel.fromJson(response.data);
  }

  updateName(String name) async {
    try {
      var result = await _dio.put("Name", queryParameters: {"name": name});
      return result.statusCode == 200;
    } catch (e) {
      return false;
    }
  }
}
