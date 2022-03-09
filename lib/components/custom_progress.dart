import 'package:app/colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomProgress extends GetView {
  final double value;

  CustomProgress(this.value);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: LinearProgressIndicator(
        backgroundColor: MyColors.grayT3,
        color: MyColors.lipstick,
        minHeight: 10,
        value: value,
      ),
    );
    ;
  }
}
