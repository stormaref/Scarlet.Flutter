import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomText extends GetView {
  String text;
  Color color;
  double size;
  CustomText(this.text, this.color, this.size);
  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.nunito(color: color, fontSize: size),
    );
  }
}
