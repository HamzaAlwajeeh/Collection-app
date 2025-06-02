import 'dart:convert';

import 'package:crypto/crypto.dart';
import 'package:flutter/material.dart';
import 'package:hamza/components/box_message.dart';
import 'package:hamza/components/crypto_app_bar.dart';
import 'package:hamza/components/primary_button.dart';
import 'package:hamza/components/text_input.dart';
import 'package:hamza/components/title_box.dart';

class HashPage extends StatefulWidget {
  static const route = '/hash';
  HashPage({super.key});

  @override
  State<HashPage> createState() => _HashPageState();
}

class _HashPageState extends State<HashPage> {
  String title = "";
  String text = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: cryptoAppBar(title: "Hash Algorithm"),
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 20),
              TitleBox(title: "Hash Algorithm"),
              SizedBox(height: 30),
              TextInput(),
              BoxMessage(title: title, text: text),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButton(
                    title: "MD5",
                    onPress: () {
                      setState(
                        () {
                          title = "Cipher Text Using MD5";
                          final md5Hash = md5
                              .convert(utf8.encode(TextInput.textInput ?? ''));
                          text = "$md5Hash";
                        },
                      );
                    },
                  ),
                  SizedBox(width: 20),
                  PrimaryButton(
                    title: "SHA-1",
                    onPress: () {
                      setState(
                        () {
                          title = "Cipher Text Using SHA-1";
                          final sha1Hash = sha1
                              .convert(utf8.encode(TextInput.textInput ?? ''));
                          text = "$sha1Hash";
                        },
                      );
                    },
                  ),
                ],
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButton(
                    title: "SHA-256",
                    onPress: () {
                      setState(
                        () {
                          title = "Cipher Text Using SHA-256";
                          final sha256Hash = sha256
                              .convert(utf8.encode(TextInput.textInput ?? ''));
                          text = "$sha256Hash";
                        },
                      );
                    },
                  ),
                  SizedBox(width: 20),
                  PrimaryButton(
                    title: "SHA-512",
                    onPress: () {
                      setState(
                        () {
                          title = "Cipher Text Using SHA-512 ";
                          final sha512Hash = sha512
                              .convert(utf8.encode(TextInput.textInput ?? ''));
                          text = "$sha512Hash";
                        },
                      );
                    },
                  ),
                ],
              ),
              Spacer(flex: 4),
            ],
          ),
        ),
      ),
    );
  }
}
