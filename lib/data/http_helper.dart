import 'package:http/http.dart' as http;

class HttpHelper {
  // http://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=77fcf832128397440cded4ecdc05f46c
  final String authority = 'api.openweathermap.org';
  final String path = '/data/2.5/weather';
  final String apiKey = '77fcf832128397440cded4ecdc05f46c';

  Future<String> getWeather(String location) async {
    Map<String, dynamic> parameters = {
      'q': location,
      'APPID': apiKey,
    };
    Uri uri = Uri.https(authority, path, parameters);
    http.Response response = await http.get(uri);

    return response.body;
  }
}