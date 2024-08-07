import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../controller/weather_controller.dart';
import '../shared/widgets/buttom_nav_bar.dart';

class WeatherPage extends StatelessWidget {
  final WeatherController weatherController = Get.put(WeatherController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Obx(() {
            if (weatherController.weather.value != null) {
              final weather = weatherController.weather.value!;
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(weather.cityName),
                  // Animation
                  Lottie.asset(weatherController
                      .getWeatherAnimation(weather.mainCondition)),
                  Text('${weather.temperature}°C'),
                  Text(weather.mainCondition ?? ""),
                ],
              );
            } else if (weatherController.errorMessage.value.isNotEmpty) {
              return Text(weatherController.errorMessage.value);
            } else {
              return const CircularProgressIndicator();
            }
          }),
        ),
        bottomNavigationBar: BottomNavBar());
  }
}
