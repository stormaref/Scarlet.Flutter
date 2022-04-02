import 'package:app/colors/my_colors.dart';
import 'package:app/components/custom_text.dart';
import 'package:app/components/white_text.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

enum RatingIntensity { low, medium, high }

class RatingRow extends GetView {
  RatingIntensity intensity;
  String title;

  RatingRow(this.intensity, this.title);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 12,
          height: 20,
          color: getColor(),
        ),
        const SizedBox(
          width: 16,
        ),
        WhiteText(title, 14),
        const SizedBox(
          width: 8,
        ),
        CustomText(getText(), MyColors.grayT8, 14)
      ],
    );
  }

  Color getColor() {
    switch (intensity) {
      case RatingIntensity.high:
        return MyColors.lipstick;
      case RatingIntensity.medium:
        return MyColors.orange;
      case RatingIntensity.low:
        return MyColors.yellow;
    }
  }

  String getText() {
    switch (intensity) {
      case RatingIntensity.high:
        return "High";
      case RatingIntensity.medium:
        return "Mild";
      case RatingIntensity.low:
        return "Low";
    }
  }
}
