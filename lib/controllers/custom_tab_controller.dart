import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

typedef IntCallback = Function(int value);

class CustomTabController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final IntCallback callback;
  var currentTabIndex = 0;
  late TabController tabController;

  CustomTabController(this.callback);
  @override
  void onInit() {
    tabController = TabController(length: 2, vsync: this);
    tabController.addListener(() {
      currentTabIndex = tabController.index;
      callback.call(currentTabIndex);
    });
    super.onInit();
  }

  @override
  void onClose() {
    tabController.dispose();
    super.onClose();
  }
}
