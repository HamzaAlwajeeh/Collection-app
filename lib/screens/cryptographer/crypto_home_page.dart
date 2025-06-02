import 'package:flutter/material.dart';
import 'package:hamza/components/crypto_app_bar.dart';
import 'package:hamza/components/image_buttons_container.dart';
import 'package:hamza/screens/cryptographer/caesar_page.dart';
import 'package:hamza/screens/cryptographer/hash_page.dart';
import 'package:hamza/screens/cryptographer/rail_face_page.dart';
import 'package:hamza/screens/cryptographer/rsa_page.dart';
import 'package:hamza/screens/cryptographer/single_replacement_page.dart';
import 'package:hamza/screens/cryptographer/vigener_page.dart';

import '../../data/crypto_items.dart' show listItem;

class CryptoHomePage extends StatelessWidget {
  CryptoHomePage({super.key});
  static const route = "/crypto-home";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: cryptoAppBar(title: "Cryptography"),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 1),
              ImageButtonsContainer(
                  item: listItem[0], routName: CaesarPage.route),
              const Spacer(flex: 1),
              ImageButtonsContainer(
                  item: listItem[1], routName: RailFacePage.route),
              const Spacer(flex: 1),
            ],
          ),
          const Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 1),
              ImageButtonsContainer(
                  item: listItem[2], routName: SingleReplacementPage.route),
              const Spacer(flex: 1),
              ImageButtonsContainer(
                  item: listItem[3], routName: VigenerPage.route),
              const Spacer(flex: 1),
            ],
          ),
          const Spacer(flex: 1),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 1),
              ImageButtonsContainer(item: listItem[4], routName: RsaPage.route),
              const Spacer(flex: 1),
              ImageButtonsContainer(
                  item: listItem[5], routName: HashPage.route),
              const Spacer(flex: 1),
            ],
          ),
          const Spacer(flex: 1),
        ],
      ),
    );
  }
}
