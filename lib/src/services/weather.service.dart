import 'dart:convert';
import 'package:http/http.dart' show get;

class WeatherService {

  getData({String citta}) async {
    const API = 'ed06b665d6856e09ad21c16e8fae539d';
    final url = 'https://api.openweathermap.org/data/2.5/weather?appid=$API&q=$citta';
    try {
      final res = await get(url);
      final decode = json.decode(res.body);
      if(res.statusCode == 200) {
        return decode;
      } else {
        throw('Opsss...no 200');
      }
    } catch(e) {
      throw('Opss....');
    }
  }

}