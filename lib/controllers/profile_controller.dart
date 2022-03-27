import 'package:app/membership.dart';
import 'package:app/services/token_service.dart';
import 'package:app/services/user_service.dart';
import 'package:get/get.dart';

enum Gender { male, female, other }

class ProfileController extends GetxController {
  String? name;
  Gender? gender;
  int? birthYear;
  late UserService _userService;

  ProfileController() {
    _userService = UserService();
  }

  String getGender() {
    switch (gender) {
      case Gender.male:
        return "Male";
      case Gender.female:
        return "Female";
      case Gender.other:
        return "Other";
      default:
        return "Unknown";
    }
  }

  @override
  void onInit() async {
    var profile = await _userService.getProfile();
    name = profile.name;
    birthYear = GetDateTime(profile.birthDate).year;
    gender = Gender.values[profile.gender];
    update();
    super.onInit();
  }

  static DateTime GetDateTime(String input) => DateTime.parse(input);

  updateName(String name) async {
    var result = await _userService.updateName(name);
    if (result) {
      this.name = name;
      update();
    }
  }

  void onRadioButtonClick(value) {
    gender = Gender.values[value];
    update();
  }

  logout() {
    TokenService().remove();
    Get.offAll(() => Membership());
  }
}
