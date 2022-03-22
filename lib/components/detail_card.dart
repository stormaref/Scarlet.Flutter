import 'package:app/components/white_text.dart';
import 'package:app/icons/my_icons.dart';
import 'package:app/tools/statics.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class DetailCard extends GetView {
  final String title;
  final String value;
  final Widget icon;
  final Color circleColor;
  final VoidCallback buttonCallback;

  DetailCard(
      this.title, this.value, this.icon, this.circleColor, this.buttonCallback);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: Statics.purpleShadow,
      height: 104,
      child: Stack(
        children: [
          Positioned(
              left: 16,
              top: 32,
              bottom: 32,
              child: CircleAvatar(
                  radius: 20, backgroundColor: circleColor, child: icon)),
          Positioned(
              left: 72,
              top: 28,
              bottom: 28,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [WhiteText(title, 15), WhiteText(value, 11)],
              )),
          Positioned(
              right: 18,
              bottom: 42,
              top: 42,
              child: IconButton(
                padding: const EdgeInsets.all(0),
                icon: MyIcons().arrowBottomCircle(Colors.white),
                onPressed: buttonCallback,
              ))
        ],
      ),
    );
  }
}
