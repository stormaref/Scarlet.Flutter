import 'package:app/colors/my_colors.dart';
import 'package:app/components/bookmark_card.dart';
import 'package:app/components/white_text.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class BookmarkView extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Stack(children: [
          Center(
            heightFactor: 0,
            child: Padding(
                padding: const EdgeInsets.only(top: 36),
                child: WhiteText("Bookmark", 17)),
          ),
          Container(
            padding: const EdgeInsets.only(top: 128),
            child: ListView(
              children: [BookmarkCard()],
            ),
          )
        ]),
      ),
    );
  }
}
