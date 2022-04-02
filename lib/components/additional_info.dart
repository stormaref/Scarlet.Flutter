import 'package:app/colors/my_colors.dart';
import 'package:app/components/custom_text.dart';
import 'package:app/components/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AdditionalInfo extends GetView {
  String title;
  String value;

  AdditionalInfo(this.title, this.value);

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.only(top: 6),
          child: CircleAvatar(
            backgroundColor: MyColors.lipstick,
            radius: 4,
          ),
        ),
        const SizedBox(
          width: 16,
        ),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            WhiteText(title, 14),
            const SizedBox(
              height: 8,
            ),
            CustomText(value, MyColors.grayT7, 12)
          ],
        )
      ],
    );
  }
}
