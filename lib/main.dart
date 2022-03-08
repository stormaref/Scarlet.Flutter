import 'package:app/bookmark.dart';
import 'package:app/colors/my_colors.dart';
import 'package:app/controllers/landing_controller.dart';
import 'package:app/explore.dart';
import 'package:app/home.dart';
import 'package:app/icons/my_icons.dart';
import 'package:app/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends GetView {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Scarlet Chair',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        // splashColor: Colors.transparent,
        unselectedWidgetColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      home: LandingPage(title: 'Main page'),
    );
  }
}

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
                  icon: MyIcons.homeDisabled,
                  label: "Home",
                  activeIcon: MyIcons.homeEnabled),
              BottomNavigationBarItem(
                  icon: MyIcons.exploreDisabled,
                  label: "Explore",
                  activeIcon: MyIcons.exploreEnabled),
              BottomNavigationBarItem(
                  icon: MyIcons.watchlistBookmarkDisabled,
                  label: "Bookmark",
                  activeIcon: MyIcons.watchlistBookmarkEnabled),
              BottomNavigationBarItem(
                  icon: MyIcons.profileDisabled,
                  label: "Profile",
                  activeIcon: MyIcons.profileEnabled),
            ]),
      );
    });
  }
}
