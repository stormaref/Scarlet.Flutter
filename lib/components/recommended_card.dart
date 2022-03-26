import 'package:app/colors/my_colors.dart';
import 'package:app/components/titled_circular_progress.dart';
import 'package:app/components/white_text.dart';
import 'package:app/controllers/recommended_card_controller.dart';
import 'package:app/icons/my_icons.dart';
import 'package:app/svgs/my_svgs.dart';
import 'package:app/tools/statics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class RecommendedCard extends GetView<RecommendedCardController> {
  final int id;

  RecommendedCard(this.id);

  @override
  Widget build(BuildContext context) {
    var controller = Get.put(RecommendedCardController(id));
    return GetBuilder<RecommendedCardController>(builder: (controller) {
      return Container(
        decoration: Statics.purpleShadow,
        width: 328,
        clipBehavior: Clip.hardEdge,
        // height: 284,
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(
                height: 152,
                child: Stack(
                  children: [
                    Image.network(
                        "https://m.media-amazon.com/images/M/MV5BOGE2NWUwMDItMjA4Yi00N2Y3LWJjMzEtMDJjZTMzZTdlZGE5XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_FMjpg_UY720_.jpg",
                        height: 152,
                        width: double.infinity,
                        fit: BoxFit.fitWidth),
                    Positioned(
                        top: 0,
                        left: 16,
                        child: GestureDetector(
                            onTap: () => controller.bookmark(id),
                            child: controller.isBookmarked(id)
                                ? MySvgs.bookmarked
                                : MySvgs.bookmark)),
                    Stack(
                      children: [
                        Positioned(
                          left: 0,
                          right: 0,
                          bottom: 0,
                          child: Container(
                            height: 100,
                            decoration: BoxDecoration(
                                gradient: LinearGradient(
                                    colors: [
                                  MyColors.background,
                                  Colors.transparent
                                ],
                                    begin: Alignment.bottomCenter,
                                    end: Alignment.topCenter)),
                          ),
                        ),
                        Positioned(
                            left: 8,
                            bottom: 8,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                WhiteText("Dark / 2017", 15),
                                WhiteText("Crime, Drama, Mystery", 11),
                              ],
                            ))
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 12,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    TitledCircularProgress(MyColors.imdb, 7.6, 10, "IMDB"),
                    TitledCircularProgress(
                        MyColors.primaryT2, 90, 100, "Rotten"),
                    TitledCircularProgress(MyColors.meta, 7.6, 10, "Metascore"),
                    TitledCircularProgress(Colors.white, 9, 10, "You"),
                  ],
                ),
              ),
              const SizedBox(
                height: 24,
              ),
              Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 8),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      MyIcons().clock(MyColors.clock),
                      WhiteText("Avg 60min / 6h 33min", 11),
                      WhiteText("100 eps", 11),
                      WhiteText("Running", 11),
                      GestureDetector(
                          onTap: () => controller.showHide(id),
                          child: controller.isExpanded(id)
                              ? MyIcons().arrowUpCircle(Colors.white)
                              : MyIcons().arrowBottomCircle(Colors.white))
                    ],
                  )),
              const SizedBox(
                height: 8,
              ),
            ],
          ),
          if (controller.isExpanded(id))
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8),
              child: Column(
                children: [
                  const SizedBox(
                    height: 4,
                  ),
                  Container(
                    height: 1,
                    color: MyColors.devider,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Text(
                      "Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint. Velit officia consequat duis enim velit mollit. Exercitation veniam",
                      style: GoogleFonts.nunito(
                          fontSize: 13, color: MyColors.grayT8),
                    ),
                  ),
                  const SizedBox(
                    height: 16,
                  )
                ],
              ),
            )
        ]),
      );
    });
  }
}
