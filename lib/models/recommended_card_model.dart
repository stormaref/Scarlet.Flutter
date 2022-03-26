class RecommendedCardModel {
  bool isExpanded;
  bool isBookmarked;
  RecommendedCardModel(this.isExpanded, this.isBookmarked);

  bookmark() {
    isBookmarked = !isBookmarked;
  }

  showHide() {
    isExpanded = !isExpanded;
  }
}
