import 'package:flutter/material.dart';

class Azkari {
  final String image;
  final String title;
  final Color color;
  final Color titleColor;
  final Color imageColor;
  final double width;
  final double hight;
  final Function()? onTap;

  const Azkari({
    required this.image,
    required this.title,
    required this.color,
    required this.titleColor,
    required this.imageColor,
    required this.width,
    required this.hight,
    required this.onTap,
  });
}
