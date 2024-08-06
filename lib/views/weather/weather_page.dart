import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../shared/widgets/buttom_nav_bar.dart';

class WeatherPage extends StatefulWidget {
  const WeatherPage({super.key});

  @override
  State<WeatherPage> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<WeatherPage> {
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
                        height: 680,
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
                              child: Row(
                                children: [
                                  Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        '20°',
                                        style: GoogleFonts.sora(
                                            fontSize: 30,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        'H:88°  L:18°',
                                        style: GoogleFonts.sora(
                                            fontSize: 12,
                                            fontWeight: FontWeight.normal,
                                            color: Colors.white),
                                      ),
                                      Text(
                                        'Asgard, Indonesia',
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
                                        child: Image.asset(
                                            'assets/images/icons/midrain.png'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 32,
                            ),
                            Container(
                              height: 240,
                              width: 299,
                              decoration: BoxDecoration(
                                  color: AppColors.green100,
                                  borderRadius: BorderRadius.circular(8)),
                              child: Container(
                                height: 205,
                                width: 278,
                                child: Image.asset(
                                    'assets/images/weather/tomato.png'),
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Container(
                              height: 240,
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
                                      "Tomato :",
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Row(
                                      children: [
                                        Text(
                                          "Suhu : ",
                                          style: GoogleFonts.sora(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                        Text(
                                          "18-25°C",
                                          style: GoogleFonts.sora(
                                              fontWeight: FontWeight.normal,
                                              fontSize: 14,
                                              color: Colors.black),
                                        ),
                                      ],
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Rekomendasi :",
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                          color: Colors.black),
                                    ),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Tomat direkomendasikan untuk ditanam \npada suhu 18-25°C karena suhu ini \nmemungkinkan pertumbuhan yang cepat \ndan pematangan buah yang baik. Suhu \nyang terlalu rendah atau tinggi dapat \nmenghambat perkembangan buah dan \nmengurangi kualitas hasil panen.",
                                      style: GoogleFonts.sora(
                                          fontWeight: FontWeight.normal,
                                          fontSize: 12,
                                          color: Colors.black),
                                    ),
                                  ],
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
