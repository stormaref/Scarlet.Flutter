import 'package:app/colors/my_colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class CustomTextField extends GetView {
  final String labelText;
  final Widget prefixIcon;
  final TextInputType inputType;
  Widget? suffixIcon;
  bool obscureText;
  final FormFieldSetter<String>? onSaved;
  final FormFieldValidator<String>? validator;
  VoidCallback? toggleCallback;
  TextEditingController? textEditingController;

  CustomTextField(this.labelText, this.prefixIcon, this.inputType,
      {this.suffixIcon,
      this.obscureText = false,
      this.onSaved,
      this.validator,
      this.textEditingController,
      this.toggleCallback});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        keyboardType: inputType,
        cursorColor: MyColors.grayT3,
        onSaved: onSaved,
        validator: validator,
        obscureText: obscureText,
        controller: textEditingController,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: MyColors.grayT3),
          labelText: labelText,
          labelStyle: TextStyle(color: MyColors.grayT3),
          filled: true,
          fillColor: MyColors.input,
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none),
          prefixIcon:
              Padding(padding: const EdgeInsets.all(10), child: prefixIcon),
          suffixIcon: suffixIcon != null
              ? GestureDetector(
                  onTap: toggleCallback,
                  child: Padding(
                      padding: const EdgeInsets.all(10), child: suffixIcon))
              : const SizedBox(
                  width: 0,
                  height: 0,
                ),
        ));
  }
}
