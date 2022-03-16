import 'dart:developer';

import 'package:app/colors/my_colors.dart';
import 'package:app/components/custom_button.dart';
import 'package:app/components/custom_progress.dart';
import 'package:app/components/custom_text_field.dart';
import 'package:app/components/detail_card.dart';
import 'package:app/components/medals.dart';
import 'package:app/components/white_line.dart';
import 'package:app/components/white_text.dart';
import 'package:app/controllers/profile_controller.dart';
import 'package:app/icons/my_icons.dart';
import 'package:app/svgs/my_svgs.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ProfileView extends GetView<ProfileController> {
  final controller = Get.put(ProfileController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Center(
        child: Stack(
          children: [
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(left: 16, right: 16, top: 36),
              height: 160,
              color: MyColors.grayT1,
              child: Align(
                alignment: Alignment.topRight,
                child: IconButton(
                    splashRadius: 1,
                    icon:
                        Icon(Icons.more_vert_outlined, color: MyColors.grayT7),
                    onPressed: () => showOptionsModal(context)),
              ),
            ),
            Align(
              child: Container(
                width: double.infinity,
                margin: EdgeInsets.only(left: 48, right: 48, top: 180),
                height: 220,
                color: Color(0xFF0B090A),
                child: Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            color: Color(0xFF232122),
                            spreadRadius: 8,
                            blurRadius: 20),
                      ], color: Color(0xFF0B090A)),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(top: 72),
                          child: Text(
                            "Theresa Webb",
                            // style: TextStyle(
                            //   color: Colors.white,
                            //   fontSize: 13,
                            // ),
                            style: GoogleFonts.nunito(
                                color: Colors.white,
                                fontSize: 13,
                                fontWeight: FontWeight.bold),
                          )),
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 100),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SvgPicture.asset("assets/svg/bronze.svg"),
                          SizedBox(
                            width: 8,
                          ),
                          Text(
                            "Bronze",
                            style: TextStyle(color: MyColors.bronze),
                          )
                        ],
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 132, right: 36, left: 36),
                        child: CustomProgress(0.4),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                        padding: EdgeInsets.only(top: 144),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Spacer(),
                            Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  WhiteText("70 pts to ", 13),
                                  Text(
                                    "silver",
                                    style: GoogleFonts.nunito(
                                        fontSize: 13, color: MyColors.silver),
                                  ),
                                ]),
                            Expanded(
                              child: IconButton(
                                  alignment: Alignment.centerLeft,
                                  iconSize: 0,
                                  visualDensity: VisualDensity.compact,
                                  onPressed: () => showMedalModal(context),
                                  icon: MyIcons.info),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.topCenter,
                      child: Padding(
                          padding: EdgeInsets.only(top: 184),
                          child: Container(
                            height: 24,
                            width: 64,
                            alignment: Alignment.center,
                            child: WhiteText("80 pts", 11),
                            decoration: BoxDecoration(
                                color: MyColors.lipstick,
                                borderRadius: BorderRadius.circular(4)),
                          )),
                    ),
                  ],
                ),
              ),
              alignment: Alignment.topCenter,
            ),
            Positioned(
                top: 140,
                right: 40,
                child: IconButton(
                    onPressed: () => editBanner(context), icon: MyIcons.edit)),
            Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.only(top: 128),
                child: Container(
                  width: 112,
                  height: 112,
                  child: Stack(
                    children: [
                      CircleAvatar(
                        radius: 56,
                        child: MySvgs.FemaleAvatar,
                      ),
                      Align(
                        alignment: Alignment.bottomRight,
                        child: SizedBox(
                          height: 32,
                          width: 32,
                          child: FloatingActionButton(
                            backgroundColor: MyColors.lipstick,
                            child: MyIcons.camera,
                            onPressed: () => showCameraModal(context),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Align(
                alignment: Alignment.topCenter,
                child: Padding(
                    padding: EdgeInsets.only(top: 428),
                    child: DefaultTabController(
                        length: 3,
                        child: Column(
                          children: [
                            TabBar(
                              tabs: [
                                Tab(text: "Info"),
                                Tab(text: "Activity"),
                                Tab(text: "List")
                              ],
                              indicatorColor: MyColors.lipstick,
                              indicatorSize: TabBarIndicatorSize.label,
                              unselectedLabelColor: Colors.white,
                              labelColor: MyColors.lipstick,
                            ),
                            Expanded(
                                child: TabBarView(
                              children: [
                                GetInfoTabView(context),
                                GetActivityTabView(),
                                Text("data"),
                              ],
                            ))
                          ],
                        ))))
          ],
        ),
      ),
    );
  }

  Stack GetActivityTabView() {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          margin: EdgeInsets.only(top: 24, left: 48, right: 48),
          height: 88,
          width: double.infinity,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8), color: MyColors.grayT1),
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total Watching Time",
                  style: GoogleFonts.nunito(color: Colors.white),
                ),
                Text(
                  "500h",
                  style: GoogleFonts.nunito(color: Colors.white),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  ListView GetInfoTabView(BuildContext context) {
    return ListView(
      children: [
        DetailCard("Name", "Aref", MyIcons.profile, MyColors.lipstick,
            () => ShowNameModal(context)),
        DetailCard("Gender", "Male", MyIcons.gender, Color(0xFFE3344B),
            () => ShowGenderModal(context)),
        DetailCard(
          "Birth Year",
          "2000",
          MyIcons.calendar,
          MyColors.lipstick,
          () => ShowYearModal(context),
        )
      ],
    );
  }

  Future<dynamic> ShowNameModal(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            width: double.infinity,
            color: MyColors.background,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  right: 16,
                  left: 16,
                  top: 36,
                  child: CustomTextField(
                      "Name",
                      SvgPicture.asset(
                        "assets/icons/edit.svg",
                        color: MyColors.grayT3,
                      ),
                      // Icon(Icons.edit),
                      TextInputType.name),
                ),
                Positioned(
                  left: 16,
                  right: 16,
                  top: 108,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 35,
                          child:
                              CustomButton("Cancel", () {}, MyColors.grayT4)),
                      Expanded(
                        flex: 5,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 60,
                        child: CustomButton("Update", () {}, MyColors.lipstick),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  Future<dynamic> ShowYearModal(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            width: double.infinity,
            color: MyColors.background,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  right: 16,
                  left: 16,
                  top: 36,
                  child: CustomTextField(
                      "Year",
                      SvgPicture.asset("assets/icons/calendar.svg",
                          color: MyColors.grayT3),
                      TextInputType.number),
                ),
                Positioned(
                  left: 16,
                  right: 16,
                  top: 108,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 35,
                          child:
                              CustomButton("Cancel", () {}, MyColors.grayT4)),
                      Expanded(
                        flex: 5,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 60,
                        child: CustomButton("Update", () {}, MyColors.lipstick),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  Future<dynamic> ShowGenderModal(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 200,
            width: double.infinity,
            color: MyColors.background,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  right: 16,
                  left: 16,
                  top: 36,
                  child: Row(
                    children: GetGendersRadio(),
                  ),
                ),
                Positioned(
                  left: 16,
                  right: 16,
                  top: 108,
                  child: Row(
                    children: [
                      Expanded(
                          flex: 35,
                          child:
                              CustomButton("Cancel", () {}, MyColors.grayT4)),
                      Expanded(
                        flex: 5,
                        child: SizedBox(),
                      ),
                      Expanded(
                        flex: 60,
                        child: CustomButton("Update", () {}, MyColors.lipstick),
                      )
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  Future<dynamic> showCameraModal(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            height: 182,
            width: double.infinity,
            color: MyColors.background,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(
                  left: 16,
                  top: 24,
                  child: Text(
                    "Profile photo",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Positioned(
                  left: 16,
                  top: 64,
                  child: Row(
                    children: [
                      Column(
                        children: [
                          FloatingActionButton.small(
                            onPressed: () {},
                            backgroundColor: MyColors.lipstick,
                            child: MyIcons.delete,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Remove \nphoto",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Column(
                        children: [
                          FloatingActionButton.small(
                            onPressed: () {},
                            backgroundColor: MyColors.lipstick,
                            child: MyIcons.gallery,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Gallery\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Column(
                        children: [
                          FloatingActionButton.small(
                            onPressed: () {},
                            backgroundColor: MyColors.lipstick,
                            child: MyIcons.camera,
                          ),
                          SizedBox(
                            height: 12,
                          ),
                          Text(
                            "Camera\n",
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 11),
                          )
                        ],
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
        });
  }

  List<Widget> GetGendersRadio() {
    List<Widget> tiles = List.empty(growable: true);
    Gender.values.forEach((gender) {
      var tile = Expanded(
          flex: 1,
          child: GetBuilder<ProfileController>(
            builder: (controller) {
              return RadioListTile(
                visualDensity: VisualDensity(
                    horizontal: VisualDensity.minimumDensity,
                    vertical: VisualDensity.minimumDensity),
                contentPadding: EdgeInsets.zero,
                dense: true,
                title: Text(gender.name.capitalizeFirst.toString(),
                    style: TextStyle(color: Colors.white, fontSize: 16)),
                value: gender.index,
                groupValue: controller.selectedGender,
                onChanged: (int? value) {
                  controller.onRadioButtonClick(value);
                },
                activeColor: MyColors.lipstick,
              );
            },
          ));
      tiles.add(tile);
    });
    return tiles;
  }

  Future<dynamic> showOptionsModal(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          var container = Container(
            height: 182,
            width: double.infinity,
            color: MyColors.background,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                Positioned(top: 12, child: WhiteLine()),
                Positioned(
                  top: 40,
                  left: 16,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      GestureDetector(
                        onTap: () => aboutUs(),
                        child: Row(
                          children: [
                            MyIcons.info,
                            SizedBox(
                              width: 16,
                            ),
                            WhiteText("About us", 15)
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 40,
                      ),
                      GestureDetector(
                        onTap: () => logout(),
                        child: Row(
                          children: [
                            MyIcons.logout,
                            SizedBox(
                              width: 16,
                            ),
                            WhiteText("Logout", 15)
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          );
          return container;
        });
  }

  void logout() {
    log("message");
  }

  aboutUs() {}

  editBanner(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Container(
            color: MyColors.background,
            height: 148,
            child: Padding(
              padding: EdgeInsets.only(left: 16),
              child: Column(
                children: [
                  Padding(
                      padding: EdgeInsets.only(top: 12), child: WhiteLine()),
                  Padding(
                    padding: EdgeInsets.only(top: 24),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          MyIcons.gallery,
                          SizedBox(
                            width: 16,
                          ),
                          WhiteText("Change Cover from TvShows", 16)
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 36),
                    child: GestureDetector(
                      onTap: () {},
                      child: Row(
                        children: [
                          MyIcons.gallery,
                          SizedBox(
                            width: 16,
                          ),
                          WhiteText("Change Cover from TvShows", 16)
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        });
  }

  showMedalModal(BuildContext context) {
    return showModalBottomSheet(
        context: context,
        builder: (BuildContext context) {
          return Medals();
        });
  }
}
