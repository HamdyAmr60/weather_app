class WeatherModel {
final  double avgTemp;
final  double maxTemp;
final  double minTemp;
final  String city;
final  String lastUpdated;
final  String weatherDescription;
final  String? weatherIcon;


  WeatherModel(
      {
        required this.avgTemp ,
        required this.maxTemp ,
        required this.minTemp ,
        required this.city ,
        required this.lastUpdated ,
        required this.weatherDescription ,
        this.weatherIcon
      }
      );

  factory WeatherModel.fromJson(Map<String, dynamic> json) {
    return WeatherModel(
      city: json["location"]["name"],
      avgTemp:json["forecast"]["forecastday"][0]["day"]["avgtemp_c"],
      maxTemp: json["forecast"]["forecastday"][0]["day"]["maxtemp_c"],
      minTemp: json["forecast"]["forecastday"][0]["day"]["mintemp_c"],
      lastUpdated: json["current"]["last_updated"],
      weatherDescription: json["forecast"]["forecastday"][0]["day"]["condition"]["text"],
      weatherIcon: json["forecast"]["forecastday"][0]["day"]["condition"]["icon"],

    );
  }

}