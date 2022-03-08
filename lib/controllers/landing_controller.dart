import 'package:get/state_manager.dart';

class LandingController extends GetxController {
  var tabIndex = 0;

  void changeTabIndex(int value) {
    tabIndex = value;
    update();
  }
}
