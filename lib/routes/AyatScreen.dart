import 'package:flutter/material.dart';
import 'package:quran/service/DataFetch.dart';

class AyatScreen extends StatefulWidget {
  final String number;
  final String nameSurah;
  final String lang;

  AyatScreen({this.number, this.nameSurah, this.lang});
  @override
  _AyatScreenState createState() => _AyatScreenState();
}

class _AyatScreenState extends State<AyatScreen> {
  Future ayatdata;
  String trans;

  @override
  void initState() {
    super.initState();
    ayatdata = getData();
  }

  Widget ayatTile(dataArab, dataEng) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: 40,
                child: Text(
                  dataArab["numberInSurah"].toString(),
                  style: TextStyle(
                      color: Colors.lightBlue.shade400,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Expanded(
                  child: Container(
                alignment: Alignment.centerRight,
                child: Text(
                  dataArab["text"],
                  style: TextStyle(fontSize: 25),
                ),
              ))
            ],
          ),
          Container(
              margin: EdgeInsets.symmetric(vertical: 50),
              alignment: Alignment.centerLeft,
              child: Text(
                dataEng["text"],
                style: TextStyle(fontSize: 15, color: Colors.black),
                textAlign: TextAlign.left,
              )),
          Divider(
            color: Colors.grey,
            thickness: 1,
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.lightBlue.shade400,
        shadowColor: Colors.black,
        centerTitle: true,
        leading: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: Icon(Icons.arrow_back_ios)),
        title: Container(
            padding: EdgeInsets.all(20.0),
            child: Text(
              widget.nameSurah,
              style: TextStyle(
                  fontSize: 22, fontWeight: FontWeight.w600, letterSpacing: 1),
            )),
      ),
      body: Container(
        color: Colors.white,
        child: FutureBuilder(
            future: ayatdata,
            builder: (context, AsyncSnapshot snapshot) {
              if (snapshot.hasData) {
                return ListView.builder(
                  itemCount: snapshot.data['data'][0]["numberOfAyahs"],
                  itemBuilder: (BuildContext context, int index) {
                    List ayatArab = snapshot.data['data'][0]['ayahs'];
                    List ayatEng = snapshot.data['data'][1]['ayahs'];
                    return index == 0 &&
                            widget.number != "1" &&
                            widget.number != "9"
                        ? Column(
                            children: [
                              Container(
                                margin: EdgeInsets.symmetric(vertical: 20),
                                alignment: Alignment.center,
                                child: Text(
                                  "بِسْمِ اللَّهِ الرَّحْمَنِ الرَّحِيم",
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              ayatTile(ayatArab[index], ayatEng[index])
                            ],
                          )
                        : ayatTile(ayatArab[index], ayatEng[index]);
                  },
                );
              } else {
                return Center(child: CircularProgressIndicator());
              }
            }),
      ),
    );
  }

  Future getData() async {
    trans = widget.lang == "Eng" ? "en.sahih" : "id.indonesian";
    Fetch fetchData = Fetch(
        "http://api.alquran.cloud/v1/surah/${widget.number}/editions/quran-unicode,$trans");
    return fetchData.fetchData();
  }
}
