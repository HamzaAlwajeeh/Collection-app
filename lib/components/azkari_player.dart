import 'package:flutter/material.dart';

class AzkariPlayer extends StatelessWidget {
  const AzkariPlayer({super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffFEF6DB),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {},
              child: Container(
                width: 300,
                height: 250,
                decoration: BoxDecoration(
                  color: Color(0xff252E3E),
                  borderRadius: BorderRadius.all(
                    Radius.circular(7),
                  ),
                  boxShadow: [
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
                      const Spacer(flex: 1),
                      CircleAvatar(
                        radius: 80,
                        backgroundColor: const Color(0xffF1B011),
                        child: CircleAvatar(
                          radius: 79,
                          backgroundImage: AssetImage(image),
                        ),
                      ),
                      const Spacer(flex: 1),
                      Container(
                        width: 300,
                        height: 50,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(7),
                            bottomRight: Radius.circular(7),
                          ),
                          color: Color(0xffF1B011),
                        ),
                        child: Center(
                          child: Text(
                            text,
                            style: const TextStyle(
                              fontSize: 28,
                              fontFamily: "Monadi",
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 150),
            ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.play_arrow,
                size: 50,
                color: Color(0xff252E3E),
              ),
              style: ElevatedButton.styleFrom(
                backgroundColor: Color(0xffF1B011),
                minimumSize: Size(100, 100),
                shape: const CircleBorder(), // يخلي الزر دائري
              ),
            ),
          ],
        ),
      ),
    );
  }
}
