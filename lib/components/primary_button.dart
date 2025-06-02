import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.title, required this.onPress});
  final String title;
  final VoidCallback onPress;
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPress,
      child: Text(
        "$title",
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
        ),
      ),
      style: TextButton.styleFrom(
        backgroundColor: Color(0xff4A5759),
        minimumSize: Size(160, 55),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
      ),
    );
  }
}
