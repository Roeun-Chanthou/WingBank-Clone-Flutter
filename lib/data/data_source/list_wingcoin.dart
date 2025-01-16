class WingCoin {
  final String image;
  final String title;
  final String subti;

  WingCoin({
    String? image,
    required this.title,
    String? subti,
  })  : subti = subti ?? "",
        image = image ?? "";
}

final List<WingCoin> wingcoin = [
  WingCoin(
    image: "assets/animations/icon-1.png",
    title: "How to earn Wingpoints",
    subti: "Scan Wing QR with Wing Bank app",
  ),
  WingCoin(
    image: "assets/animations/treasure-chest.png",
    title: "How to redeem Wingpoints",
    subti: "Pay with Wingpoints at our merchants",
  ),
  WingCoin(
    image: "assets/animations/gold.png",
    title: "Check Your Pries",
    subti: "Prizes get from Treasure Hunt",
  ),
  WingCoin(
    title: "Learn More",
  ),
];
