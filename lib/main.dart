import 'package:app/landing_page.dart';
import 'package:app/search_result.dart';
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
      home: LandingPage(title: 'Landing Page'),
      // home: SearchResult(),
    );
  }
}
