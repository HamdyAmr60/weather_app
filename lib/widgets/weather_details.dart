import 'package:flutter/material.dart';
import 'package:weather_app/model/weather_model.dart';
class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key , required this.weather});
final WeatherModel weather;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(weather.city,style:
            TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
          Text("Last Updated : ${weather.lastUpdated.substring(10)}",style: TextStyle(
              fontSize: 26,
              fontWeight: FontWeight.bold
          ),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
                Image.network("https:${weather.weatherIcon}" , height: 100,)

              ,Text(weather.avgTemp.toString(),style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),),
              Column(
                children: [
                  Text("max: ${weather.maxTemp}",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("min: ${weather.minTemp}",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),)
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          Text(weather.weatherDescription , style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),),
        ],
      ),
    );
  }
}
