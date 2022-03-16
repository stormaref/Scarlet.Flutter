import 'package:app/colors/my_colors.dart';
import 'package:app/icons/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomButton extends GetView {
  final String text;
  final VoidCallback callback;
  final Color backgroundColor;
  final Color? textColor;
  final Widget? icon;

  CustomButton(this.text, this.callback, this.backgroundColor,
      {this.textColor = Colors.white, this.icon = null});

  @override
  Widget build(BuildContext context) {
    var label = Text(text,
        style:
            GoogleFonts.nunito(color: textColor, fontWeight: FontWeight.bold));
    return MaterialButton(
      onPressed: callback,
      height: 56,
      textColor: textColor,
      disabledColor: MyColors.grayT2,
      color: backgroundColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(child: Row(children: [icon ?? Container(), const Spacer()])),
          label,
          const Spacer(),
        ],
      ),
    );
  }
}
