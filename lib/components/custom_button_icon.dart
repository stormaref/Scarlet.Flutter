import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomButtonIcon extends GetView {
  final String text;
  final VoidCallback callback;
  final Color backgroundColor;
  final Widget icon;

  CustomButtonIcon(this.text, this.callback, this.backgroundColor, this.icon);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
        icon: icon,
        label: Text(text),
        style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all(Colors.white),
            backgroundColor: MaterialStateProperty.all(backgroundColor),
            minimumSize: MaterialStateProperty.all(Size(0, 56))),
        onPressed: callback);
  }
}
