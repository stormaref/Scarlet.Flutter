import 'package:flutter/material.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class Statics {
  static BoxDecoration purpleShadow = BoxDecoration(boxShadow: const [
    BoxShadow(color: Color(0xFF232122), spreadRadius: 0.5, blurRadius: 16),
  ], color: const Color(0xFF0B090A), borderRadius: BorderRadius.circular(8));

  static var storage = const FlutterSecureStorage();
}
