import 'package:flutter/material.dart';

import '../../components/azkari_player.dart';

class EveningAudio extends StatelessWidget {
  const EveningAudio({super.key});
  static const String route = '/evening-audio';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff252E3E),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          "أذكار المساء إستماع",
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
      body: AzkariPlayer(
        image: "assets/images/azkari/evening_audio.png",
        text: "أذكار المساء",
      ),
    );
  }
}
