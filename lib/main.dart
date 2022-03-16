import 'package:app/bookmark.dart';
import 'package:app/colors/my_colors.dart';
import 'package:app/controllers/landing_controller.dart';
import 'package:app/explore.dart';
import 'package:app/home.dart';
import 'package:app/icons/my_icons.dart';
import 'package:app/landing_page.dart';
import 'package:app/membership.dart';
import 'package:app/profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends GetView {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Scarlet Chair',
      theme: ThemeData(
        unselectedWidgetColor: Colors.white,
        primarySwatch: Colors.blue,
      ),
      // home: LandingPage(title: 'Landing Page'),
      home: Membership(),
    );
  }
}
