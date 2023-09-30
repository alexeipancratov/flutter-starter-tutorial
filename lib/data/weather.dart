class Weather {
  String name = '';
  String description = '';
  double temperature = 0;
  double perceived = 0;
  int pressure = 0;
  int humidity = 0;

  Weather(this.name, this.description, this.temperature, this.perceived,
      this.pressure, this.humidity);

  // named ctor
  Weather.fromJson(Map<String, dynamic> weatherMap) {
    name = weatherMap['name'];

    const double celciusConst = 273.15;
    temperature = (weatherMap['main']['temp'] - celciusConst) ?? 0;
    perceived = (weatherMap['main']['feels_like'] - celciusConst) ?? 0;
    pressure = weatherMap['main']['pressure'] ?? 0;
    humidity = weatherMap['main']['humidity'] ?? 0;
    description = weatherMap['weather'][0]['description'] ?? '';
  }
}
