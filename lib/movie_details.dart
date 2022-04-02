import 'package:app/colors/my_colors.dart';
import 'package:app/components/additional_info.dart';
import 'package:app/components/cast_card.dart';
import 'package:app/components/custom_text.dart';
import 'package:app/components/rating_row.dart';
import 'package:app/components/similar_movie_card.dart';
import 'package:app/components/titled_circular_progress.dart';
import 'package:app/components/white_text.dart';
import 'package:app/controllers/movie_details_controller.dart';
import 'package:app/icons/my_icons.dart';
import 'package:app/tools/statics.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class MovieDetails extends GetView<MovieDetailsController> {
  @override
  Widget build(BuildContext context) {
    var controller = Get.put(MovieDetailsController());
    return GetBuilder<MovieDetailsController>(builder: (controller) {
      return Scaffold(
        backgroundColor: MyColors.background,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 36),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8))),
                  height: 152,
                  clipBehavior: Clip.hardEdge,
                  child: Image.network(
                      "https://m.media-amazon.com/images/M/MV5BOGE2NWUwMDItMjA4Yi00N2Y3LWJjMzEtMDJjZTMzZTdlZGE5XkEyXkFqcGdeQXVyODk4OTc3MTY@._V1_FMjpg_UY720_.jpg",
                      height: 152,
                      width: double.infinity,
                      fit: BoxFit.fitWidth),
                ),
                const SizedBox(
                  height: 8,
                ),
                WhiteText("Dark", 24),
                const SizedBox(
                  height: 8,
                ),
                WhiteText("2017", 20),
                const SizedBox(
                  height: 8,
                ),
                WhiteText("Crime, Drama, Mystery", 20),
                Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      TitledCircularProgress(MyColors.imdb, 7.6, 10, "IMDB"),
                      TitledCircularProgress(
                          MyColors.primaryT2, 90, 100, "Rotten"),
                      TitledCircularProgress(
                          MyColors.meta, 7.6, 10, "Metascore"),
                      TitledCircularProgress(Colors.white, 9, 10, "You"),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 24,
                ),
                Row(
                  children: [
                    MyIcons().clock(Colors.white),
                    const SizedBox(
                      width: 12,
                    ),
                    WhiteText("2h 30min", 16)
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Text(
                      "In non dignissim lectus id. Adipiscing aliquet scelerisque morbi laoreet. Velit turpis in suspendisse elit dignissim urna. Risus amet vitae scelerisque cursus aliquet imperdiet mi orci",
                      style: GoogleFonts.nunito(
                          color: Colors.white, fontSize: 16)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 24),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      FloatingActionButton(
                        backgroundColor: MyColors.grayT6,
                        onPressed: () {},
                        child: MyIcons().show(MyColors.grayBlack),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      FloatingActionButton(
                        backgroundColor: MyColors.grayT6,
                        onPressed: () {},
                        child: MyIcons().delete(MyColors.grayBlack),
                      ),
                      const SizedBox(
                        width: 16,
                      ),
                      FloatingActionButton(
                        backgroundColor: MyColors.grayT6,
                        onPressed: () {},
                        child: MyIcons().watchlistBookmark(MyColors.grayBlack),
                      ),
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    WhiteText("Top Cast", 18),
                    GestureDetector(
                      onTap: () {},
                      child: WhiteText("See All", 14),
                    )
                  ],
                ),
                Padding(
                    padding: const EdgeInsets.only(top: 12),
                    child: SizedBox(
                      height: 144,
                      child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (ctx, i) => CastCard(i),
                          separatorBuilder: (ctx, i) => const SizedBox(
                                width: 8,
                              ),
                          itemCount: 6),
                    )),
                const SizedBox(
                  height: 28,
                ),
                WhiteText("Awards", 18),
                const SizedBox(
                  height: 12,
                ),
                WhiteText("Won 4 Oscars", 14),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Another 279 wins & 252 nominations",
                  style: GoogleFonts.nunito(
                    color: MyColors.grayT7,
                  ),
                ),
                const SizedBox(
                  height: 32,
                ),
                Container(
                  decoration: Statics.purpleShadow,
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(
                          height: 12,
                        ),
                        WhiteText("Parent’s Guide", 18),
                        const SizedBox(
                          height: 12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                WhiteText("Content Rating", 14),
                                const SizedBox(
                                  height: 4,
                                ),
                                SizedBox(
                                  width: 256,
                                  child: CustomText(
                                      "Rated PG for Thematic elements and some language",
                                      MyColors.grayT7,
                                      14),
                                )
                              ],
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: MyIcons().arrowBottomCircle(Colors.white))
                          ],
                        ),
                        ListView.separated(
                            shrinkWrap: true,
                            itemBuilder: (ctx, i) => RatingRow(
                                RatingIntensity.low, "Sex and nudity :"),
                            separatorBuilder: (ctx, i) => const SizedBox(
                                  height: 12,
                                ),
                            itemCount: 5),
                      ]),
                ),
                const SizedBox(
                  height: 32,
                ),
                WhiteText("Additional Info", 18),
                const SizedBox(
                  height: 16,
                ),
                AdditionalInfo("Release Date", "October 1,2006"),
                const SizedBox(
                  height: 24,
                ),
                AdditionalInfo("Country of Origin", "United States"),
                const SizedBox(
                  height: 24,
                ),
                AdditionalInfo("Language Spoken", "English, Spanish"),
                const SizedBox(
                  height: 24,
                ),
                WhiteText("You Might Also Like", 18),
                const SizedBox(
                  height: 16,
                ),
                SizedBox(
                  height: 204,
                  child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (ctx, i) => SimilarMovieCard(i),
                      separatorBuilder: (ctx, i) => const SizedBox(
                            width: 12,
                          ),
                      itemCount: 5),
                ),
                const SizedBox(
                  height: 16,
                )
              ],
            ),
          ),
        ),
      );
    });
  }
}
