import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quran/routes/Home.dart';

class RegisterScreen extends StatefulWidget {
  @override
  _RegisterScreenState createState() => _RegisterScreenState();
}

class _RegisterScreenState extends State<RegisterScreen> {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 40, horizontal: 40),
        child: ListView(
          children: <Widget>[
            Container(child: Image.asset("assets/img/muslim.png")),
            Container(
              margin: EdgeInsets.symmetric(vertical: 15),
              alignment: Alignment.center,
              child: Text(
                "Sign Up",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: TextField(
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    hintText: "Fullname",
                    hintStyle: TextStyle(fontSize: 20),
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.lightBlue.shade400)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.lightBlue.shade400))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: TextField(
                controller: emailController,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    hintText: "Email",
                    hintStyle: TextStyle(fontSize: 20),
                    prefixIcon: Icon(Icons.email),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.lightBlue.shade400)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.lightBlue.shade400))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 20),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    hintText: "Your Password",
                    hintStyle: TextStyle(fontSize: 20),
                    prefixIcon: Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.lightBlue.shade400)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.lightBlue.shade400))),
              ),
            ),
            Container(
              margin: EdgeInsets.only(bottom: 40),
              child: TextField(
                obscureText: true,
                style: TextStyle(fontSize: 20),
                decoration: InputDecoration(
                    hintText: "Confirm Password",
                    hintStyle: TextStyle(fontSize: 20),
                    prefixIcon: Icon(Icons.lock),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.lightBlue.shade400)),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide:
                            BorderSide(color: Colors.lightBlue.shade400))),
              ),
            ),
            Container(
                width: double.infinity,
                child: TextButton(
                  child: Text(
                    'Register',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        fontSize: 20),
                  ),
                  onPressed: () async {
                    await _firebaseAuth
                        .createUserWithEmailAndPassword(
                            email: emailController.text,
                            password: passwordController.text)
                        .then((value) => Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (context) => Home())));
                  },
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 25),
                    backgroundColor: Colors.lightBlue.shade400,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                )),
            Container(
                alignment: Alignment.center,
                margin: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                child: Text(
                    "By signing up, you agree to the Terms of Service and Privacy Policy",
                    textAlign: TextAlign.center,
                    style: TextStyle(color: Colors.grey)))
          ],
        ),
      ),
    );
  }
}
