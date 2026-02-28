
import 'package:flutter/material.dart';
class NoDataWidget extends StatelessWidget {
  const NoDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0),
          child: Text("There is no Weather Data " , style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Colors.grey
          ),),
        ),
        Padding(padding: const EdgeInsetsGeometry.symmetric(horizontal: 18.0),
        child: Text("Please try again later", style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 30,
          color: Colors.grey
        ),),)
      ],
    );
  }
}
