import 'package:flutter/material.dart';
import 'package:hamza/components/home_item.dart';
import 'package:hamza/screens/azkari_screen.dart';
import 'package:hamza/screens/counter_screen.dart';
import 'package:hamza/screens/cryptographer/crypto_home_page.dart';
import 'package:hamza/screens/profile_screen.dart';
import '../components/my_drawer.dart';
import '../models/home.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  static const String route = "/home";

  @override
  Widget build(BuildContext context) {
    //Home is Class => Model(Home) => Open it
    final List<Home> homeItems = [
      Home(
        image: "assets/images/Home/Azkari.png",
        title: "Azkari",
        color: const Color(0xff252E3E),
        titleColor: const Color(0xffF1B011),
        imageColor: const Color(0xffF1B011),
        onTap: () {
          Navigator.pushNamed(context, AzkariScreen.route);
        },
      ),
      Home(
        image: "assets/images/Home/CN.png",
        title: "Counter",
        color: const Color(0xff9C28B1),
        titleColor: Colors.white,
        imageColor: Colors.white,
        onTap: () {
          Navigator.pushNamed(context, CounterScreen.route);
        },
      ),
      Home(
        image: "assets/images/Home/CR.png",
        title: "Cryptography",
        color: const Color(0xff4A5759),
        titleColor: Colors.white,
        imageColor: Colors.white,
        onTap: () {
          Navigator.pushNamed(context, CryptoHomePage.route);
        },
      ),
      Home(
        image: "assets/images/Home/Hamza.png",
        title: "My Profile",
        color: const Color(0xFF0D7EDA),
        titleColor: Colors.white,
        imageColor: Colors.white,
        onTap: () {
          Navigator.pushNamed(context, ProfileScreen.route);
        },
      ),
    ];

    return Scaffold(
      drawer: const MyDrawer(),
      backgroundColor: const Color(0xffFEF6DB),
      appBar: AppBar(
        backgroundColor: const Color(0xff79359F),
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Collection App",
          style: TextStyle(
            letterSpacing: 1,
            color: Colors.white,
            shadows: [
              Shadow(color: Colors.black, offset: Offset(2, 2)),
            ],
            fontWeight: FontWeight.bold,
            fontFamily: 'BebasNeue',
            fontSize: 28,
          ),
        ),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          spacing: 30, //=> New
          children: [
            const SizedBox(height: 40),
            HomeItem(item: homeItems[0]),
            HomeItem(item: homeItems[1]),
            HomeItem(item: homeItems[2]),
            HomeItem(item: homeItems[3]),
          ],
        ),
      ),
    );
  }
}
