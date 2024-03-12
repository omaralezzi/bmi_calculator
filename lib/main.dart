import 'package:flutter/material.dart';

void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor:
            Colors.grey, // Set the primary color for certain components
        appBarTheme: AppBarTheme(
          backgroundColor:
              Color(0xFF0F101D), // Set the background color for the AppBar
        ),
        floatingActionButtonTheme: FloatingActionButtonThemeData(
          backgroundColor: Colors.blue, // Set the background color for the FAB
        ),
        scaffoldBackgroundColor:
            Color(0xFF0F101D), // Set the background color of the entire app
        textTheme: TextTheme(
          headline6: TextStyle(
            color: Colors.white, // Set the text color for the title
          ),
          bodyText1: TextStyle(
            color: Colors.white, // Set the text color for body
          ),
          bodyText2: TextStyle(
            color: Colors.white, // Set the text color for body
          ),
        ),
      ),
      home: InputPage(),
    );
  }
}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'BMI CALCULATOR',
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        centerTitle: true, // Center the title
      ),
      body: Center(
        child: Text(
          'Body Text',
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Add your onPressed logic here
        },
      ),
    );
  }
}
