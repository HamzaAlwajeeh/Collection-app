import 'package:flutter/material.dart';

import '../../components/azkari_read_item.dart';
import '../../data/evening_list.dart';

class Evening extends StatelessWidget {
  const Evening({super.key});
  static const String route = '/evening';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff252E3E),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          "أذكار المساء",
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
        itemCount: eveningList.length,
        itemBuilder: (context, index) =>
            AzkariReadItem(item: eveningList[index], index: index),
      ),
    );
  }
}
