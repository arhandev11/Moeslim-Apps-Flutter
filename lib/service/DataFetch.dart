import 'package:http/http.dart';
import 'dart:convert';

class Fetch {
  final String url;

  Fetch(this.url);

  Future fetchData() async {
    Response response = await get(Uri.parse(url));

    if (response.statusCode == 200) {
      return json.decode(utf8.decode(response.bodyBytes));
    } else {
      print(response.statusCode);
    }
  }
}
