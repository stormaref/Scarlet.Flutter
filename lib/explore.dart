import 'package:app/colors/my_colors.dart';
import 'package:app/components/custom_segmented_control.dart';
import 'package:app/components/line_button.dart';
import 'package:app/controllers/custom_tab_controller.dart';
import 'package:app/controllers/explore_controller.dart';
import 'package:app/icons/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreView extends GetView<ExploreController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(ExploreController());
    var ctc = Get.put(CustomTabController(
        (value) => controller.segmentedValueChanged(value)));
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Container(
        padding: const EdgeInsets.only(left: 16, right: 16, top: 36),
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
                        icon: MyIcons().search(Colors.white)))
              ],
            ),
            Padding(
                padding: const EdgeInsets.only(top: 36),
                child: LineButton("Recommended TVShow For you",
                    MyIcons().movie(Colors.white))),
            Padding(
                padding: const EdgeInsets.only(top: 24),
                child: LineButton("New Releases", MyIcons().tv(Colors.white))),
            Padding(
              padding: const EdgeInsets.only(top: 24),
              child: LineButton("Populars", MyIcons().ticket(Colors.white)),
            ),
          ],
        ),
      ),
    );
  }
}
