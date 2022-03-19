import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginController extends GetxController {
  bool obscureText = true;
  TextEditingController? textEditingController;
  bool emailSuffixIcon = false;
  LoginController() {
    textEditingController = TextEditingController();
    textEditingController?.addListener(emailTextListener);
  }
  passwordToggle() {
    obscureText = !obscureText;
    update();
  }

  emailTextListener() {
    if (textEditingController != null) {
      var check = textEditingController?.text.isNotEmpty;
      if (check != null) emailSuffixIcon = check;
    }
    update();
  }

  clearText() {
    textEditingController?.text = "";
  }
}
