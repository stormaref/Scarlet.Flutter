import 'package:app/colors/my_colors.dart';
import 'package:app/components/custom_button.dart';
import 'package:app/components/custom_text_field.dart';
import 'package:app/components/white_text.dart';
import 'package:app/icons/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class LoginPage extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Container(
        width: double.infinity,
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Padding(
          padding: EdgeInsets.only(top: 112),
          child: Column(children: [
            WhiteText("Welcome Back", 24),
            Padding(
                padding: EdgeInsets.only(top: 8),
                child: WhiteText("Login By Entering The Details Below", 15)),
            Padding(
              padding: EdgeInsets.only(top: 48),
              child: CustomTextField(
                  "Email",
                  SvgPicture.asset(
                    "assets/icons/email.svg",
                    color: MyColors.grayT3,
                  ),
                  TextInputType.emailAddress),
            ),
            Padding(
              padding: EdgeInsets.only(top: 24),
              child: CustomTextField(
                  "Password",
                  SvgPicture.asset(
                    "assets/icons/password.svg",
                    color: MyColors.grayT3,
                  ),
                  TextInputType.visiblePassword),
            ),
            Padding(
              padding: EdgeInsets.only(top: 36),
              child: CustomButton("Login", () {}, MyColors.grayT2),
            )
          ]),
        ),
      ),
    );
  }
}
