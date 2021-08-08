import 'package:flutter/material.dart';

class SkillScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.symmetric(vertical: 40, horizontal: 30),
            color: Colors.lightBlue.shade400,
            child: Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  child: Text(
                    "Skill List",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(25),
                      border: Border.all(
                          color: Colors.lightBlue.shade700, width: 3)),
                  padding: EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Container(
                        width: 120,
                        child: CircleAvatar(
                            radius: 100,
                            backgroundImage:
                                AssetImage('assets/img/Profile.jpg')),
                      ),
                      Container(
                        child: Column(
                          children: <Widget>[
                            Text(
                              "Farhan Dewanta",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey.shade700),
                            ),
                            Text(
                              "Syahputra",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.grey.shade700),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              "@supiraru",
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontWeight: FontWeight.bold),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40, left: 20, right: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 450,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.lightBlue, width: 2)),
                  child: Column(
                    children: [
                      Image.asset("assets/img/Laravel.png", width: 100,),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Laravel",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 150,
                        child: Text(
                          "Laravel adalah PHP framework yang dapat digunakan sebagai backend maupun frontend",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 150,
                        alignment: Alignment.centerRight,
                        child: Text(
                          "85%",
                          style: TextStyle(
                              color: Colors.lightBlue.shade400,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 450,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.lightBlue, width: 2)),
                  child: Column(
                    children: [
                      Image.asset("assets/img/React.png", width: 100,),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "React JS",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 150,
                        child: Text(
                          "React JS adalah suatu library dari Node js yang digunakan untuk mengembangkan frontend Web",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 150,
                        alignment: Alignment.centerRight,
                        child: Text(
                          "80%",
                          style: TextStyle(
                              color: Colors.lightBlue.shade400,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 450,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.lightBlue, width: 2)),
                  child: Column(
                    children: [
                      Image.asset("assets/img/Flutter.png", width: 100,),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Flutter",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 150,
                        child: Text(
                          "Flutter adalah teknologi open source dari Google yang bisa digunakan untuk membuat aplikasi Android dan IOS",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Container(
                        width: 150,
                        alignment: Alignment.centerRight,
                        child: Text(
                          "80%",
                          style: TextStyle(
                              color: Colors.lightBlue.shade400,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  height: 450,
                  padding: EdgeInsets.symmetric(vertical: 30, horizontal: 10),
                  decoration: BoxDecoration(
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.lightBlue, width: 2)),
                  child: Column(
                    children: [
                      Image.asset("assets/img/JS.png", width: 100,),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "Javascript",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 25),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                        width: 150,
                        child: Text(
                          "Javascript adalah suatu bahasa pemrograman yang digunakan dalam pengembangan web",
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 70,
                      ),
                      Container(
                        width: 150,
                        alignment: Alignment.centerRight,
                        child: Text(
                          "80%",
                          style: TextStyle(
                              color: Colors.lightBlue.shade400,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
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
