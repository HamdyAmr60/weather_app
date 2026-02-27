
import 'package:flutter/material.dart';
class NoDataWidget extends StatelessWidget {
  const NoDataWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: EdgeInsets.all(16),
        width: double.infinity,
        height: 200,
        alignment: Alignment.center,
        child: Text("There is no Weather Data Try to search"),
      ),
    );
  }
}
