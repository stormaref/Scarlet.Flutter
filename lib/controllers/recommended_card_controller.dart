import 'package:app/models/recommended_card_model.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class RecommendedCardController extends GetxController {
  static Map<int, RecommendedCardModel> store = <int, RecommendedCardModel>{};

  RecommendedCardController(int id) {
    if (store[id] != null) return;
    store[id] = RecommendedCardModel(false, false);
  }

  bool isBookmarked(int id) {
    return store[id]!.isBookmarked;
  }

  bool isExpanded(int id) {
    return store[id]!.isExpanded;
  }

  bookmark(int id) {
    store[id]!.bookmark();
    update();
  }

  showHide(int id) {
    store[id]!.showHide();
    update();
  }
}
