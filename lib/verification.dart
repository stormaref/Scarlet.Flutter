import 'package:app/colors/my_colors.dart';
import 'package:app/components/square_text_field.dart';
import 'package:app/components/white_text.dart';
import 'package:app/controllers/verification_controller.dart';
import 'package:app/icons/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Verification extends GetView<VerificationController> {
  late BuildContext _context;

  @override
  Widget build(BuildContext context) {
    _context = context;
    var controller = Get.put(VerificationController());
    return GetBuilder<VerificationController>(builder: (controller) {
      return Scaffold(
        backgroundColor: MyColors.background,
        body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Center(
            child: Column(
              children: [
                Padding(
                    padding: const EdgeInsets.only(top: 112),
                    child: WhiteText("Code Verify", 24)),
                Padding(
                  padding: const EdgeInsets.only(top: 8),
                  child: WhiteText("Enter the code we've sent you", 16),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Spacer(),
                      WhiteText("storm.aref@gmail.com", 16),
                      Expanded(
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            children: [
                              const SizedBox(
                                width: 12,
                              ),
                              IconButton(
                                  onPressed: () => Get.back(),
                                  splashRadius: 16,
                                  icon: MyIcons().edit(Colors.white)),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 52),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: getChildren(),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }

  List<Widget> getChildren() {
    List<Widget> list = List.empty(growable: true);
    for (var i = 0; i < 6; i++) {
      list.add(SizedBox(
        width: 48,
        child: SquareTextField((value, text) => watcher(value, text), i),
      ));
    }
    return list;
  }

  var code = List<int>.filled(6, -1);

  watcher(int id, String text) {
    var value = int.tryParse(text);
    if (value != null) {
      FocusScope.of(_context).nextFocus();
      code[id] = value;
    }
  }
}
