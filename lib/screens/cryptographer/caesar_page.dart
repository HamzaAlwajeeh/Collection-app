import 'package:flutter/material.dart';
import 'package:hamza/components/box_message.dart';
import 'package:hamza/components/crypto_app_bar.dart';
import 'package:hamza/components/number_input.dart';
import 'package:hamza/components/primary_button.dart';
import 'package:hamza/components/text_input.dart';
import 'package:hamza/components/title_box.dart';
import 'package:hamza/data/Data%20Security/Algorithms/caesar_algorithm/caesar.dart';

class CaesarPage extends StatefulWidget {
  static const route = '/caesar';
  const CaesarPage({super.key});

  @override
  State<CaesarPage> createState() => _CaesarPageState();
}

class _CaesarPageState extends State<CaesarPage> {
  String title = "";
  String text = "";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false, // يمنع الكيبورد من ازاحه الصفحه
      appBar: cryptoAppBar(title: "Caesar Algorithm"),
      body: Center(
        child: Form(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 40),
              TitleBox(title: "Caesar Algorithm"),
              SizedBox(height: 60),
              TextInput(),
              SizedBox(height: 25),
              NumberInput(),
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
                        text = caesarEncryption(TextInput.textInput ?? '',
                            NumberInput.numberInput ?? 1);
                      });
                    },
                  ),
                  SizedBox(width: 20),
                  PrimaryButton(
                    title: "Decryption",
                    onPress: () {
                      setState(() {
                        title = "Plain Text";
                        text = caesarDecryption(TextInput.textInput ?? '',
                            NumberInput.numberInput ?? 1);
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
