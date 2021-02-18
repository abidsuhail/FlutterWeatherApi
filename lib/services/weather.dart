import 'package:clima/services/networking.dart';
import 'package:clima/utilities/location.dart';

class WeatherModel {
  Future<dynamic> getWeatherData() async {
    MyLocation myLocation = MyLocation();
    await myLocation.getCurrentPosition();
    NetworkHelper helper = new NetworkHelper(
        'http://api.openweathermap.org/data/2.5/weather?lat=${myLocation.latitude}&lon=${myLocation.longitude}&appid=fcc120b9b65db38c9d64ed54322ce977&units=metric');
    return await helper.getData();
  }

  Future<dynamic> getWeatherByCity(String cityName) async {
    MyLocation myLocation = MyLocation();
    await myLocation.getCurrentPosition();
    NetworkHelper helper = new NetworkHelper(
        'http://api.openweathermap.org/data/2.5/weather?q=$cityName&appid=fcc120b9b65db38c9d64ed54322ce977&units=metric');
    return await helper.getData();
  }

  String getWeatherIcon(int condition) {
    if (condition < 300) {
      return '🌩';
    } else if (condition < 400) {
      return '🌧';
    } else if (condition < 600) {
      return '☔️';
    } else if (condition < 700) {
      return '☃️';
    } else if (condition < 800) {
      return '🌫';
    } else if (condition == 800) {
      return '☀️';
    } else if (condition <= 804) {
      return '☁️';
    } else {
      return '🤷‍';
    }
  }

  String getMessage(double temp) {
    if (temp > 25) {
      return 'It\'s 🍦 time';
    } else if (temp > 20) {
      return 'Time for shorts and 👕';
    } else if (temp < 10) {
      return 'You\'ll need 🧣 and 🧤';
    } else {
      return 'Bring a 🧥 just in case';
    }
  }
}
