import 'package:app/colors/my_colors.dart';
import 'package:app/components/white_line.dart';
import 'package:app/components/white_text.dart';
import 'package:app/svgs/my_svgs.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class Medals extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400,
      width: double.infinity,
      color: MyColors.background,
      child: Column(children: [
        Padding(padding: EdgeInsets.only(top: 12), child: WhiteLine()),
        Padding(
            padding: EdgeInsets.only(top: 24),
            child: WhiteText("Coming Soon", 15)),
        Padding(
          padding: EdgeInsets.only(top: 16),
          child: SvgPicture.asset(
            "assets/svg/bronze.svg",
            width: 66,
            height: 88,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 8),
          child: Text(
            "Bronze",
            style: GoogleFonts.nunito(color: MyColors.bronze, fontSize: 24),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(top: 12, left: 78, right: 78),
          child: WhiteText("Earn Points on every vote for Movies/TVShows", 15),
        ),
        Padding(
          padding: EdgeInsets.only(top: 36),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      MySvgs.bronze,
                      Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 36,
                          decoration: BoxDecoration(
                              color: MyColors.grayT1,
                              borderRadius: BorderRadius.circular(8)),
                          child: WhiteText("0 - 200", 15),
                        ),
                      )
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      MySvgs.silver,
                      Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 36,
                          decoration: BoxDecoration(
                              color: MyColors.grayT1,
                              borderRadius: BorderRadius.circular(8)),
                          child: WhiteText("201 - 300", 15),
                        ),
                      )
                    ],
                  )),
              Expanded(
                  flex: 1,
                  child: Column(
                    children: [
                      MySvgs.gold,
                      Padding(
                        padding: EdgeInsets.only(top: 12),
                        child: Container(
                          alignment: Alignment.center,
                          width: 100,
                          height: 36,
                          decoration: BoxDecoration(
                              color: MyColors.grayT1,
                              borderRadius: BorderRadius.circular(8)),
                          child: WhiteText("301 - 500", 15),
                        ),
                      )
                    ],
                  )),
            ],
          ),
        )
      ]),
    );
  }
}
