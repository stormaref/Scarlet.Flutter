import 'package:app/colors/my_colors.dart';
import 'package:app/components/custom_button.dart';
import 'package:app/components/custom_button_icon.dart';
import 'package:app/components/white_text.dart';
import 'package:app/icons/my_icons.dart';
import 'package:app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
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
                  padding: EdgeInsets.only(top: 160),
                  child: SizedBox(
                      width: double.infinity,
                      child:
                          CustomButton("Sign Up", () {}, MyColors.lipstick))),
              Padding(
                padding: EdgeInsets.only(top: 32),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 1,
                        decoration: BoxDecoration(color: MyColors.grayT3),
                      ),
                    ),
                    SizedBox(
                      width: 24,
                    ),
                    WhiteText("OR", 14),
                    SizedBox(
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
                padding: EdgeInsets.only(top: 32),
                child: SizedBox(
                  width: double.infinity,
                  child: CustomButtonIcon("Continue With Google", () {},
                      MyColors.grayT4, MyIcons.google),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 16),
                child: SizedBox(
                  width: double.infinity,
                  child: CustomButton(
                      "Login As a Guest", () {}, MyColors.grayT8,
                      textColor: MyColors.grayT2),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 72),
                child: WhiteText("Already Have an Account?", 15),
              ),
              Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: SizedBox(
                      width: double.infinity,
                      child: CustomButton("Login", () {
                        Get.to(LoginPage());
                      }, MyColors.lipstick)))
            ],
          ),
        ));
  }
}
