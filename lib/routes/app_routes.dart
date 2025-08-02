import 'package:hamza/screens/azkari/evening.dart';
import 'package:hamza/screens/azkari/evening_audio.dart';
import 'package:hamza/screens/azkari/morning.dart';
import 'package:hamza/screens/azkari/morning_audio.dart';
import 'package:hamza/screens/azkari_screen.dart';
import 'package:hamza/screens/counter_screen.dart';
import 'package:hamza/screens/cryptographer/caesar_page.dart';
import 'package:hamza/screens/cryptographer/crypto_home_page.dart';
import 'package:hamza/screens/cryptographer/hash_page.dart';
import 'package:hamza/screens/cryptographer/rail_face_page.dart';
import 'package:hamza/screens/cryptographer/rsa_page.dart';
import 'package:hamza/screens/cryptographer/single_replacement_page.dart';
import 'package:hamza/screens/cryptographer/vigener_page.dart';
import 'package:hamza/screens/profile_screen.dart';
import 'package:hamza/screens/setting_screen.dart';

import '../screens/home_screen.dart';

final routes = {
  HomeScreen.route: (_) => const HomeScreen(),
  ProfileScreen.route: (_) => const ProfileScreen(),
  AzkariScreen.route: (_) => const AzkariScreen(),
  Morning.route: (_) => const Morning(),
  Evening.route: (_) => const Evening(),
  MorningAudio.route: (_) => const MorningAudio(),
  EveningAudio.route: (_) => const EveningAudio(),
  SettingScreen.route: (_) => SettingScreen(),
  CounterScreen.route: (_) => CounterScreen(),
  CryptoHomePage.route: (_) => CryptoHomePage(),
  CaesarPage.route: (_) => CaesarPage(),
  RailFacePage.route: (_) => RailFacePage(),
  SingleReplacementPage.route: (_) => SingleReplacementPage(),
  VigenerPage.route: (_) => VigenerPage(),
  RsaPage.route: (_) => RsaPage(),
  HashPage.route: (_) => HashPage(),
};
