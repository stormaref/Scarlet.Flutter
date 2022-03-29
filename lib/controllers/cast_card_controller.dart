import 'package:get/get_state_manager/get_state_manager.dart';

class CastCardController extends GetxController {
  static Map<int, bool> store = <int, bool>{};

  CastCardController(int id) {
    if (store[id] != null) return;
    store[id] = false;
  }

  tap(int id) {
    store[id] = !store[id]!;
    update();
  }

  bool get(id) => store[id]!;
}
