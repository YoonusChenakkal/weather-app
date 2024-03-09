import 'dart:convert';
import 'dart:io';
import 'model_';
import 'package:flutter/material.dart';
import 'package:weather_app/forecast_bar.dart';
import 'package:weather_app/upper_section.dart';
import 'package:http/http.dart' as http;

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  Weather? currentWeather;
  final queryParameters = {
    'key': 'b6904e7f31174c3f801100901240603',
    'q': 'kochi',
  };
  getWeather() async {
    var url =
        Uri.http('api.weatherapi.com', '/v1/current.json', queryParameters);
    var response = await http.get(
      url,
    );
    // var resposeData = json.decode(response.body);
    if (response.statusCode == 200) {
      setState(() {
        currentWeather = weatherFromJson(response.body);
         Future.delayed(Duration(minutes: 5), getWeather);
      });
    } else {
      print('Failed to fetch data. Status code: ${response.statusCode}');
    }
    
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getWeather();
    
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height/1.24,
            width: MediaQuery.of(context).size.width,
            color: const Color.fromARGB(255, 100, 100, 100),
            child: Image.network(fit: BoxFit.fitHeight,'https://static.vecteezy.com/system/resources/previews/000/201/488/original/vector-blue-landscape-illustration.jpg'),
            
 ),
          forecast_bar(weatherdata: currentWeather),
          upper_section(weatherdata: currentWeather),
        ],
      ),
    ));
  }
}
