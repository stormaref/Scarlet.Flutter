import 'package:app/components/white_text.dart';
import 'package:app/icons/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LineButton extends GetView {
  final String text;
  final Widget icon;

  LineButton(this.text, this.icon);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        children: [
          icon,
          const SizedBox(
            width: 16,
          ),
          WhiteText(text, 15),
          const Spacer(),
          MyIcons.arrowRight
        ],
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
      ),
    );
  }
}
