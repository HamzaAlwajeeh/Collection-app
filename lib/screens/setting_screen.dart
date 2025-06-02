import 'package:flutter/material.dart';
import 'package:hamza/screens/profile_screen.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({super.key});
  static const String route = '/setting';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xff79359F),
        automaticallyImplyLeading: true,
        iconTheme: const IconThemeData(color: Colors.white),
        title: const Text(
          "Settings",
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
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xff79359F), Color(0xffD76EF5)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(16),
          children: [
            ListTile(
              leading: const Icon(Icons.person, color: Colors.white),
              title: const Text(
                'Account',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              tileColor: Colors.black.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onTap: () {
                Navigator.pushNamed(context, ProfileScreen.route);
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.notifications, color: Colors.white),
              title: const Text(
                'Notifications',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              tileColor: Colors.black.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onTap: () {
                // Handle notification settings
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.lock, color: Colors.white),
              title: const Text(
                'Privacy',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              tileColor: Colors.black.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onTap: () {
                // Handle privacy settings
              },
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.info, color: Colors.white),
              title: const Text(
                'About',
                style: TextStyle(color: Colors.white, fontSize: 18),
              ),
              tileColor: Colors.black.withOpacity(0.2),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
              onTap: () {
                // Handle about section
              },
            ),
          ],
        ),
      ),
    );
  }
}
