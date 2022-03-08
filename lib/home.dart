import 'package:app/colors/my_colors.dart';
import 'package:app/components/white_text.dart';
import 'package:app/icons/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class HomeView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Container(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: EdgeInsets.only(bottom: 24, left: 24, right: 24),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
            FloatingActionButton.large(
              onPressed: () {},
              backgroundColor: MyColors.grayT5,
              child: SvgPicture.asset(
                "assets/icons/show.svg",
                color: MyColors.grayT1,
                height: 40,
              ),
            ),
            FloatingActionButton.large(
              onPressed: () {},
              backgroundColor: MyColors.lipstick,
              child: SvgPicture.asset(
                "assets/icons/delete.svg",
                color: MyColors.grayT1,
                height: 40,
              ),
            ),
            FloatingActionButton.large(
              onPressed: () {},
              backgroundColor: MyColors.grayT5,
              child: SvgPicture.asset(
                "assets/icons/watchlist_bookmark.svg",
                color: MyColors.grayT1,
                height: 40,
              ),
            )
          ]),
        ),
      ),
    );
    // body: Container(
    //   child: Positioned(
    //   bottom: 24,
    //   child: Row(
    //     children: [
    //       FloatingActionButton.large(
    //           onPressed: () {},
    //           child: SvgPicture.asset(
    //             "assets/icons/show.svg",
    //             color: MyColors.grayT1,
    //           ))
    //     ],
    //   ),
    // )),

    // alignment: Alignment.bottomLeft,
  }
}
