import 'package:capstone/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
          padding:
              const EdgeInsets.only(top: 55, bottom: 92, left: 17, right: 25),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  children: [
                    Container(
                        height: 40,
                        width: 40,
                        child: Image.asset('assets/images/avatar/avatar.png')),
                    SizedBox(
                      width: 20,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Welcome back",
                          style: GoogleFonts.dmSans(
                              fontSize: 10,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        ),
                        SizedBox(
                          width: 2,
                        ),
                        Text(
                          "Loki Laufeyson",
                          style: GoogleFonts.dmSans(
                              fontSize: 14,
                              color: Colors.black,
                              fontWeight: FontWeight.bold),
                        )
                      ],
                    ),
                    SizedBox(
                      width: 165,
                    ),
                    Container(
                        alignment: Alignment.center,
                        width: 20,
                        height: 20,
                        child: Image.asset('assets/images/icons/bell.png'))
                  ],
                ),
                SizedBox(
                  height: 23,
                ),
                Container(
                  width: 340,
                  height: 121,
                  decoration: BoxDecoration(
                    color: AppColors.green900,
                    borderRadius: BorderRadius.circular(
                        25), // Setting the border radius here
                  ),
                  child: Padding(
                    padding: EdgeInsets.only(
                        top: 21, bottom: 21, right: 35.5, left: 35.5),
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
                        Container(
                          width: 69,
                          height: 54,
                          child: Image.asset('assets/images/icons/midrain.png'),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Agrikultur :',
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Container(
                    height: 187,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 154,
                          height: 187,
                          decoration: BoxDecoration(
                            color: AppColors.green900,
                            borderRadius: BorderRadius.circular(
                                8), // Setting the border radius here
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 9, bottom: 0, right: 6.5, left: 6.5),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 141,
                                      height: 94,
                                      child: Image.asset(
                                          'assets/images/agrikultur/image1.png'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Cabai :',
                                      style: GoogleFonts.sora(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '"Dapat ditanam pada suhu 20-30°C. \nCabai merah memerlukan cuaca hangat \ndan banyak sinar matahari untuk \ntumbuh optimal."',
                                      style: GoogleFonts.sora(
                                          fontSize: 6,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: 154,
                          height: 187,
                          decoration: BoxDecoration(
                            color: AppColors.green900,
                            borderRadius: BorderRadius.circular(
                                8), // Setting the border radius here
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 9, bottom: 0, right: 6.5, left: 6.5),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 141,
                                      height: 94,
                                      child: Image.asset(
                                          'assets/images/agrikultur/image1.png'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Cabai :',
                                      style: GoogleFonts.sora(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '"Dapat ditanam pada suhu 20-30°C. \nCabai merah memerlukan cuaca hangat \ndan banyak sinar matahari untuk \ntumbuh optimal."',
                                      style: GoogleFonts.sora(
                                          fontSize: 6,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: 154,
                          height: 187,
                          decoration: BoxDecoration(
                            color: AppColors.green900,
                            borderRadius: BorderRadius.circular(
                                8), // Setting the border radius here
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 9, bottom: 0, right: 6.5, left: 6.5),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 141,
                                      height: 94,
                                      child: Image.asset(
                                          'assets/images/agrikultur/image1.png'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      'Cabai :',
                                      style: GoogleFonts.sora(
                                          fontSize: 11,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      '"Dapat ditanam pada suhu 20-30°C. \nCabai merah memerlukan cuaca hangat \ndan banyak sinar matahari untuk \ntumbuh optimal."',
                                      style: GoogleFonts.sora(
                                          fontSize: 6,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
                SizedBox(
                  height: 16,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'News :',
                      style: GoogleFonts.sora(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: Colors.white),
                    ),
                  ],
                ),
                SizedBox(
                  height: 19,
                ),
                Container(
                    height: 187,
                    child: ListView(
                      scrollDirection: Axis.horizontal,
                      children: [
                        Container(
                          width: 154,
                          height: 187,
                          decoration: BoxDecoration(
                            color: AppColors.green900,
                            borderRadius: BorderRadius.circular(
                                8), // Setting the border radius here
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 9, bottom: 0, right: 6.5, left: 6.5),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 141,
                                      height: 94,
                                      child: Image.asset(
                                          'assets/images/news/image1.png'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '100 Hektare Lahan Pertanian di \nDenpasar Lenyap Akibat Alih \nFungsi Lahan',
                                      style: GoogleFonts.sora(
                                          fontSize: 7,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Denpasar - Sebanyak 100 hektare (ha) \nlahan pertanian di Kota Denpasar \nberkurang pada 2023. Hal itu diakibatkan \noleh masifnya alih fungsi lahan',
                                      style: GoogleFonts.sora(
                                          fontSize: 6,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: 154,
                          height: 187,
                          decoration: BoxDecoration(
                            color: AppColors.green900,
                            borderRadius: BorderRadius.circular(
                                8), // Setting the border radius here
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 9, bottom: 0, right: 6.5, left: 6.5),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 141,
                                      height: 94,
                                      child: Image.asset(
                                          'assets/images/news/image1.png'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '100 Hektare Lahan Pertanian di \nDenpasar Lenyap Akibat Alih \nFungsi Lahan',
                                      style: GoogleFonts.sora(
                                          fontSize: 7,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Denpasar - Sebanyak 100 hektare (ha) \nlahan pertanian di Kota Denpasar \nberkurang pada 2023. Hal itu diakibatkan \noleh masifnya alih fungsi lahan',
                                      style: GoogleFonts.sora(
                                          fontSize: 6,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 16,
                        ),
                        Container(
                          width: 154,
                          height: 187,
                          decoration: BoxDecoration(
                            color: AppColors.green900,
                            borderRadius: BorderRadius.circular(
                                8), // Setting the border radius here
                          ),
                          child: Padding(
                            padding: EdgeInsets.only(
                                top: 9, bottom: 0, right: 6.5, left: 6.5),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      width: 141,
                                      height: 94,
                                      child: Image.asset(
                                          'assets/images/news/image1.png'),
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    Text(
                                      '100 Hektare Lahan Pertanian di \nDenpasar Lenyap Akibat Alih \nFungsi Lahan',
                                      style: GoogleFonts.sora(
                                          fontSize: 7,
                                          fontWeight: FontWeight.bold,
                                          color: Colors.white),
                                    ),
                                    SizedBox(
                                      height: 8,
                                    ),
                                    Text(
                                      'Denpasar - Sebanyak 100 hektare (ha) \nlahan pertanian di Kota Denpasar \nberkurang pada 2023. Hal itu diakibatkan \noleh masifnya alih fungsi lahan',
                                      style: GoogleFonts.sora(
                                          fontSize: 6,
                                          fontWeight: FontWeight.normal,
                                          color: Colors.white),
                                    )
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    )),
              ],
            ),
          ),
        )
      ],
    ));
  }
}
