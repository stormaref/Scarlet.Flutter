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
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Stack(
          children: [
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WhiteText("Hi Aref", 25),
                    IconButton(
                      onPressed: () {},
                      icon: MyIcons.search,
                      splashRadius: 10,
                    )
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Container(
                    alignment: Alignment.centerLeft,
                    child: WhiteText("Let’s Choose your Favourits", 15))
              ],
            ),
            Container(
              constraints: BoxConstraints(maxHeight: 560),
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 180),
              child: Image.network(
                  "https://m.media-amazon.com/images/M/MV5BOGE2NWUwMDItMjA4Yi00N2Y3LWJjMzEtMDJjZTMzZTdlZGE5XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_FMjpg_UY720_.jpg"),
            ),
            Container(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: EdgeInsets.only(bottom: 24),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
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
          ],
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