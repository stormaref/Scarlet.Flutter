import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class WhiteText extends GetView {
  final String text;
  final double? size;

  WhiteText(this.text, this.size);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.nunito(color: Colors.white, fontSize: size),
      textAlign: TextAlign.center,
    );
  }
}
