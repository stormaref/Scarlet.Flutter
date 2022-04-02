import 'package:get/get_state_manager/get_state_manager.dart';

class SimilarMovieController extends GetxController {
  static Map<int, bool> store = <int, bool>{};
  static Map<int, bool> viewStore = <int, bool>{};

  SimilarMovieController(int id) {
    if (store[id] != null) return;
    store[id] = false;

    if (viewStore[id] != null) return;
    viewStore[id] = false;
  }

  tap(int id) {
    store[id] = !store[id]!;
    update();
  }

  bool get(id) => store[id]!;

  tapView(int id) {
    viewStore[id] = !viewStore[id]!;
    update();
  }

  bool getView(id) => viewStore[id]!;
}
