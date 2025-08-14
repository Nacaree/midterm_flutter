class Product {
  final String image;
  final String title;
  final String subtitle;
  final double price;
  Product({
    required this.image,
    required this.title,
    required this.subtitle,
    required this.price,
  });
  String get getImage => image;
  String get getTitle => title;
  String get getSubtitle => subtitle;
  double get getPrice => price;
}

List<Product> products = [
  Product(
    image:
        "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/iphone-compare-iphone-16-202409?wid=384&hei=512&fmt=jpeg&qlt=90&.v=M0dlUVBobHVpY1h1dmlaR3RZekpEMGxHQTRrc3ZhUlo0ekkrTGlMaVN2eUhFcmIxcWhya1NpWk5OdlVDL1BLcTE1UUxLT2t0cW42N3FvQzVqaGhrVVVCWW5DelhBKzB4SzkrVkUvYmhQMjErYWpGdS9XeFgvbS9ITnNYOEhYaG4",
    title: "iPhone 15 Pro Max",
    subtitle: "Latest flagship with titanium design and A17 Pro chip...",
    price: 1999,
  ),
  Product(
    image:
        "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/mba13-skyblue-select-202503?wid=904&hei=840&fmt=jpeg&qlt=90&.v=M2RyY09CWXlTQUp1KzEveHR6VXNxcTQ1bzN1SitYTU83Mm9wbk1xa1lWNC9UNzNvY2N5NXJTTDQ2YkVYYmVXakJkRlpCNVhYU3AwTldRQldlSnpRa0lIV0Fmdk9rUlVsZ3hnNXZ3K3lEVlk",
    title: "MacBook Air M3",
    subtitle: "Ultra-thin laptop with 18-hour battery life...",
    price: 1099,
  ),
  Product(
    image: "https://m.media-amazon.com/images/I/61KSoKjzl2L._AC_UY218_.jpg",
    title: "AirPods Pro",
    subtitle: "Active noise cancellation and spatial audio...",
    price: 249,
  ),
  Product(
    image: "https://m.media-amazon.com/images/I/71H57HJ9k8L._AC_UY218_.jpg",
    title: "iPad Air 11",
    subtitle: "Perfect balance of performance and portability...",
    price: 599,
  ),
  Product(
    image:
        "https://store.storeimages.cdn-apple.com/1/as-images.apple.com/is/watch-card-40-s10-202409?wid=680&hei=528&fmt=p-jpg&qlt=95&.v=RGt6QnVpU0piVDZnRHZnWmNNbHB2K2ZHc2lZZVE5Y2pUTmdlS3YybHlVMDgycjlDNGdlREhyeERCVjM1SXkycmorTlFRdUE1QXhRRzN4cmdvU2JhR3FpTitUTTlPUlNDNzkvdFRJaVgvNVU",
    title: "Apple Watch Series 9",
    subtitle: "Advanced health tracking and fitness features...",
    price: 399,
  ),
];
