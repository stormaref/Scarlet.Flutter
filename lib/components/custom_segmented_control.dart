import 'package:animated_segmented_tab_control/animated_segmented_tab_control.dart';
import 'package:app/colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomSegmentedControl extends GetView {
  final TabController? controller;

  CustomSegmentedControl(this.controller);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 172,
      child: SegmentedTabControl(
        height: 40,
        controller: controller,
        textStyle: GoogleFonts.nunito(fontSize: 13),
        radius: const Radius.circular(100),
        backgroundColor: MyColors.grayT5,
        indicatorColor: MyColors.lipstick,
        tabTextColor: MyColors.grayBlack,
        selectedTabTextColor: Colors.white,
        tabs: [
          const SegmentTab(label: "TVShows"),
          const SegmentTab(label: "Movies")
        ],
      ),
    );
    ;
  }
}
