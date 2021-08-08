import 'package:flutter/material.dart';
import 'package:quran/routes/LoginScreen.dart';
import 'package:quran/routes/RegisterScreen.dart';

class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        child: ListView(
          children: <Widget>[
            Container(child: Image.asset("assets/img/muslim.png")),
            Container(
              margin: EdgeInsets.symmetric(vertical: 60),
              alignment: Alignment.center,
              child: Text(
                "Al-Qur'an Apps",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                      width: double.infinity,
                      child: TextButton(
                        child: Text(
                          'Login',
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext build) =>
                                      LoginScreen()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 25),
                          backgroundColor: Colors.lightBlue.shade400,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(12),
                          ),
                        ),
                      )),
                  Row(children: <Widget>[
                    Expanded(
                        child: Container(
                            padding: EdgeInsets.only(
                                top: 20, bottom: 20, left: 50, right: 20),
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1.0,
                            ))),
                    Text("OR"),
                    Expanded(
                        child: Container(
                            margin: EdgeInsets.symmetric(vertical: 40),
                            padding: EdgeInsets.only(left: 20, right: 50),
                            child: Divider(
                              color: Colors.grey,
                              thickness: 1.0,
                            ))),
                  ]),
                  Container(
                      width: double.infinity,
                      child: TextButton(
                        child: Text(
                          'Register',
                          style: TextStyle(
                              color: Colors.lightBlue.shade400,
                              fontWeight: FontWeight.w600,
                              fontSize: 20),
                        ),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (BuildContext build) =>
                                      RegisterScreen()));
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.symmetric(vertical: 25),
                          backgroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(12),
                              side:
                                  BorderSide(color: Colors.lightBlue.shade400)),
                        ),
                      )),
                ])
          ],
        ),
      ),
    );
  }
}
