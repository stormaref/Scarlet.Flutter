import 'dart:async';

import 'package:app/landing_page.dart';
import 'package:app/membership.dart';
import 'package:app/services/auth_service.dart';
import 'package:app/services/token_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashController extends GetxController {
  late AuthService _authService;
  late TokenService _storageService;

  SplashController() {
    _authService = AuthService();
    _storageService = TokenService();
  }

  @override
  Future<void> onInit() async {
    await checkToken();
    super.onInit();
  }

  Future checkToken() async {
    var token = await _storageService.readToken();
    if (token == null) {
      run(() => Get.off(() => Membership()));
      return;
    }
    var acceptable = await _authService.testToken(token);
    if (!acceptable) {
      run(() => Get.off(() => Membership()));
      return;
    }
    run(() => Get.off(() => LandingPage()));
  }

  void run(VoidCallback callback) =>
      Timer(const Duration(seconds: 1), callback);
}
