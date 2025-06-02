import 'package:flutter/material.dart';

class NumberInput extends StatefulWidget {
  const NumberInput({super.key});

  @override
  State<NumberInput> createState() => _NumberInputState();
  static int? numberInput;
}

class _NumberInputState extends State<NumberInput> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 370,
      child: TextField(
        onChanged: (val) {
          setState(() {
            NumberInput.numberInput = int.tryParse(val);
          });
        },
        keyboardType: TextInputType.number,
        decoration: InputDecoration(
          prefixIcon: Icon(
            Icons.key,
            color: Color(0xff4A5759),
          ),
          hintText: "Write the Key here...",
          hintStyle: TextStyle(
            color: Color(0xff4A5759).withOpacity(0.6),
            fontSize: 16,
          ),
          labelText: "Key",
          labelStyle: TextStyle(
            color: Color(0xff4A5759),
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
          filled: true,
          fillColor: Color(0xffDEDBD2),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
              color: Color(0xff4A5759).withOpacity(0.3),
              width: 1.2,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(14),
            borderSide: BorderSide(
              color: Color(0xff4A5759),
              width: 2,
            ),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 20, vertical: 18),
        ),
        style: TextStyle(
          fontSize: 16,
          color: Color(0xff4A5759),
          fontWeight: FontWeight.w500,
        ),
        cursorColor: Color(0xff4A5759),
      ),
    );
  }
}
