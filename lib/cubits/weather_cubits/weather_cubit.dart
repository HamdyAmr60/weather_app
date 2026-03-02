import 'package:dio/dio.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubits/weather_state.dart';

import '../../model/weather_model.dart';
import '../../services/weather_service.dart';

class WeatherCubit extends Cubit<WeatherState> {
WeatherCubit():super(NoWeatherState());


void getWeather({required String cityName}) async{
  try{
    WeatherModel weatherModel = await WeatherService(Dio()).getDayWeather(city: cityName);

  emit(WeatherStateLoaded(weatherModel));
  }catch (e) {
    emit(WeatherStateFailed());
  }
}
}