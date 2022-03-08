import 'package:get/get_state_manager/get_state_manager.dart';

enum Gender { male, female, other }

class ProfileController extends GetxController {
  int? selectedGender;

  void onRadioButtonClick(value) {
    selectedGender = value;
    update();
  }
}
