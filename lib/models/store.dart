// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'dart:convert';

import 'package:flutter/material.dart';

class PersonCircular {
  String? image;
  String? text;
  PersonCircular({
    this.image,
    this.text,
  });
}

List<PersonCircular> lista1 = [
  PersonCircular(
    image: 'assets/images/store/Ellipse 49.png',
    text: 'New',
  ),
  PersonCircular(
    image: 'assets/images/store/Ellipse 50.png',
    text: 'Men',
  ),
  PersonCircular(
    image: 'assets/images/store/Ellipse 51.png',
    text: 'Women',
  ),
  PersonCircular(
    image: 'assets/images/store/Ellipse 52.png',
    text: 'Kids',
  ),
  PersonCircular(
    image: 'assets/images/store/Ellipse 53.png',
    text: 'Equip',
  ),
  PersonCircular(
    image: 'assets/images/store/Ellipse 51.png',
    text: 'Nutrition',
  ),
  PersonCircular(
    image: 'assets/images/store/Ellipse 50.png',
    text: 'Equip',
  ),
  PersonCircular(
    image: 'assets/images/store/Ellipse 50.png',
    text: 'Equip',
  ),
  PersonCircular(
    image: 'assets/images/store/Ellipse 50.png',
    text: 'Equip',
  ),
  PersonCircular(
    image: 'assets/images/store/Ellipse 50.png',
    text: 'Equip',
  ),
];

//////////////////////////////////////

class StoreList {
  String? title;
  String? subTitle;
  String? image;
  List<Color> colors;

  StoreList({
    this.title,
    this.subTitle,
    this.image,
    required this.colors,
    //this.color,
  });
}

List<StoreList> lista2 = [
  StoreList(
      image: 'assets/images/store/group.png',
      title: 'Today’s Special',
      subTitle: 'Get 2x point for every steps, only valid for today',
      colors: [
        const Color(0xffFF3A51),
        const Color(0xffF45C43),
      ]),
  StoreList(
      image: 'assets/images/store/group2.png',
      title: 'Today’s Special',
      subTitle: 'Get 2x point for every steps, only valid for today',
      colors: [
        const Color(0xff5e4787),
        const Color(0xff516395),
      ]),
  StoreList(
      image: 'assets/images/store/group2.png',
      title: 'Share & Get',
      subTitle: 'Get 2x point for every steps, only valid for today',
      colors: [
        const Color(0xff82AFFF),
        const Color(0xffF14985),
      ]),
];

/////////////////////////////////////////

class GridStore1 {
  String? image;
  String? text;
  GridStore1({
    this.image,
    this.text,
  });
}

List<GridStore1> lista3 = [
  GridStore1(
    image: 'assets/images/store/puma.png',
    text: 'Puma',
  ),
  GridStore1(
    image: 'assets/images/store/Vector.png',
    text: 'Reebok',
  ),
  GridStore1(
    image: 'assets/images/store/nike.png',
    text: 'Nike',
  ),
  GridStore1(
    image: 'assets/images/store/Vector-1.png',
    text: 'Adidas',
  ),
  GridStore1(
    image: 'assets/images/store/underarmour.png',
    text: 'UA',
  ),
  GridStore1(
    image: 'assets/images/store/puma.png',
    text: 'Asics',
  ),
  GridStore1(
    image: 'assets/images/store/puma.png',
    text: 'Reebok',
  ),
  GridStore1(
    image: 'assets/images/store/puma.png',
    text: 'See ALL',
  ),
];

///////////////////////////////////////////////////
class GridStore2 {
  String? image;
  String? text;
  String? subText;
  GridStore2({this.image, this.text, this.subText});
}

List<GridStore2> lista4 = [
  GridStore2(
    image: 'assets/images/store/shoes2.png',
    text: 'Nike',
    subText: 'Air Force 1 Low \'07',
  ),
  GridStore2(
    image: 'assets/images/store/shoes1.png',
    text: 'Nike',
    subText: 'Air Lunaroll 1 ',
  ),
];
