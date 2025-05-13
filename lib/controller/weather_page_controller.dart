import 'package:get/get.dart';

import '../models/weather_model.dart';
import '../services/weather_service.dart';

class WeatherPageController extends GetxController {
  var weather = Rxn<Weather>();
  var errorMessage = ''.obs;

  @override
  void onInit() {
    super.onInit();
    fetchWeather();
  }

  Future<void> fetchWeather() async {
    WeatherService weatherService = WeatherService();
    try {
      final position = await weatherService.getCurrentPosition();
      Weather fetchedWeather = await weatherService.getWeatherByCoordinates(
          position.latitude, position.longitude);
      weather.value = fetchedWeather;
      errorMessage.value = '';
    } catch (error) {
      weather.value = null;
      errorMessage.value = error.toString();
    }
  }

  // Add a method to get plant recommendations
  String getPlantRecommendation() {
    if (weather.value == null) {
      return 'No data available';
    }

    final temperature = weather.value!.temperature;

    if (temperature >= 18 && temperature <= 25) {
      return 'Tomat: 18-25°C. Tomat direkomendasikan untuk ditanam pada suhu 18-25°C karena suhu ini memungkinkan pertumbuhan yang cepat dan pematangan buah yang baik. Suhu yang terlalu rendah atau tinggi dapat menghambat perkembangan buah dan mengurangi kualitas hasil panen.';
    } else if (temperature >= 20 && temperature <= 30) {
      return 'Timun: 20-30°C. Timun direkomendasikan untuk ditanam pada suhu 20-30°C. Suhu ini mendukung pertumbuhan cepat dan hasil panen yang baik. Suhu yang terlalu dingin atau panas dapat menghambat pertumbuhan tanaman.';
    } else if (temperature >= 25 && temperature <= 35) {
      return 'Cabai: 25-35°C. Cabai lebih baik ditanam pada suhu 25-35°C. Suhu ini mendukung pertumbuhan dan pematangan buah cabai yang optimal. Suhu ekstrem dapat menurunkan hasil panen dan kualitas buah.';
    } else {
      return 'Suhu saat ini tidak mendukung penanaman tomat, timun, atau cabai. Pertimbangkan untuk memilih tanaman yang sesuai dengan suhu lingkungan.';
    }
  }

  String getImagePath() {
    if (weather.value == null) {
      return '';
    }

    final temperature = weather.value!.temperature;

    if (temperature >= 18 && temperature <= 25) {
      return 'assets/images/weather/tomato.png';
    } else if (temperature >= 20 && temperature <= 30) {
      return 'assets/images/weather/cucumber.jpg';
    } else if (temperature >= 25 && temperature <= 35) {
      return 'assets/images/weather/chili.png';
    } else {
      return '';
    }
  }

  // This method gets the weather animation based on the main condition
  String getWeatherAnimation(String? mainCondition) {
    if (mainCondition == null)
      return 'assets/json/sunny.json'; // default to sunny

    switch (mainCondition.toLowerCase()) {
      case 'clouds':
      case 'mist':
      case 'smoke':
      case 'haze':
      case 'dust':
      case 'fog':
        return 'assets/json/clouds.json';
      case 'rain':
      case 'drizzle':
      case 'shower rain':
        return 'assets/json/rain.json';
      case 'thunderstorm':
        return 'assets/json/thunder.json';
      case 'clear':
        return 'assets/json/sunny.json';
      default:
        return 'assets/json/sunny.json';
    }
  }
}
