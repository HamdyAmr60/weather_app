import 'package:flutter/material.dart';
import 'package:weather_app/widgets/no_data_widget.dart';

void main() {
  runApp(const HomePage());
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("WeatherApp"),
        ),
        body:NoDataWidget()
      ),
    );
  }
}
