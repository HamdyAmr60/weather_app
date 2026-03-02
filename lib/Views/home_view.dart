import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:weather_app/Views/search_view.dart';
import 'package:weather_app/cubits/weather_cubits/weather_state.dart';
import 'package:weather_app/widgets/weather_details.dart';

import '../cubits/weather_cubits/weather_cubit.dart';
import '../widgets/no_data_widget.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          actions: [
            IconButton(onPressed: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=>SearchView()),);
            }, icon: Icon(Icons.search, color: Colors.white,size: 30,),),
          ],
          title: Text("Weather App" , style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
        ),
        body:BlocBuilder<WeatherCubit , WeatherState>(builder: (context , state)
        {
            if(state is NoWeatherState){
              return const NoDataWidget();
            }else if(state is WeatherStateLoaded){
              return  WeatherDetails(weather:state.weatherModel);
            }else {
              return const Center(child: Text("oops there is an error "));
            }
        }
        )
    );
  }
}
