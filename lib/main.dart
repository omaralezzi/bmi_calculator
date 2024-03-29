import 'package:flutter/material.dart';
import 'input_page.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor:
            Colors.red, // Set the primary color for certain components
        appBarTheme: AppBarTheme(
          backgroundColor:
              Color(0xFF0F101D), // Set the background color for the AppBar
        ),
        scaffoldBackgroundColor:
            Color(0xFF0F101D), // Set the background color of the entire app
        textTheme: TextTheme(
          titleLarge: TextStyle(
            color: Colors.white, // Set the text color for the title
          ),
          bodyLarge: TextStyle(
            color: Colors.white, // Set the text color for body
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}
