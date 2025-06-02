import 'package:flutter/material.dart';
import 'package:hamza/screens/cryptographer/caesar_page.dart';
import 'package:hamza/screens/cryptographer/crypto_home_page.dart';
import 'package:hamza/screens/cryptographer/hash_page.dart';
import 'package:hamza/screens/cryptographer/rail_face_page.dart';
import 'package:hamza/screens/cryptographer/rsa_page.dart';
import 'package:hamza/screens/cryptographer/single_replacement_page.dart';
import 'package:hamza/screens/cryptographer/vigener_page.dart';

//function to generate a AppBar for each pages
PreferredSizeWidget cryptoAppBar({required String title}) {
  return AppBar(
    backgroundColor: const Color(0xff4A5759),
    automaticallyImplyLeading: true,
    iconTheme: const IconThemeData(color: Colors.white),
    title: Text(
      title,
      style: TextStyle(
        letterSpacing: 1,
        color: Color(0xffF2DFAA),
        shadows: [
          Shadow(color: Colors.black12, offset: Offset(2, 3)),
        ],
        fontWeight: FontWeight.bold,
        fontFamily: 'BebasNeue',
        fontSize: 28,
      ),
    ),
    centerTitle: true,
    actions: [
      Builder(
        builder: (BuildContext context) {
          return PopupMenuButton(
            padding: const EdgeInsets.all(8),
            borderRadius: BorderRadius.all(Radius.circular(11)),
            //here i used enum look down
            onSelected: (value) => onMenuItemSelected(value, context),
            itemBuilder: (BuildContext context) {
              return [
                PopupMenuItem(
                  value: 0,
                  child: Text('caesar'),
                ),
                PopupMenuItem(
                  value: 1,
                  child: Text('railFance'),
                ),
                PopupMenuItem(
                  value: 2,
                  child: Text('singleReplacment'),
                ),
                PopupMenuItem(
                  value: 3,
                  child: Text('vigner'),
                ),
                PopupMenuItem(
                  value: 4,
                  child: Text('rsa'),
                ),
                PopupMenuItem(
                  value: 5,
                  child: Text('hash'),
                ),
                PopupMenuItem(
                  value: 6,
                  child: Text('home'),
                ),
              ];
            },
          );
        },
      ),
    ],
  );
}

enum EnMenuItem {
  caesar,
  railFance,
  singleReplacment,
  vigner,
  rsa,
  hash,
  home,
}

void onMenuItemSelected(int value, BuildContext context) {
  EnMenuItem menuItem = EnMenuItem.values[value];
  switch (menuItem) {
    case EnMenuItem.caesar:
      Navigator.pushReplacementNamed(context, CaesarPage.route);
      break;
    case EnMenuItem.railFance:
      Navigator.pushReplacementNamed(context, RailFacePage.route);
      break;
    case EnMenuItem.singleReplacment:
      Navigator.pushReplacementNamed(context, SingleReplacementPage.route);
      break;
    case EnMenuItem.vigner:
      Navigator.pushReplacementNamed(context, VigenerPage.route);
      break;
    case EnMenuItem.rsa:
      Navigator.pushReplacementNamed(context, RsaPage.route);
      break;
    case EnMenuItem.hash:
      Navigator.pushReplacementNamed(context, HashPage.route);
      break;
    case EnMenuItem.home:
      Navigator.pushReplacementNamed(context, CryptoHomePage.route);
      break;
  }
}
