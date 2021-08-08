import 'package:flutter/material.dart';
import 'package:quran/routes/LoginScreen.dart';
import 'package:quran/routes/PrayTimeScreen.dart';
import 'package:quran/routes/QuranScreen.dart';
import 'package:quran/routes/RegisterScreen.dart';
import 'package:quran/routes/SkillScreen.dart';
import 'package:quran/routes/SplashScreen.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedIndex = 0;
  final _layoutPage = [QuranScreen(), PrayTimeScreen(), SkillScreen()];

  void _onTabItem(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _layoutPage.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
          BottomNavigationBarItem(icon: Icon(Icons.schedule), title: Text("Pray Times")),
          BottomNavigationBarItem(icon: Icon(Icons.people), title: Text("About")),
        ],
        type: BottomNavigationBarType.fixed,
        currentIndex: _selectedIndex,
        onTap: _onTabItem,
      ),
    );
  }
}
