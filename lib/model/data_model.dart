class DataModel {
  String itemName;
  String itemImage;
  String itemUrl;

  DataModel.items({
    required this.itemName,
    required this.itemImage,
    required this.itemUrl,
  });
}

List<DataModel> dataModelItems = [
  DataModel.items(
    itemName: "Google",
    itemImage: "https://goo.gl/bYJBPJ",
    itemUrl: "https://www.google.com",
  ),
  DataModel.items(
    itemName: "Flutter",
    itemImage: "https://goo.gl/Du8giw",
    itemUrl: "https://flutter.dev/",
  ),
  DataModel.items(
    itemName: "Android",
    itemImage: "https://goo.gl/vCn5r5",
    itemUrl: "https://www.android.com/",
  ),
  DataModel.items(
    itemName: "iOS",
    itemImage: "https://www.clipartmax.com/png/full/190-1905305_ios-logo-icon-os-x-icon-pack-apk.png",
    itemUrl: "https://www.apple.com//",
  ),
  DataModel.items(
    itemName: "YouTube",
    itemImage: "https://goo.gl/cGP6cH",
    itemUrl: "https://www.youtube.com/",
  ),
  DataModel.items(
    itemName: "GitHub",
    itemImage: "https://goo.gl/u2qZQB",
    itemUrl: "https://github.com/",
  ),
];
