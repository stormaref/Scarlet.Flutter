import 'package:app/colors/my_colors.dart';
import 'package:app/components/custom_circular_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class TitledCircularProgress extends GetView {
  final Color color;
  final int progress;
  final int scale;
  final String title;

  TitledCircularProgress(this.color, this.progress, this.scale, this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        CustomCircularProgress(color, progress, scale),
        Padding(
          padding: EdgeInsets.only(top: 4),
          child: Text(
            title,
            style: TextStyle(color: MyColors.grayT7),
          ),
        )
      ],
    );
  }
}
