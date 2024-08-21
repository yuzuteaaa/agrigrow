import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';

import '../../constants/colors.dart';
import '../../controller/login_controller.dart';
import '../../controller/weather_controller.dart';
import '../shared/widgets/buttom_nav_bar.dart';

class AboutUs extends StatelessWidget {
  final WeatherController weatherController = Get.put(WeatherController());
  final LoginController controller = Get.put(LoginController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
          children: [
            Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(
                          'assets/images/backgrounds/login/onboarding.png'),
                      fit: BoxFit.cover)),
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
                        height: 750,
                        decoration: BoxDecoration(
                          color: AppColors.green900,
                          borderRadius: BorderRadius.circular(
                              8), // Setting the border radius here
                        ),
                        child: Column(
                          children: [
                            Padding(
                              padding: EdgeInsets.only(
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
                                      SizedBox(
                                        width: 70,
                                      ),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Container(
                                            width: 69,
                                            height: 54,
                                            // Display the weather animation based on the main condition
                                            child: Lottie.asset(
                                                weatherController
                                                    .getWeatherAnimation(
                                                        weather.mainCondition)),
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
                            SizedBox(
                              height: 32,
                            ),
                            Container(
                              height: 515,
                              width: 299,
                              decoration: BoxDecoration(
                                  color: AppColors.green100,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Padding(
                                padding: const EdgeInsets.only(
                                    top: 12,
                                    bottom: 12,
                                    right: 10.5,
                                    left: 10.5),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Tentang AgriGrow :",
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "AgriGrow adalah aplikasi mobile yang dirancang untuk membantu para petani dan penghobi tanaman dalam mengoptimalkan perawatan tanaman mereka berdasarkan data suhu udara dan kondisi lingkungan saat ini. Dengan menggunakan data yang akurat dari API OpenWeather, AgriGrow menyediakan rekomendasi yang dapat diandalkan untuk kapan dan bagaimana menanam, memupuk, dan merawat berbagai jenis tanaman.",
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14,
                                          color: Colors.black),
                                      textAlign: TextAlign.left,
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Visi Kami :",
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.w500,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Menjadi asisten digital terdepan bagi para petani dan penghobi tanaman dalam menghadapi perubahan iklim dan kondisi cuaca, dengan menyediakan informasi dan rekomendasi yang akurat dan tepat waktu.",
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 14,
                                          color: Colors.black),
                                      textAlign: TextAlign.left,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              onTap: () {
                                controller
                                    .showLogoutConfirmationDialog(context);
                              },
                              child: Container(
                                height: 60,
                                width: 299,
                                decoration: BoxDecoration(
                                    color: AppColors.green100,
                                    borderRadius: BorderRadius.circular(8)),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      top: 12,
                                      bottom: 12,
                                      right: 10.5,
                                      left: 10.5),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          "Log Out",
                                          style: GoogleFonts.sora(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.black),
                                        )
                                      ]),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavBar());
  }
}
