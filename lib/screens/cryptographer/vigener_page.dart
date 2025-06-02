import 'package:flutter/material.dart';
import 'package:hamza/components/box_message.dart';
import 'package:hamza/components/crypto_app_bar.dart';
import 'package:hamza/components/primary_button.dart';
import 'package:hamza/components/text_input.dart';
import 'package:hamza/components/text_key.dart';
import 'package:hamza/components/title_box.dart';
import 'package:hamza/data/Data%20Security/Algorithms/vigener/vigener.dart';

class VigenerPage extends StatefulWidget {
  static const route = '/vigener';
  const VigenerPage({super.key});

  @override
  State<VigenerPage> createState() => _VigenerPageState();
}

class _VigenerPageState extends State<VigenerPage> {
  String title = "";
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // يمنع الكيبورد من ازاحه الصفحه
      appBar: cryptoAppBar(title: "Vigner Algorithm"),
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              TitleBox(title: "Vigner Algorithm"),
              SizedBox(height: 60),
              TextInput(),
              SizedBox(height: 25),
              TextKey(),
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
                        text = vigenerEncryption(
                            TextInput.textInput ?? '', TextKey.textKey ?? '');
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  PrimaryButton(
                    title: "Decryption",
                    onPress: () {
                      setState(
                        () {
                          title = "Plain Text";
                          text = vigenerDecription(
                              TextInput.textInput ?? '', TextKey.textKey ?? '');
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
