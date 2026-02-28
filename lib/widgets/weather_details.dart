import 'package:flutter/material.dart';
class WeatherDetails extends StatelessWidget {
  const WeatherDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Alexandria",style:
            TextStyle(
              fontSize: 30,
              fontWeight: FontWeight.bold
            ),),
          SizedBox(height: 20,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset("assets/images/cloudy.png"),
              Text("15",style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.bold
              ),),
              Column(
                children: [
                  Text("max: 18",style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                  Text("min: 9",style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),)
                ],
              )
            ],
          ),
          SizedBox(height: 20,),
          Text("cloudy" , style: TextStyle(
            fontSize: 28,
            fontWeight: FontWeight.bold
          ),),
        ],
      ),
    );
  }
}
