import 'package:flutter/material.dart';
import 'package:weather_app/Views/search_view.dart';

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
          backgroundColor: Colors.blue,
          title: Text("Weather App" , style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold
          ),),
        ),
        body:NoDataWidget()
    );
  }
}
