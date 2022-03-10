import 'package:app/colors/my_colors.dart';
import 'package:app/components/custom_circular_progress.dart';
import 'package:app/components/custom_progress.dart';
import 'package:app/components/white_text.dart';
import 'package:app/icons/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BookmarkCard extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 160,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: MyColors.background,
        boxShadow: [
          const BoxShadow(
              color: Color(0xFF232122), spreadRadius: 2, blurRadius: 30)
        ],
      ),
      child: Row(children: [
        Expanded(
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(left: 8, top: 8, bottom: 8),
              child: Image.network(
                  "https://m.media-amazon.com/images/M/MV5BOGE2NWUwMDItMjA4Yi00N2Y3LWJjMzEtMDJjZTMzZTdlZGE5XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_FMjpg_UY720_.jpg"),
            )),
        SizedBox(
          width: 8,
        ),
        Expanded(
          flex: 2,
          child: Padding(
            padding: EdgeInsets.only(top: 8, bottom: 8, right: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    WhiteText("Queen’s Gambit", 15),
                    Padding(
                        padding: EdgeInsets.only(top: 4),
                        child: WhiteText("S02E02 - Summer living", 11)),
                    Padding(
                      padding: EdgeInsets.only(top: 8, right: 0),
                      child: CustomProgress(0.4),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            WhiteText("18 h Left", 11),
                            WhiteText("13/100", 11),
                            MyIcons.show
                          ]),
                    )
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(bottom: 8, right: 16),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomCircularProgress(Colors.white, 9, 10),
                      WhiteText("Ended", 13)
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
