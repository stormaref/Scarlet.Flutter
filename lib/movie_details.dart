import 'package:app/colors/my_colors.dart';
import 'package:app/components/cast_card.dart';
import 'package:app/components/titled_circular_progress.dart';
import 'package:app/components/white_text.dart';
import 'package:app/controllers/movie_details_controller.dart';
import 'package:app/icons/my_icons.dart';
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
                CastCard(1)
              ],
            ),
          ),
        ),
      );
    });
  }
}
