import 'package:app/colors/my_colors.dart';
import 'package:app/controllers/custom_tab_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

typedef IntStringCallback = Function(int value, String text);

class SquareTextField extends GetView {
  late TextEditingController textEditingController;

  SquareTextField(IntStringCallback callback, int id) {
    textEditingController = TextEditingController();
    textEditingController.addListener(() {
      var text = textEditingController.text;
      if (text.length > 1) {
        var last = text.characters.last;
        textEditingController.value = TextEditingValue(text: last);
        return;
      }
      callback.call(id, textEditingController.text);
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textAlign: TextAlign.center,
        textAlignVertical: TextAlignVertical.center,
        keyboardType: TextInputType.number,
        cursorColor: MyColors.grayT3,
        controller: textEditingController,
        maxLengthEnforcement: MaxLengthEnforcement.enforced,
        decoration: InputDecoration(
          hintStyle: TextStyle(color: MyColors.grayT3),
          labelStyle: TextStyle(color: MyColors.grayT3),
          filled: true,
          fillColor: MyColors.input,
          border: UnderlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: BorderSide.none),
        ));
  }
}
