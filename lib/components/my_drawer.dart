import 'dart:io';

import 'package:flutter/material.dart';
import 'package:hamza/screens/home_screen.dart';
import 'package:hamza/screens/setting_screen.dart';

import '../screens/profile_screen.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  //myListTile => function
  ListTile myListTile({
    required IconData icon,
    required String text,
    required GestureTapCallback onTap,
    Color? backGroundColor,
    Color IconColor = const Color(0xff79359F),
    Color? textColor,
  }) {
    return ListTile(
      leading: Icon(icon),
      title: Text(
        text,
        style: TextStyle(color: textColor, fontSize: 18),
      ),
      onTap: onTap,
      iconColor: IconColor,
      tileColor: backGroundColor,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.horizontal(right: Radius.circular(30)),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xff79359F), Color(0xffD76EF5)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
              borderRadius: BorderRadius.only(
                bottomRight: Radius.circular(30),
              ),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                CircleAvatar(
                  radius: 52,
                  backgroundColor: Colors.white,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/Home/Hamza.png'),
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  'Hamza Alwajeeh',
                  style: TextStyle(
                    color: Colors.white,
                    fontFamily: 'BebasNeue',
                    fontSize: 25,
                  ),
                ),
                Text(
                  'ha20mza60@gmail.com',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          myListTile(
            icon: Icons.home,
            text: "Home",
            onTap: () {
              Navigator.pushNamed(context, HomeScreen.route);
            },
            backGroundColor: Colors.grey.shade200,
          ),
          myListTile(
            icon: Icons.settings,
            text: "Setting",
            onTap: () {
              Navigator.pushNamed(context, SettingScreen.route);
            },
            backGroundColor: Colors.grey.shade200,
          ),
          myListTile(
            icon: Icons.info,
            text: "Info",
            onTap: () {
              Navigator.pushNamed(context, ProfileScreen.route);
            },
            backGroundColor: Colors.grey.shade200,
          ),
          const Divider(thickness: 1),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(5, 0, 0, 0),
            child: myListTile(
              icon: Icons.logout,
              text: "Logout",
              backGroundColor: Colors.red.shade50,
              textColor: Colors.red,
              IconColor: Colors.red,
              onTap: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: const Text("تأكيد الخروج"),
                    content: const Text("هل تريد فعلاً الخروج من التطبيق؟"),
                    actions: [
                      TextButton(
                        child: const Text("لا"),
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                      ),
                      TextButton(
                        child: const Text("نعم"),
                        onPressed: () {
                          exit(0);
                        },
                      ),
                    ],
                  ),
                );
              },
            ),
          ),
          const SizedBox(height: 10),
        ],
      ),
    );
  }
}
