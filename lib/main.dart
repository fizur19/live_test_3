import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main(List<String> args) {
  runApp(App());
}

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(),
      home: Home(),
    );
  }
}

class Home extends StatefulWidget {
  Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List list = [
    {
      "city": "New York",
      "temperature": 20,
      "condition": "Clear",
      "humidity": 60,
      "windSpeed": 5.5
    },
    {
      "city": "Los Angeles",
      "temperature": 25,
      "condition": "Sunny",
      "humidity": 50,
      "windSpeed": 6.8
    },
    {
      "city": "London",
      "temperature": 15,
      "condition": "Partly Cloudy",
      "humidity": 70,
      "windSpeed": 4.2
    },
    {
      "city": "Tokyo",
      "temperature": 28,
      "condition": "Rainy",
      "humidity": 75,
      "windSpeed": 8.0
    },
    {
      "city": "Sydney",
      "temperature": 22,
      "condition": "Cloudy",
      "humidity": 55,
      "windSpeed": 7.3
    },
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('whether info app'),
      ),
      body: ListView.builder(
        itemCount: list.length,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              title: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    ' city:  ${list[index]['city']}',
                    style: TextStyle(fontSize: 19, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    height: 3,
                  ),
                  Text('temperature :  ${list[index]['temperature']} ⁰C'),
                  SizedBox(
                    height: 3,
                  ),
                  Text('condition :  ${list[index]['condition']} %'),
                  SizedBox(
                    height: 3,
                  ),
                  Text('humidity :  ${list[index]['humidity']}'),
                  SizedBox(
                    height: 3,
                  ),
                  Text('windSpeed :  ${list[index]['windSpeed']}  m/ss'),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
