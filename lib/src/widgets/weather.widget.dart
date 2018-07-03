import 'package:flutter/material.dart';
import 'package:meteo/src/models/weather.dart';

class WeatherWidget extends StatelessWidget {
  
  final Weather weather;
  final textStyle = TextStyle(fontSize: 32.0, color: Colors.white);
  WeatherWidget(this.weather);
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(18.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            Text(weather.citta, style: textStyle),
            Text(weather.temperatura.toStringAsFixed(0) + '°', style: textStyle),
            Image.network('https://openweathermap.org/img/w/${weather.icona}'),
            Text(weather.meteo, style: textStyle)
          ],
        ),
      ),
    );
  }
}