import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:app/colors/my_colors.dart';
import 'package:app/components/custom_circular_progress.dart';
import 'package:app/components/custom_segmented_control.dart';
import 'package:app/components/white_text.dart';
import 'package:app/controllers/custom_tab_controller.dart';
import 'package:app/controllers/explore_controller.dart';
import 'package:app/icons/my_icons.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class ExploreView extends GetView<ExploreController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ExploreController());
    var ctc = Get.put(CustomTabController(
        (value) => controller.segmentedValueChanged(value)));
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Container(
        padding: EdgeInsets.only(left: 16, right: 16, top: 36),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Spacer(),
                CustomSegmentedControl(ctc.tabController),
                Expanded(
                    child: IconButton(
                        alignment: Alignment.centerRight,
                        onPressed: () {},
                        icon: MyIcons.search))
              ],
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    MyIcons.movie,
                    WhiteText("Recommended TVShow For you", 15),
                    MyIcons.arrowRight
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    MyIcons.tv,
                    WhiteText("Recommended TVShow For you", 15),
                    MyIcons.arrowRight
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 16),
              child: GestureDetector(
                onTap: () {},
                child: Row(
                  children: [
                    MyIcons.ticket,
                    WhiteText("Recommended TVShow For you", 15),
                    MyIcons.arrowRight
                  ],
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
