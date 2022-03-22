import 'package:flutter/material.dart';

abstract class Statics {
  static BoxDecoration purpleShadow = BoxDecoration(boxShadow: const [
    BoxShadow(color: Color(0xFF232122), spreadRadius: 0.5, blurRadius: 16),
  ], color: Color(0xFF0B090A), borderRadius: BorderRadius.circular(8));
}
