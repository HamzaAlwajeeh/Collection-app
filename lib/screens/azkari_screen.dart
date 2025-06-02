import 'package:flutter/material.dart';
import 'package:hamza/components/azkari_item.dart';
import 'package:hamza/models/azkari.dart';
import 'package:hamza/screens/azkari/evening.dart';
import 'package:hamza/screens/azkari/evening_audio.dart';
import 'package:hamza/screens/azkari/morning.dart';
import 'package:hamza/screens/azkari/morning_audio.dart';

class AzkariScreen extends StatelessWidget {
  const AzkariScreen({super.key});
  static const String route = '/azkari';
  @override
  Widget build(BuildContext context) {
    //Home is Class => Model(Azkari) => Open it
    final List<Azkari> azkariItem = [
      Azkari(
        image: "assets/images/azkari/morning_audio.png",
        title: "أذكار الصباح إستماع",
        color: const Color(0xff252E3E),
        titleColor: const Color(0xffF1B011),
        imageColor: const Color(0xffF1B011),
        width: 370,
        hight: 180,
        onTap: () {
          Navigator.pushNamed(context, MorningAudio.route);
        },
      ),
      Azkari(
        image: "assets/images/azkari/morning.png",
        title: "الصباح",
        color: const Color(0xff252E3E),
        titleColor: const Color(0xffF1B011),
        imageColor: const Color(0xffF1B011),
        width: 180,
        hight: 180,
        onTap: () {
          Navigator.pushNamed(context, Morning.route);
        },
      ),
      Azkari(
        image: "assets/images/azkari/evening.png",
        title: "المساء",
        color: const Color(0xff252E3E),
        titleColor: const Color(0xffF1B011),
        imageColor: const Color(0xffF1B011),
        width: 180,
        hight: 180,
        onTap: () {
          Navigator.pushNamed(context, Evening.route);
        },
      ),
      Azkari(
        image: "assets/images/azkari/evening_audio.png",
        title: "أذكار المساء إستماع",
        color: const Color(0xff252E3E),
        titleColor: const Color(0xffF1B011),
        imageColor: const Color(0xffF1B011),
        width: 370,
        hight: 180,
        onTap: () {
          Navigator.pushNamed(context, EveningAudio.route);
        },
      ),
    ];
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff252E3E),
        centerTitle: true,
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "AZKARI",
          style: TextStyle(
            color: Color(0xffF1B011),
            shadows: [
              Shadow(color: Colors.black, offset: Offset(2, 2)),
            ],
            fontWeight: FontWeight.bold,
            fontFamily: 'BebasNeue',
            letterSpacing: 2,
            fontSize: 28,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            const Spacer(
              flex: 2,
            ),
            const CircleAvatar(
              radius: 80,
              backgroundColor: Color(0xffF1B011),
              child: CircleAvatar(
                radius: 78,
                backgroundImage: AssetImage("assets/images/Home/Azkari.png"),
              ),
            ),
            const Spacer(
              flex: 1,
            ),
            AzkariItem(item: azkariItem[0]),
            const Spacer(flex: 1),
            Center(
              child: Row(
                // mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  AzkariItem(item: azkariItem[1]),
                  const SizedBox(
                    width: 10,
                    height: 100,
                  ),
                  AzkariItem(item: azkariItem[2]),
                ],
              ),
            ),
            const Spacer(flex: 1),
            AzkariItem(item: azkariItem[3]),
            const Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
