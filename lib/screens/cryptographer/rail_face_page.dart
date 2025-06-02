import 'package:flutter/material.dart';
import 'package:hamza/components/box_message.dart';
import 'package:hamza/components/crypto_app_bar.dart';
import 'package:hamza/components/primary_button.dart';
import 'package:hamza/components/text_input.dart';
import 'package:hamza/components/title_box.dart';
import 'package:hamza/data/Data%20Security/Algorithms/rail_fence/rail_fence.dart';

class RailFacePage extends StatefulWidget {
  static const route = '/rail-face';
  RailFacePage({super.key});

  @override
  State<RailFacePage> createState() => _RailFacePageState();
}

class _RailFacePageState extends State<RailFacePage> {
  String title = "";
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: cryptoAppBar(title: "Rail Face Algorithm"),
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              TitleBox(title: "Rail Face Algorithm"),
              SizedBox(height: 60),
              TextInput(),
              BoxMessage(title: title, text: text),
              SizedBox(height: 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  PrimaryButton(
                    title: "Encryption",
                    onPress: () {
                      setState(() {
                        title = "Cipher Text";
                        text = railFenceEncryption(TextInput.textInput ?? '');
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  PrimaryButton(
                    title: "Decryption",
                    onPress: () {
                      setState(() {
                        title = "Plain Text";
                        text = railFenceDecryption(TextInput.textInput ?? '');
                      });
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
