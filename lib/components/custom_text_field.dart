import 'package:app/colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomTextField extends GetView {
  final String labelText;
  final Widget icon;
  final TextInputType inputType;

  CustomTextField(this.labelText, this.icon, this.inputType);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: inputType,
        cursorColor: MyColors.grayT3,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: MyColors.grayT3),
          labelText: labelText,
          labelStyle: TextStyle(color: MyColors.grayT3),
          filled: true,
          fillColor: MyColors.input,
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none),
          prefixIcon: Padding(padding: EdgeInsets.all(10), child: icon),
          // prefixIconConstraints: BoxConstraints.tight(),
        ));
  }
}
