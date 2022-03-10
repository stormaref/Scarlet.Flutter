import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class WhiteLine extends GetView {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: 56,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(2), color: Colors.white),
    );
  }
}
