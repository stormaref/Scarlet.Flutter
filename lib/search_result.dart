import 'package:app/colors/my_colors.dart';
import 'package:app/components/recommended_card.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SearchResult extends GetView {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.background,
      body: Container(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: ListView.separated(
              itemBuilder: (ctx, i) => RecommendedCard(),
              separatorBuilder: (ctx, i) {
                return const SizedBox(
                  height: 24,
                );
              },
              itemCount: 3)),
    );
  }
}
