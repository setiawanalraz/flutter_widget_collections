class Store {
  String? itemName;
  String? itemImage;
  String? itemUrl;

  Store.items({
    this.itemName,
    this.itemImage,
    this.itemUrl,
  });
}

List<Store> storeItems = [
  Store.items(
    itemName: "Google",
    itemImage: "https://goo.gl/bYJBPJ",
    itemUrl: "https://www.google.com",
  ),

  Store.items(
    itemName: "Flutter",
    itemImage: "https://goo.gl/Du8giw",
    itemUrl: "https://flutter.dev/",
  ),

  Store.items(
    itemName: "Android",
    itemImage: "https://goo.gl/vCn5r5",
    itemUrl: "https://www.android.com/",
  ),

  Store.items(
    itemName: "YouTube",
    itemImage: "https://goo.gl/cGP6cH",
    itemUrl: "https://www.youtube.com/",
  ),

  Store.items(
    itemName: "GitHub",
    itemImage: "https://goo.gl/u2qZQB",
    itemUrl: "https://github.com/",
  ),
];
