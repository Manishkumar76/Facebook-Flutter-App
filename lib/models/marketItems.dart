// ignore: file_names
class MarketItemsModel {
  // final VoidCallback onPressedItem;
  final String itemImage;
  final String itemTitle;
  final String itemPrice;
  final String itemDiscription;
  final String sellerName;
  // ignore: non_constant_identifier_names
  final String SellerJoinedDate;
  final String sellerImage;
  final String sellerlocation;

  MarketItemsModel({
    // required this.onPressedItem,
    required this.itemImage,
    required this.itemTitle,
    required this.itemPrice,
    required this.itemDiscription,
    required this.sellerName,
    // ignore: non_constant_identifier_names
    required this.SellerJoinedDate,
    required this.sellerImage,
    required this.sellerlocation,
  });
}

final List<MarketItemsModel> marketdata = [
  MarketItemsModel(

      itemImage: "assets/Images/iphone13pro.jpg",
      itemTitle: "Iphone 13pro 128GB with",
      itemPrice: "₹63,500",
      itemDiscription: "Battery Health 100"
          "Color White"
          "with 20 Watt Charger",
      sellerName: "Nav Sandhu",
      SellerJoinedDate: "2018",
      sellerImage: "assets/Images/p5.jpg",
      sellerlocation: "Faridkot,PB"),
  MarketItemsModel(

      itemImage: "assets/Images/canon_camera.jpg",
      itemTitle: "Canon Camera",
      itemPrice: "₹1,34,500",
      itemDiscription: "Battery Health 100"
          "Color Black"
          "with 120 Watt Charger",
      sellerName: " Max Ranger",
      SellerJoinedDate: "2018",
      sellerImage: "assets/Images/p7.jpg",
      sellerlocation: "Abohar,PB"),

  MarketItemsModel(
      itemImage: "assets/Images/Honda-Bikes.jpg",
      itemTitle:
          "Honda Bikes Shine 100 Price in Delhi - On Road Price of Honda Bikes",
      itemPrice: "₹72,500",
      itemDiscription:
      "With Full essential parts"
          "Color Red-black"
          "17kg Feul Capacity",

      sellerName: "Rohan Rajput",
      SellerJoinedDate: "2020",
      sellerImage: "assets/Images/p6.jpg",
      sellerlocation: "Noida,Dehli"),
  MarketItemsModel(

      itemImage: "assets/Images/asusRog_.jpg",
      itemTitle:
          "ASUS ROG Zephyrus Duo 16 (2022) Dual Screen Laptop, 16 (40.64 cm) FHD+ 165Hz/3ms, AMD Ryzen 7 6800H, 6GB RTX 3060, Gaming Laptop (32GB/2TB SSD/Windows 11/with Office/Black/2.50 Kg), GX650RMZ-LS019WS",
      itemPrice: "₹1,69,000",
      itemDiscription: "Battery Health 100"
          "Color black"
          "with 180 Watt Charger",
      sellerName: "Kumar Saab",
      SellerJoinedDate: "2010",
      sellerImage: "assets/Images/p8.jpg",
      sellerlocation: "Haryana"),
  MarketItemsModel(

      itemImage: "assets/Images/boatearbuds.jpg",
      itemTitle:
          "BoAt Airdopes 138 Bluetooth V5.0 In-Ear Truly Wireless Earbuds With Mic (Viper Green)",
      itemPrice: "₹1,099",
      itemDiscription: "Battery Health 100"
          "Color Green"
          "with 18 Watt Charger",
      sellerName: "Rajan",
      SellerJoinedDate: "2011",
      sellerImage: "assets/Images/p8.jpg",
      sellerlocation: "Himachal"),
  MarketItemsModel(

      itemImage: "assets/Images/wingsearbds.jpg",
      itemTitle:
          "Wings Phantom Truly Wireless in Ear Earbuds with LED Battery Indiacator 50ms Low Latency 40Hrs Playtime, MEMS with Mic, Bluetooth 5.3, IPX5 Resistant, for Best Calling and Designed for Comfort Gaming",
      itemPrice: "₹999",
      itemDiscription: "Battery Health 100"
          "Color black"
          "with 18 Watt Charger",
      sellerName: "Kumar Saab",
      SellerJoinedDate: "2012",
      sellerImage: "assets/Images/p8.jpg",
      sellerlocation: "Rajsthan"),
];
