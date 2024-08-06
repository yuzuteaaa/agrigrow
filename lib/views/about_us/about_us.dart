import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../constants/colors.dart';
import '../shared/widgets/buttom_nav_bar.dart';

class AboutUs extends StatefulWidget {
  const AboutUs({super.key});

  @override
  State<AboutUs> createState() => _WeatherPageState();
}

class _WeatherPageState extends State<AboutUs> {
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
            Padding(
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                                  crossAxisAlignment: CrossAxisAlignment.start,
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
                            height: 515,
                            width: 299,
                            decoration: BoxDecoration(
                                color: AppColors.green100,
                                borderRadius: BorderRadius.circular(8)),
                            child: Padding(
                              padding: const EdgeInsets.only(
                                  top: 12, bottom: 12, right: 10.5, left: 10.5),
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: BottomNavBar());
  }
}
