import '../../model/weather_model.dart';

class WeatherState{

}


class WeatherStateLoaded extends WeatherState {
final WeatherModel weatherModel;

WeatherStateLoaded(this.weatherModel);
}

class NoWeatherState extends WeatherState {

}
class WeatherStateFailed extends WeatherState {

}