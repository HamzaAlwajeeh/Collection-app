// import 'package:flutter/material.dart';

// class MusicPlayerPage extends StatefulWidget {
//   @override
//   _MusicPlayerPageState createState() => _MusicPlayerPageState();
// }

// class _MusicPlayerPageState extends State<MusicPlayerPage> {
//   bool isPlaying = false;
//   double progress = 0.0;

//   void togglePlay() {
//     setState(() {
//       isPlaying = !isPlaying;
//     });
//   }

//   void simulateProgress() {
//     if (isPlaying) {
//       Future.delayed(Duration(milliseconds: 500), () {
//         if (progress < 1.0) {
//           setState(() {
//             progress += 0.01;
//           });
//           simulateProgress();
//         }
//       });
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[900],
//       appBar: AppBar(
//         title: Text('مشغل الموسيقى'),
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         centerTitle: true,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(24.0),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // صورة الألبوم
//             ClipRRect(
//               borderRadius: BorderRadius.circular(20),
//               child: Image.network(
//                 'https://images.unsplash.com/photo-1511671782779-c97d3d27a1d4',
//                 height: 250,
//                 width: 250,
//                 fit: BoxFit.cover,
//               ),
//             ),
//             SizedBox(height: 40),

//             // شريط التقدم
//             Slider(
//               value: progress,
//               onChanged: (value) {
//                 setState(() {
//                   progress = value;
//                 });
//               },
//               activeColor: Colors.blue,
//               inactiveColor: Colors.white30,
//             ),
//             SizedBox(height: 20),

//             // زر التشغيل/الإيقاف
//             IconButton(
//               iconSize: 70,
//               color: Colors.white,
//               icon: Icon(isPlaying
//                   ? Icons.pause_circle_filled
//                   : Icons.play_circle_fill),
//               onPressed: () {
//                 togglePlay();
//                 simulateProgress();
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:hamza/components/azkari_player.dart';

class MorningAudio extends StatelessWidget {
  const MorningAudio({super.key});
  static const String route = '/morning-audio';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff252E3E),
        iconTheme: const IconThemeData(color: Colors.white),
        centerTitle: true,
        title: const Text(
          "أذكار الصباح إستماع",
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
        image: "assets/images/azkari/morning_audio.png",
        text: "أذكار الصباح",
      ),
    );
  }
}
