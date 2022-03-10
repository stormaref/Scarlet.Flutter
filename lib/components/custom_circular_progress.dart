import 'package:app/colors/my_colors.dart';
import 'package:app/components/white_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomCircularProgress extends GetView {
  final Color color;
  final int progress;
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
        ),
        Text(
          progress.toString(),
          style: TextStyle(color: color),
        )
      ],
    );
  }
}
