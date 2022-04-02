import 'package:app/colors/my_colors.dart';
import 'package:app/components/bookmark_clipper.dart';
import 'package:app/components/small_circular_progress.dart';
import 'package:app/components/white_text.dart';
import 'package:app/controllers/similar_movie_controller.dart';
import 'package:app/icons/my_icons.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/instance_manager.dart';

class SimilarMovieCard extends GetView<SimilarMovieController> {
  int id;
  SimilarMovieCard(this.id);
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(SimilarMovieController(id));
    return GetBuilder<SimilarMovieController>(builder: (controller) {
      return SizedBox(
        width: 108,
        child: Stack(
          children: [
            Column(
              children: [
                SizedBox(
                  width: 108,
                  height: 136,
                  child: Image.network(
                    "https://see.news/wp-content/uploads/2022/01/newFile-2.jpg",
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  color: MyColors.grayT1,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 4,
                      ),
                      WhiteText("Queen’s Gambit", 12),
                      const SizedBox(
                        height: 12,
                      ),
                      Row(
                        children: [
                          SmallCircularProgress(MyColors.imdb, 9, 10),
                          const SizedBox(
                            width: 4,
                          ),
                          SmallCircularProgress(MyColors.lipstick, 9, 10),
                          const SizedBox(
                            width: 4,
                          ),
                          SmallCircularProgress(MyColors.meta, 9, 10),
                          const SizedBox(
                            width: 20,
                          ),
                          GestureDetector(
                              onTap: () => controller.tapView(id),
                              child: controller.getView(id)
                                  ? MyIcons().eye(Colors.green)
                                  : MyIcons().show(Colors.white)),
                        ],
                      ),
                      const SizedBox(
                        height: 12,
                      )
                    ],
                  ),
                )
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
                                ? MyIcons().bookmark(Colors.white)
                                : MyIcons().plus(MyColors.grayBlack))),
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
