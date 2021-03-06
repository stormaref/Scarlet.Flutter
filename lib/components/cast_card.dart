import 'package:app/colors/my_colors.dart';
import 'package:app/components/bookmark_clipper.dart';
import 'package:app/components/white_text.dart';
import 'package:app/controllers/cast_card_controller.dart';
import 'package:app/icons/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class CastCard extends GetView<CastCardController> {
  int id;
  CastCard(this.id);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(CastCardController(id));
    return GetBuilder<CastCardController>(builder: (controller) {
      return Container(
        color: MyColors.grayT1,
        width: 88,
        height: 144,
        child: Stack(
          children: [
            Column(
              children: [
                const SizedBox(
                  height: 4,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: CircleAvatar(
                    radius: 40,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(50),
                      child: Image.network(
                        "https://see.news/wp-content/uploads/2022/01/newFile-2.jpg",
                        height: 80,
                        fit: BoxFit.fitHeight,
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 8,
                ),
                WhiteText("Johnny Depp", 12),
                const SizedBox(
                  height: 8,
                ),
                WhiteText("Leo", 12)
              ],
            ),
            Positioned(
              left: 0,
              top: 0,
              child: ClipPath(
                clipper: BookmarkClipper(),
                child: Container(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                        padding: const EdgeInsets.only(top: 4),
                        child: GestureDetector(
                            onTap: () => controller.tap(id),
                            child: controller.get(id)
                                ? MyIcons().heart(Colors.white)
                                : MyIcons().heart(MyColors.grayBlack))),
                  ),
                  width: 32,
                  height: 36,
                  color:
                      controller.get(id) ? MyColors.lipstick : MyColors.grayT6,
                ),
              ),
            )
          ],
        ),
      );
    });
  }
}
