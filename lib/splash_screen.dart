import 'package:app/colors/my_colors.dart';
import 'package:app/components/white_text.dart';
import 'package:app/controllers/splash_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class SplashScreen extends GetView<SplashController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SplashController());
    return GetBuilder<SplashController>(builder: (controller) {
      return Scaffold(
        backgroundColor: MyColors.background,
        body: Container(
          decoration: BoxDecoration(
              gradient: LinearGradient(
            colors: [
              Colors.black,
              MyColors.background,
              const Color.fromARGB(255, 56, 56, 56)
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          )),
          child: Stack(
            children: [
              Positioned(
                  top: 176,
                  left: 0,
                  right: 0,
                  child: WhiteText("Scarlet Chair", 28)),
              Positioned(
                  bottom: 32,
                  left: 0,
                  right: 0,
                  child: WhiteText("Version 1.0", 16)),
              Positioned(
                  bottom: 92,
                  left: 0,
                  right: 0,
                  child: SpinKitCircle(
                    color: MyColors.lipstick,
                  ))
            ],
          ),
        ),
      );
    });
  }
}
