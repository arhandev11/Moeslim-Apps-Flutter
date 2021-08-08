import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quran/routes/AyatScreen.dart';
import 'package:quran/routes/Home.dart';
import 'package:quran/routes/LoginScreen.dart';
import 'package:quran/routes/PrayTimeScreen.dart';
import 'package:quran/routes/QuranScreen.dart';
import 'package:quran/routes/RegisterScreen.dart';
import 'package:quran/routes/SkillScreen.dart';
import 'package:quran/routes/SplashScreen.dart';
import 'package:quran/routes/SurahScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Al-Qur'an Apps",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );
  }
}
