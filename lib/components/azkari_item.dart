import 'package:flutter/material.dart';

import '../models/azkari.dart';

class AzkariItem extends StatelessWidget {
  const AzkariItem({super.key, required this.item});
  final Azkari item;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: item.onTap,
      child: Container(
        width: item.width,
        height: item.hight,
        decoration: BoxDecoration(
          color: item.color,
          borderRadius: const BorderRadius.all(
            Radius.circular(7),
          ),
          boxShadow: const [
            BoxShadow(
              color: Color.fromARGB(255, 66, 66, 66),
              offset: Offset(0, 3),
              spreadRadius: 0,
              blurRadius: 6,
            )
          ],
        ),
        child: Center(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Spacer(
              flex: 1,
            ),
            CircleAvatar(
              radius: 50,
              backgroundColor: const Color(0xffF1B011),
              child: CircleAvatar(
                radius: 49,
                backgroundImage: AssetImage(item.image),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            Container(
              width: item.width,
              height: 50,
              decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(7),
                    bottomRight: Radius.circular(7)),
                color: Color(0xffF1B011),
              ),
              child: Center(
                child: Text(
                  item.title,
                  style: const TextStyle(
                      fontSize: 28, fontFamily: "Monadi", color: Colors.white),
                ),
              ),
            ),
          ],
        )),
      ),
    );
  }
}
