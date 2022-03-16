import 'dart:developer';

import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class ExploreController extends GetxController {
  int? segmentedControlValue = 0;

  void segmentedValueChanged(value) {
    segmentedControlValue = value;
    log(segmentedControlValue.toString());
    update();
  }
}
