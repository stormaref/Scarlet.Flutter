import 'package:app/services/auth_service.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SplashController extends GetxController {
  late AuthService _authService;

  SplashController() {
    _authService = AuthService();
  }
}
