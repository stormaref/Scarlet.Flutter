import 'package:app/membership.dart';
import 'package:app/services/token_service.dart';
import 'package:get/get.dart';

enum Gender { male, female, other }

class ProfileController extends GetxController {
  int? selectedGender;

  void onRadioButtonClick(value) {
    selectedGender = value;
    update();
  }

  logout() {
    TokenService().remove();
    Get.offAll(() => Membership());
  }
}
