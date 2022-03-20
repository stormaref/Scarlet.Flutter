import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginController extends GetxController {
  bool obscureText = true;
  TextEditingController? emailController;
  TextEditingController? passwordController;
  bool emailSuffixIcon = false;
  int type;

  LoginController(this.type) {
    emailController = TextEditingController();
    emailController?.addListener(emailTextListener);
    passwordController = TextEditingController();
    passwordController?.addListener(passwordTextListener);
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

  void login(String email, String password) {}

  void signup(String text, String text2) {}
}
