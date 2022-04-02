import 'package:app/colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomCircularProgress extends GetView {
  final Color color;
  final double progress;
  final int scale;

  CustomCircularProgress(this.color, this.progress, this.scale);

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.center,
      children: [
        CircularProgressIndicator(
          color: color,
          value: progress / scale,
          strokeWidth: 1,
          backgroundColor: MyColors.devider,
        ),
        Text(
          getLabel(),
          style: TextStyle(color: color),
        )
      ],
    );
  }

  String getLabel() {
    var rounded = progress.toInt();
    if (rounded == progress) return rounded.toString();
    return progress.toString();
  }
}
