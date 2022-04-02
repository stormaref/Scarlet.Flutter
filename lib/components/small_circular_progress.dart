import 'package:app/colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SmallCircularProgress extends GetView {
  final Color color;
  final double progress;
  final int scale;

  SmallCircularProgress(this.color, this.progress, this.scale);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 16,
      height: 16,
      child: CircularProgressIndicator(
        color: color,
        value: progress / scale,
        strokeWidth: 1,
        backgroundColor: MyColors.devider,
      ),
    );
  }
}
