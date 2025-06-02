import 'package:flutter/material.dart';

class Home {
  final String image;
  final String title;
  final Color color;
  final Color titleColor;
  final Color imageColor; //بوردر الصورة
  final Function()? onTap;

  const Home({
    required this.image,
    required this.title,
    required this.color,
    required this.titleColor,
    required this.imageColor,
    required this.onTap,
  });
}
