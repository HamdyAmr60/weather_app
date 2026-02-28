import 'package:flutter/material.dart';

class SearchView extends StatelessWidget {
  const SearchView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text("Search a city" , style: TextStyle(
          color: Colors.white,
          fontWeight: FontWeight.bold
        ),),
      ),

      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18.0),
        child: Center(
          child: TextField(
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
