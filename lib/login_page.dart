import 'package:app/colors/my_colors.dart';
import 'package:app/components/custom_button.dart';
import 'package:app/components/custom_text_field.dart';
import 'package:app/components/white_text.dart';
import 'package:app/controllers/login_controller.dart';
import 'package:app/icons/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(LoginController());
    return GetBuilder<LoginController>(builder: (controller) {
      var textEditingController;
      return Scaffold(
        backgroundColor: MyColors.background,
        body: Container(
          width: double.infinity,
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Padding(
            padding: const EdgeInsets.only(top: 112),
            child: Column(children: [
              WhiteText("Welcome Back", 24),
              Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: WhiteText("Login By Entering The Details Below", 15)),
              Padding(
                padding: const EdgeInsets.only(top: 48),
                child: CustomTextField(
                    "Email",
                    SvgPicture.asset(
                      "assets/icons/email.svg",
                      color: MyColors.grayT3,
                    ),
                    TextInputType.emailAddress,
                    textEditingController: controller.textEditingController,
                    toggleCallback: controller.clearText,
                    suffixIcon: controller.emailSuffixIcon
                        ? MyIcons().cancel(MyColors.grayT3)
                        : null),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 24),
                child: CustomTextField(
                    "Password",
                    SvgPicture.asset(
                      "assets/icons/password.svg",
                      color: MyColors.grayT3,
                    ),
                    TextInputType.visiblePassword,
                    obscureText: controller.obscureText,
                    suffixIcon: controller.obscureText
                        ? MyIcons().show(MyColors.grayT3)
                        : MyIcons().hide(MyColors.grayT3),
                    toggleCallback: controller.passwordToggle),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: CustomButton("Login", () {}, MyColors.grayT2),
              )
            ]),
          ),
        ),
      );
    });
  }
}
