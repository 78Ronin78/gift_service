class GiftInfo {
  final String giftName;
  final List<dynamic> giftCategory;
  final String cost;
  final String giftImageUrl;

  GiftInfo({this.giftName, this.giftCategory, this.cost, this.giftImageUrl});

  Map<String, dynamic> toJson() {
    return {
      'giftName': this.giftName,
      'giftCategory': this.giftCategory,
      'cost': this.cost,
      'giftImageUrl': this.giftImageUrl,
    };
  }
}
