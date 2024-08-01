import 'package:capstone/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class GetStartedScreen extends StatelessWidget {
  const GetStartedScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: double.infinity,
            color: Colors.white,
          ),
          Positioned(
            right: 0,
            left: 0,
            child: Container(
              child: Image.asset(
                'assets/images/backgrounds/get_started/onboarding.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Positioned(
            top: 465,
            right: 0,
            left: 0,
            child: Stack(
              children: [
                Container(
                  child: Image.asset(
                      'assets/images/backgrounds/get_started/container.png'),
                ),
                Center(
                  child: Padding(
                    padding: const EdgeInsets.only(
                        left: 24, top: 24, right: 24, bottom: 142),
                    child: Column(
                      children: [
                        Text(
                          'Cultivating Health, \nOne Plant at \na Time',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.sora(
                            fontSize: 32,
                            fontWeight: FontWeight.w600,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Welcome to a world where plant health \n meets technology, for a greener tomorrow.',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.sora(
                              fontSize: 14,
                              fontWeight: FontWeight.normal,
                              color: Color(0xffA2A2A2)),
                        ),
                        SizedBox(height: 32),
                        SizedBox(
                          width: 327,
                          height: 56,
                          child: ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.green900,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(16))),
                              onPressed: () {},
                              child: Text(
                                "Get Started",
                                style: GoogleFonts.sora(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white),
                              )),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
