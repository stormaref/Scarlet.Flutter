import 'package:get/get_state_manager/get_state_manager.dart';

class ReommendedCardController extends GetxController {
  bool isExpanded = false;
  bool isBookmarked = false;

  bookmark() {
    isBookmarked = !isBookmarked;
    update();
  }

  showHide() {
    isExpanded = !isExpanded;
    update();
  }
}
