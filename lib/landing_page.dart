import 'package:app/bookmark.dart';
import 'package:app/colors/my_colors.dart';
import 'package:app/explore.dart';
import 'package:app/home.dart';
import 'package:app/icons/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'controllers/landing_controller.dart';
import 'profile.dart';

class LandingPage extends GetView<LandingController> {
  LandingPage({Key? key, required this.title}) : super(key: key);

  var controller = Get.put(LandingController());
  final String title;

  @override
  Widget build(BuildContext context) {
    return GetBuilder<LandingController>(builder: (controller) {
      return Scaffold(
        backgroundColor: MyColors.background,
        body: SafeArea(
            child: IndexedStack(
          index: controller.tabIndex,
          children: [
            HomeView(),
            ExploreView(),
            BookmarkView(),
            ProfileView(),
          ],
        )),
        bottomNavigationBar: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            onTap: controller.changeTabIndex,
            currentIndex: controller.tabIndex,
            backgroundColor: MyColors.background,
            // fixedColor: MyColors.lipstick,
            selectedItemColor: MyColors.lipstick,
            unselectedItemColor: MyColors.grayT5,
            unselectedFontSize: 0,
            selectedIconTheme:
                IconThemeData(color: MyColors.lipstick, opacity: 1),
            items: [
              BottomNavigationBarItem(
                  icon: MyIcons().home(MyColors.grayT5),
                  label: "Home",
                  activeIcon: MyIcons().home(MyColors.lipstick)),
              BottomNavigationBarItem(
                  icon: MyIcons().explore(MyColors.grayT5),
                  label: "Explore",
                  activeIcon: MyIcons().explore(MyColors.lipstick)),
              BottomNavigationBarItem(
                  icon: MyIcons().watchlistBookmark(MyColors.grayT5),
                  label: "Bookmark",
                  activeIcon: MyIcons().watchlistBookmark(MyColors.lipstick)),
              BottomNavigationBarItem(
                  icon: MyIcons().profile(MyColors.grayT5),
                  label: "Profile",
                  activeIcon: MyIcons().profile(MyColors.lipstick)),
            ]),
      );
    });
  }
}
