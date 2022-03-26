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
    var type = Get.arguments;
    var controller = Get.put(LoginController(type));
    return GetBuilder<LoginController>(builder: (controller) {
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
                  child: WhiteText(controller.getTitleText(), 15)),
              Padding(
                padding: const EdgeInsets.only(top: 48),
                child: CustomTextField(
                    "Email",
                    SvgPicture.asset(
                      "assets/icons/email.svg",
                      color: MyColors.grayT3,
                    ),
                    TextInputType.emailAddress,
                    textEditingController: controller.emailController,
                    toggleCallback: controller.clearText,
                    validator: (value) => value != null
                        ? (GetUtils.isEmail(value) ? null : "Email is invalid")
                        : null,
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
                    textEditingController: controller.passwordController,
                    suffixIcon: controller.obscureText
                        ? MyIcons().show(MyColors.grayT3)
                        : MyIcons().hide(MyColors.grayT3),
                    toggleCallback: controller.passwordToggle),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 36),
                child: CustomButton(controller.getButtonLabel(),
                    controller.buttonPressed, MyColors.lipstick),
              )
            ]),
          ),
        ),
      );
    });
  }
}
