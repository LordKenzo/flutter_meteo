import 'package:flutter/material.dart';
import 'package:meteo/src/models/weather.dart';
import 'package:meteo/src/services/weather.service.dart';
import 'package:meteo/src/widgets/weather.widget.dart';

class Home extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return HomeState();
  }
}

class HomeState extends State<Home> {
  Weather weather;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: Text('Meteo App'),
      ),
      body: weather == null ? Container() : WeatherWidget(weather),
      backgroundColor: Colors.blueGrey,
      floatingActionButton: FloatingActionButton(
        onPressed: _load,
        child: Icon(Icons.cloud),
      ),
    );
  }

  _load() async {
    final response = await WeatherService().getData(citta: 'Rome');
    setState((){
      weather = Weather.fromJson(response);
      print(weather);
    });

  }
}

