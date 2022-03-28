import 'package:app/colors/my_colors.dart';
import 'package:app/components/white_text.dart';
import 'package:app/controllers/verification_controller.dart';
import 'package:app/icons/my_icons.dart';
import 'package:app/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';
import 'package:get/get.dart';

class Verification extends GetView<VerificationController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(VerificationController());
    return GetBuilder<VerificationController>(builder: (controller) {
      return Scaffold(
        backgroundColor: MyColors.background,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 112),
                    child: WhiteText("Code Verify", 24)),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: WhiteText("Enter the code we've sent you", 16),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      WhiteText("storm.aref@gmail.com", 16),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 12,
                              ),
                              IconButton(
                                  onPressed: () => Get.back(),
                                  splashRadius: 16,
                                  icon: MyIcons().edit(Colors.white)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
