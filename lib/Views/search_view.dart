import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/cubits/weather_cubits/weather_cubit.dart';


class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text("Search a city" , style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Center(
          child: TextField(
            onSubmitted: (value)  {
              BlocProvider.of<WeatherCubit>(context).getWeather(cityName: value);
              Navigator.pop(context);
            },
            decoration: InputDecoration(
              contentPadding: EdgeInsetsGeometry.symmetric(
                vertical: 32,
                horizontal: 20
              ),
              labelText: "search",
              hintText: "enter a city",
              labelStyle: TextStyle(
                color: Colors.grey
              ),
              hintStyle: TextStyle(
                color: Colors.grey
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide: BorderSide(
                  color: Colors.grey
                )
              ),
              suffixIcon: Icon(
                Icons.search,
              )
            ),
          ),
        ),
      ),
    );
  }
}
