import 'package:flutter/material.dart';
import 'package:hamza/components/azkari_read_item.dart';

import '../../data/morning_list.dart';

class Morning extends StatelessWidget {
  const Morning({super.key});
  static const String route = '/morning';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff252E3E),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          "أذكار الصباح",
          style: TextStyle(
            color: Color(0xffF1B011),
            shadows: [
              Shadow(color: Colors.black, offset: Offset(2, 2)),
            ],
            fontWeight: FontWeight.bold,
            fontSize: 28,
            fontFamily: "Monadi",
            // letterSpacing: 2,
          ),
        ),
      ),
      body: ListView.builder(
        //list in data(morning_list)
        itemCount: morningList.length,
        itemBuilder: (context, index) =>
            AzkariReadItem(item: morningList[index], index: index),
      ),
    );
  }
}
