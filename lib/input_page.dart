import 'package:flutter/material.dart';

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
            style: Theme.of(context).textTheme.titleLarge,
          ),
        ),
        centerTitle: true, // Center the title
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: Row(
              children: [
                buildContainer(label: '1.1'),
                buildContainer(label: '1.2'),
              ],
            ),
          ),
          buildContainer(label: '2'),
          Expanded(
            child: Row(
              children: [
                buildContainer(label: '3.1'),
                buildContainer(label: '3.2'),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height *
                0.1, // 10% of screen height
            child: buildContainer(label: 'Pink Card', color: Colors.pink),
          ),
        ],
      ),
    );
  }

  Expanded buildContainer(
      {String? label, Color color = const Color(0xFF1D1E33)}) {
    return Expanded(
      child: Container(
        margin: EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color, // Set the background color
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Center(
          child: Text(
            label!,
            style: TextStyle(
              fontSize: 34.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        // Add content for the container here
      ),
    );
  }
}
