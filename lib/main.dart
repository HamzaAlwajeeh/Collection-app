import 'package:flutter/material.dart';
import 'package:hamza/screens/home_screen.dart';
import '../routes/app_routes.dart';

void main() {
  runApp(const MyHome());
}

class MyHome extends StatelessWidget {
  const MyHome({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomeScreen(),
      debugShowCheckedModeBanner: false,
      routes: routes,
    );
  }
}
