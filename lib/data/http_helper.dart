import 'package:flutter_application_1/data/weather.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HttpHelper {
  // http://api.openweathermap.org/data/2.5/weather?q=London,uk&APPID=77fcf832128397440cded4ecdc05f46c
  final String authority = 'api.openweathermap.org';
  final String path = '/data/2.5/weather';
  final String apiKey = '77fcf832128397440cded4ecdc05f46c';

  Future<Weather> getWeather(String location) async {
    Map<String, dynamic> parameters = {
      'q': location,
      'APPID': apiKey,
    };
    Uri uri = Uri.https(authority, path, parameters);
    http.Response response = await http.get(uri);
    Map<String, dynamic> data = json.decode(response.body);
    Weather weather = Weather.fromJson(data);

    return weather;
  }
}