import 'package:app/landing_page.dart';
import 'package:app/services/auth_service.dart';
import 'package:app/services/token_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  bool obscureText = true;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  bool emailSuffixIcon = false;
  int type;
  late AuthService _authService;
  late TokenService _storageService;

  LoginController(this.type) {
    emailController = TextEditingController();
    emailController?.addListener(emailTextListener);
    passwordController = TextEditingController();
    passwordController?.addListener(passwordTextListener);
    _authService = AuthService();
    _storageService = TokenService();
  }

  passwordToggle() {
    obscureText = !obscureText;
    update();
  }

  emailTextListener() {
    if (emailController != null) {
      var check = emailController?.text.isNotEmpty;
      if (check != null) emailSuffixIcon = check;
    }
    update();
  }

  clearText() {
    emailController?.text = "";
  }

  String getTitleText() {
    switch (type) {
      case 1:
        return "Login By Entering The Details Below";
      case 2:
        return "Sign up By Entering The Details Below";
      default:
        throw Exception("Ridi");
    }
  }

  String getButtonLabel() {
    switch (type) {
      case 1:
        return "Login";
      case 2:
        return "Signup";
      default:
        throw Exception("Ridi");
    }
  }

  void buttonPressed() {
    switch (type) {
      case 1:
        login(emailController!.text, passwordController!.text);
        break;
      case 2:
        signup(emailController!.text, passwordController!.text);
        break;
      default:
        throw Exception("Ridi");
    }
  }

  void passwordTextListener() {}

  Future login(String email, String password) async {
    var response = await _authService.login(email, password);
    if (response.succeeded) {
      await _storageService.writeToken(response.token, response.refreshToken);
      Get.off(() => LandingPage());
    }
  }

  Future signup(String email, String password) async {
    var response = await _authService.signup(email, password);
    if (response.succeeded) {}
  }
}
