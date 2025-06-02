import 'package:flutter/material.dart';

class TitleBox extends StatelessWidget {
  const TitleBox({super.key, required this.title});
  final String title;
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 370,
        height: 100,
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 16),
        margin: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
        decoration: BoxDecoration(
          color: Color(0xffDEDBD2),
          borderRadius: BorderRadius.circular(16),
          border: Border.all(
            color: Color.fromRGBO(74, 87, 89, 1).withOpacity(0.4),
            width: 1.5,
          ),
        ),
        child: Center(
          child: Text(
            "$title",
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xff4A5759),
              fontSize: 30,
              fontFamily: 'Pacifico',
              fontWeight: FontWeight.w600,
            ),
          ),
        ));
  }
}
