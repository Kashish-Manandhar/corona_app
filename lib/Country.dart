import 'package:flutter/cupertino.dart';

class Product {
  int id;
  String name;
  List<Image> imageList;

  Product({this.id, this.name, this.imageList});

  factory Product.fromJson(Map<String, dynamic> parsedJson)
  =>
      Product(
          id: parsedJson["id"],
          name: parsedJson["name"],
          imageList: (parsedJson["images"] as List).map((e) => Image.fromJson(e)));

}

class Image {
  int imgId;
  String imgName;

  Image({this.imgId, this.imgName});

  factory Image.fromJson(Map<String, dynamic> json) =>
      Image(imgId: json["id"], imgName: json["imageName"]);
}
