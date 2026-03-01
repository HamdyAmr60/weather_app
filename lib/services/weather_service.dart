import 'package:dio/dio.dart';

import '../model/weather_model.dart';

class WeatherService {
  final Dio dio;
  final String baseUrl = "http://api.weatherapi.com/v1";
  final String apiKey = "d0bf1dae0706452eacc233254232703";

  WeatherService(this.dio);
  
  
  Future<WeatherModel> getDayWeather({required String city}) async{
  try {
    Response response =  await dio.get("$baseUrl/forecast.json?key=$apiKey&q=$city&days=1");
      final result = response.data;

      return WeatherModel.fromJson(result);
  } on DioException catch (e) {
    throw Exception(e);

  } catch(e){
    throw Exception(e);
  }



  }
}