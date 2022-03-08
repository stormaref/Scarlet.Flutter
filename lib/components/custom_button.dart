import 'package:app/colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomButton extends GetView {
  final String text;
  final VoidCallback callback;
  final Color backgroundColor;

  CustomButton(this.text, this.callback, this.backgroundColor);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.white),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            minimumSize: MaterialStateProperty.all(Size(0, 56))),
        onPressed: callback,
        child: Text(text));
  }
}
