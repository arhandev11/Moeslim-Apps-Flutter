import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:quran/service/DataFetch.dart';

class PrayTimeScreen extends StatefulWidget {
  @override
  _PrayTimeScreenState createState() => _PrayTimeScreenState();
}

class _PrayTimeScreenState extends State<PrayTimeScreen> {
  Future timedata;
  String date;
  String month;
  String year;

  @override
  void initState() {
    super.initState();
    date = DateFormat.d().format(DateTime.now());
    month = DateFormat.M().format(DateTime.now());
    year = DateFormat.y().format(DateTime.now());
    if (int.parse(date) < 10) {
      date = "0$date";
    } else {
      date = "$date";
    }
    if (int.parse(month) < 10) {
      month = "0$month";
    } else {
      month = "$month";
    }
    print("$date, $month, $year");
    timedata = getData(date, month, year);
  }

  @override
  Widget build(BuildContext context) {
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
                  margin: EdgeInsets.only(bottom: 20),
                  alignment: Alignment.center,
                  child: Text(
                    "Pray Times",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w600,
                        letterSpacing: 1,
                        fontSize: 25),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 40),
                  alignment: Alignment.center,
                  child: Text(
                    "City: Jakarta",
                    style: TextStyle(
                        color: Colors.white, letterSpacing: 1, fontSize: 20),
                  ),
                ),
                Card(
                  color: Colors.white,
                  elevation: 8,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  child: FutureBuilder(
                    future: timedata,
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.hasData) {
                        return snapshot.data['jadwal']['status'] != "error"
                            ? Container(
                                padding: EdgeInsets.symmetric(vertical: 20),
                                child: Column(
                                  children: [
                                    Container(
                                      margin:
                                          EdgeInsets.symmetric(vertical: 10),
                                      child: Column(
                                        children: [
                                          Text(
                                            snapshot.data['jadwal']['data']
                                                ['tanggal'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                fontSize: 20),
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: Colors.blueGrey.shade50,
                                      thickness: 2,
                                    ),
                                    Container(
                                      margin: EdgeInsets.symmetric(
                                          vertical: 10, horizontal: 60),
                                      child: Column(
                                        children: [
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Subuh",
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                                Text(
                                                  snapshot.data['jadwal']
                                                      ['data']['subuh'],
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                )
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            color: Colors.blueGrey.shade50,
                                            thickness: 2,
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Dzuhur",
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                                Text(
                                                  snapshot.data['jadwal']
                                                      ['data']['dzuhur'],
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                )
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            color: Colors.blueGrey.shade50,
                                            thickness: 2,
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Ashar",
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                                Text(
                                                  snapshot.data['jadwal']
                                                      ['data']['ashar'],
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                )
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            color: Colors.blueGrey.shade50,
                                            thickness: 2,
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "Maghrib",
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                                Text(
                                                  snapshot.data['jadwal']
                                                      ['data']['maghrib'],
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                )
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            color: Colors.blueGrey.shade50,
                                            thickness: 2,
                                          ),
                                          Container(
                                            margin: EdgeInsets.symmetric(
                                                vertical: 10),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment
                                                      .spaceBetween,
                                              children: [
                                                Text(
                                                  "isya",
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                ),
                                                Text(
                                                  snapshot.data['jadwal']
                                                      ['data']['isya'],
                                                  style:
                                                      TextStyle(fontSize: 18),
                                                )
                                              ],
                                            ),
                                          ),
                                          Divider(
                                            color: Colors.blueGrey.shade50,
                                            thickness: 2,
                                          ),
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              )
                            : Center(
                                child: Container(
                                  alignment: Alignment.center,
                                child: Text("Maaf API sedang Error", style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold), textAlign: TextAlign.center,),
                                height: 400,
                                width: 200,
                              ));
                      } else {
                        return Container(
                            height: 400,
                            child: Center(child: CircularProgressIndicator()));
                      }
                    },
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Future getData(date, month, year) async {
    Fetch fetchData = Fetch(
        "https://api.banghasan.com/sholat/format/json/jadwal/kota/667/tanggal/$year-$month-$date");
    return fetchData.fetchData();
  }
}
