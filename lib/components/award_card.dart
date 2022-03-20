import 'dart:developer';

import 'package:app/colors/my_colors.dart';
import 'package:app/components/white_text.dart';
import 'package:app/svgs/my_svgs.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class AwardCard extends GetView {
  int id;
  String label;

  AwardCard(this.id, this.label);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        log(id.toString() + ' Pressed');
      },
      child: Container(
          width: 156,
          height: 72,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            color: MyColors.grayT1,
          ),
          child: Stack(
            children: [
              Positioned(left: 8, top: 8, child: WhiteText(label, 15)),
              Positioned(right: 8, bottom: 8, child: MySvgs.circles)
            ],
          )),
    );
  }
}
