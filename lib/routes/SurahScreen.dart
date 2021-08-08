import 'package:flutter/material.dart';
import 'package:quran/routes/AyatScreen.dart';
import 'package:quran/service/DataFetch.dart';

class SurahScreen extends StatefulWidget {
  final String languange;

  SurahScreen({this.languange});

  @override
  _SurahScreenState createState() => _SurahScreenState();
}

class _SurahScreenState extends State<SurahScreen> {
  Future surahdata;

  @override
  void initState() {
    super.initState();
    surahdata = getData();
  }

  Widget surahTile(context, data) {
    return InkWell(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (BuildContext build) => AyatScreen(
                    number: data["number"].toString(),
                    nameSurah: data["englishName"],
                    lang: widget.languange)));
      },
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        elevation: 20,
        child: Container(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            leading: Container(
              child: Text(
                data["number"].toString(),
                style:
                    TextStyle(color: Colors.lightBlue.shade400, fontSize: 30),
              ),
            ),
            subtitle: Container(
              alignment: Alignment.centerLeft,
              child: Column(
                children: <Widget>[
                  Text(
                    data["englishName"],
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.lightBlue.shade400,
                        fontSize: 20,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    data["englishNameTranslation"],
                    textAlign: TextAlign.center,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text("${data["numberOfAyahs"]} Verse",
                      textAlign: TextAlign.center)
                ],
              ),
            ),
            trailing: Container(
              width: 150,
              child: Text(
                data["name"],
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.normal),
                textAlign: TextAlign.right,
              ),
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    String selectedLang =
        widget.languange == "Eng" ? "English Translation" : "Terjemahan Bahasa";

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
          child: Container(
              padding: EdgeInsets.all(20.0),
              child: Text(
                selectedLang,
                style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w600,
                    letterSpacing: 1),
              )),
        ),
      ),
      body: FutureBuilder(
        future: surahdata,
        builder: (context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: snapshot.data['data'].length,
              itemBuilder: (BuildContext context, int index) {
                List surah = snapshot.data['data'];
                return index == 0
                    ? Column(
                        children: [
                          SizedBox(
                            height: 20,
                          ),
                          surahTile(context, surah[index])
                        ],
                      )
                    : surahTile(context, surah[index]);
              },
            );
          } else {
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }

  Future getData() async {
    Fetch fetchData = Fetch("http://api.alquran.cloud/v1/surah");
    return fetchData.fetchData();
  }
}
