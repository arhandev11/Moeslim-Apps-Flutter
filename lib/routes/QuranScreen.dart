import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:quran/routes/SurahScreen.dart';

class QuranScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    FirebaseAuth auth = FirebaseAuth.instance;
    String name = auth.currentUser.email;
    name = name.split("@")[0];
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Column(
            children: <Widget>[
              Flexible(
                  flex: 1,
                  child: Container(
                    color: Colors.lightBlue.shade400,
                  )),
              Flexible(
                  flex: 2,
                  child: Container(
                    color: Colors.white,
                  ))
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(top: 40, right: 30, left: 30),
            child: ListView(
              children: [
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  alignment: Alignment.center,
                  child: Text(
                    "Al-Qur'an Apps",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w800,
                        fontSize: 35,
                        letterSpacing: 2),
                  ),
                ),
                Container(
                  child: Text(
                    "Hello, $name",
                    style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 30),
                  child: Text(
                    "Have you read Al-Qur'an today?",
                    style: TextStyle(
                      fontSize: 18,
                      color: Colors.white,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: Container(
                    padding: EdgeInsets.symmetric(vertical: 20),
                    child: Column(
                      children: [
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext build) =>
                                        SurahScreen(languange: "Eng")));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 30),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 2,
                                      offset: Offset(0, 3)),
                                ],
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: Colors.lightBlue.shade400,
                                    width: 2)),
                            padding: EdgeInsets.symmetric(
                                vertical: 40, horizontal: 10),
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Image.asset('assets/img/quran.png'),
                                  ),
                                  Container(
                                      child: Column(children: [
                                    Text(
                                      "Al-Qur'an",
                                      style: TextStyle(
                                          color: Colors.blueGrey.shade400,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text("English Transalation",
                                        style: TextStyle(
                                            color: Colors.blueGrey.shade400,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12))
                                  ])),
                                  Container(
                                    child:
                                        Image.asset('assets/img/USA-flag.png'),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (BuildContext build) =>
                                        SurahScreen(languange: "Ind")));
                          },
                          child: Container(
                            margin: EdgeInsets.symmetric(
                                vertical: 30, horizontal: 20),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                      color: Colors.grey.withOpacity(0.5),
                                      spreadRadius: 3,
                                      blurRadius: 2,
                                      offset: Offset(0, 3)),
                                ],
                                borderRadius: BorderRadius.circular(20),
                                border: Border.all(
                                    color: Colors.lightBlue.shade400,
                                    width: 2)),
                            padding: EdgeInsets.symmetric(
                                vertical: 40, horizontal: 10),
                            child: Container(
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Container(
                                    child: Image.asset('assets/img/quran.png'),
                                  ),
                                  Container(
                                      child: Column(children: [
                                    Text(
                                      "Al-Qur'an",
                                      style: TextStyle(
                                          color: Colors.blueGrey.shade400,
                                          fontWeight: FontWeight.bold,
                                          fontSize: 18),
                                    ),
                                    SizedBox(
                                      height: 20,
                                    ),
                                    Text("Terjemahan",
                                        style: TextStyle(
                                            color: Colors.blueGrey.shade400,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12)),
                                    Text("Bahasa Indonesia",
                                        style: TextStyle(
                                            color: Colors.blueGrey.shade400,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 12))
                                  ])),
                                  Container(
                                    child:
                                        Image.asset('assets/img/Indo-flag.png'),
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
