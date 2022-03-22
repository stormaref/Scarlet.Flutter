import 'package:app/colors/my_colors.dart';
import 'package:app/components/custom_circular_progress.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class TitledCircularProgress extends GetView {
  final Color color;
  final double progress;
  final int scale;
  final String title;

  TitledCircularProgress(this.color, this.progress, this.scale, this.title);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72,
      child: Column(
        children: [
          CustomCircularProgress(color, progress, scale),
          Padding(
            padding: const EdgeInsets.only(top: 4),
            child: Text(
              title,
              textAlign: TextAlign.center,
              style: GoogleFonts.nunito(color: MyColors.grayT7),
            ),
          ),
        ],
      ),
    );
  }
}
