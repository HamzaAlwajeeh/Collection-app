import 'package:flutter/material.dart';
import 'package:hamza/models/home.dart';

class HomeItem extends StatelessWidget {
  const HomeItem({super.key, required this.item});
  final Home item;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onTap,
      child: Container(
        width: 375,
        height: 130,
        decoration: BoxDecoration(
            color: item.color,
            borderRadius: const BorderRadius.all(
              Radius.circular(11),
            ),
            boxShadow: const [
              BoxShadow(
                color: Color.fromARGB(255, 34, 34, 34),
                offset: Offset(4, 4),
                spreadRadius: 0,
                blurRadius: 5,
              )
            ]),
        child: Row(
          children: [
            const Padding(padding: EdgeInsets.fromLTRB(30, 0, 0, 0)),
            CircleAvatar(
              radius: 46,
              backgroundColor: item.imageColor,
              child: CircleAvatar(
                radius: 45,
                backgroundImage: AssetImage(item.image),
              ),
            ),
            const Padding(padding: EdgeInsets.fromLTRB(40, 0, 0, 0)),
            Text(
              item.title,
              style: TextStyle(
                color: item.titleColor,
                letterSpacing: 1,
                fontFamily: 'BebasNeue',
                fontSize: 35,
              ),
            )
          ],
        ),
      ),
    );
  }
}
