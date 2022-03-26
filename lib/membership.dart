import 'package:app/colors/my_colors.dart';
import 'package:app/components/custom_button.dart';
import 'package:app/components/white_text.dart';
import 'package:app/landing_page.dart';
import 'package:app/login_page.dart';
import 'package:app/svgs/my_svgs.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Membership extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: MyColors.background,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          width: double.infinity,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 160),
                  child: SizedBox(
                      width: double.infinity,
                      child: CustomButton(
                          "Sign Up",
                          () => Get.to(() => LoginPage(), arguments: 2),
                          MyColors.lipstick))),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(color: MyColors.grayT3),
                      ),
                    ),
                    const SizedBox(
                      width: 24,
                    ),
                    WhiteText("OR", 14),
                    const SizedBox(
                      width: 24,
                    ),
                    Expanded(
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(color: MyColors.grayT3),
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 32),
                child: CustomButton(
                    "Continue With Google", () {}, MyColors.grayT4,
                    icon: MySvgs.google),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 16),
                child: CustomButton("Login As a Guest", () {}, MyColors.grayT8,
                    textColor: MyColors.grayT2),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 72),
                child: WhiteText("Already Have an Account?", 15),
              ),
              Padding(
                  padding: const EdgeInsets.only(top: 16),
                  child: CustomButton(
                      "Login",
                      () => Get.to(() => LoginPage(), arguments: 1),
                      MyColors.lipstick))
            ],
          ),
        ));
  }
}
