import 'package:capstone/controller/weather_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../constants/colors.dart';
import '../shared/widgets/buttom_nav_bar.dart';

class WeatherPage extends StatelessWidget {
  final WeatherPageController weatherController =
      Get.put(WeatherPageController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/backgrounds/login/onboarding.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.only(
                  top: 20, bottom: 92, left: 28.5, right: 28.5),
              child: SafeArea(
                child: Column(
                  children: [
                    Container(
                      width: 318,
                      height: 680,
                      decoration: BoxDecoration(
                        color: AppColors.green900,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(
                                top: 26, bottom: 21, right: 32.5, left: 32.5),
                            child: Obx(() {
                              final weather = weatherController.weather.value;

                              if (weather != null) {
                                return Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        // Display dynamic current temperature
                                        Text(
                                          '${weather.temperature}°', // Rounded to 1 decimal
                                          style: GoogleFonts.sora(
                                              fontSize: 30,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                        // Display high and low temperatures
                                        Text(
                                          'H:${weather.highTemperature}°  L:${weather.lowTemperature}°',
                                          style: GoogleFonts.sora(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                        // Display city name
                                        Text(
                                          weather.cityName,
                                          style: GoogleFonts.sora(
                                              fontSize: 12,
                                              fontWeight: FontWeight.normal,
                                              color: Colors.white),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(
                                      width: 70,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(
                                          width: 69,
                                          height: 54,
                                          // Display the weather animation based on the main condition
                                          child: Lottie.asset(weatherController
                                              .getWeatherAnimation(weather
                                                  .mainCondition
                                                  .toLowerCase())),
                                        ),
                                      ],
                                    )
                                  ],
                                );
                              } else if (weatherController
                                  .errorMessage.value.isNotEmpty) {
                                return Text(
                                  weatherController.errorMessage.value,
                                  style: GoogleFonts.sora(
                                      fontSize: 12,
                                      fontWeight: FontWeight.normal,
                                      color: Colors.red),
                                );
                              } else {
                                return const CircularProgressIndicator(); // Loading state
                              }
                            }),
                          ),
                          const SizedBox(height: 32),
                          Container(
                            height: 240,
                            width: 299,
                            decoration: BoxDecoration(
                              color: AppColors.green100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Obx(() {
                              final imagePath =
                                  weatherController.getImagePath();
                              return imagePath.isNotEmpty
                                  ? SizedBox(
                                      height: 205,
                                      width: 278,
                                      child: Image.asset(imagePath),
                                    )
                                  : const Center(
                                      child: Text('No suitable plant image'));
                            }),
                          ),
                          const SizedBox(height: 20),
                          Container(
                            height: 240,
                            width: 299,
                            decoration: BoxDecoration(
                              color: AppColors.green100,
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, bottom: 12, right: 10.5, left: 10.5),
                              child: Obx(() {
                                final recommendation =
                                    weatherController.getPlantRecommendation();
                                List<String> splitRecommendation =
                                    recommendation.split(':');
                                String plantType = '';
                                String tempRange = '';
                                String desc = '';

                                if (splitRecommendation.length > 1) {
                                  plantType = splitRecommendation[0];
                                  List<String> tempDesc =
                                      splitRecommendation[1].split('.');
                                  if (tempDesc.isNotEmpty) {
                                    tempRange = tempDesc[0];
                                    desc = tempDesc.length > 1
                                        ? tempDesc.skip(1).join('.')
                                        : '';
                                  }
                                }

                                return Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Jenis Tanaman $plantType',
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(height: 10),
                                    Row(
                                      children: [
                                        Text(
                                          'Suhu : ',
                                          style: GoogleFonts.sora(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          tempRange,
                                          style: GoogleFonts.sora(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      'Rekomendasi :',
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                    const SizedBox(height: 10),
                                    Text(
                                      desc,
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                  ],
                                );
                              }),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
