import 'dart:convert';

import 'package:http/http.dart' as http;

class NetworkingHelper {
  NetworkingHelper({required this.ID});
  final String ID;

  Future fetchMovieData() async {
    final response = await http.get(
        Uri.parse(
            'https://kinopoiskapiunofficial.tech/api/v2.2/films/$ID/'),
        headers: {'X-API-KEY': '6b4cbaee-210d-4440-b945-df161696627d'});
    if (response.statusCode == 200) {
 
        String movieData = jsonDecode(utf8.decode(response.bodyBytes));
        print(movieData);
      }
     else {
      print('Ошибка запроса');
    }
  }
}

