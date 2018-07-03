class Weather {
  String citta;
  String meteo;
  double temperatura;
  String icona;

  Weather.fromJson(Map<String, dynamic>jsonData){
    citta = jsonData['name'];
    meteo = jsonData['weather'][0]['main'];
    temperatura = jsonData['main']['temp'] - 273.15;
    icona = jsonData['weather'][0]['icon'] + '.png';

  }

  toString() {
    return '$citta $meteo $temperatura $icona';
  }
}

/*
{
"coord": {
"lon": 12.48,
"lat": 41.89
},
"weather": [
{
"id": 801,
"main": "Clouds",
"description": "few clouds",
"icon": "02n"
}
],
"base": "stations",
"main": {
"temp": 298.62,
"pressure": 1014,
"humidity": 78,
"temp_min": 297.15,
"temp_max": 299.15
},
"visibility": 10000,
"wind": {
"speed": 4.1,
"deg": 170
},
"clouds": {
"all": 20
},
"dt": 1530557700,
"sys": {
"type": 1,
"id": 5848,
"message": 0.0022,
"country": "IT",
"sunrise": 1530502771,
"sunset": 1530557328
},
"id": 6539761,
"name": "Rome",
"cod": 200
}

 */