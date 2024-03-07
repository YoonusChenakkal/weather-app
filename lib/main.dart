import 'package:flutter/material.dart';
import 'package:weather_app/forecast_bar.dart';
import 'package:weather_app/upper_section.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 100, 100, 100),
          ),
          forecast_bar(),
          upper_section(),
        ],
      ),
    ));
  }
}
