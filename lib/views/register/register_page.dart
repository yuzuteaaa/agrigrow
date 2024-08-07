import 'package:capstone/constants/colors.dart';
import 'package:capstone/views/shared/widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../controller/register_controller.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    final RegisterController controller = Get.put(RegisterController());

    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(
                    'assets/images/backgrounds/login/onboarding.png'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Center(
            child: Column(
              children: [
                SizedBox(height: 147),
                Container(
                  width: 81.6,
                  height: 71,
                  child:
                      Image.asset('assets/images/backgrounds/login/logo.png'),
                ),
                SizedBox(height: 45),
                Text(
                  'Learn from anything and anywhere',
                  style: GoogleFonts.sora(
                    fontWeight: FontWeight.normal,
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 103),
                Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                      color: AppColors.green100,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0),
                      ),
                    ),
                    child: ListView(
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 43, right: 24, left: 24, bottom: 0),
                              child: CustomTextField(
                                hintText: 'Email',
                                controller: controller.emailController,
                                leadingIconPath:
                                    'assets/images/backgrounds/login/mail.png',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, right: 24, left: 24, bottom: 0),
                              child: CustomTextField(
                                hintText: 'Password',
                                controller: controller.passwordController,
                                obscureText: true,
                                leadingIconPath:
                                    'assets/images/backgrounds/login/lock.png',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, right: 24, left: 24, bottom: 0),
                              child: CustomTextField(
                                hintText: 'Confirm Password',
                                controller:
                                    controller.confirmPasswordController,
                                obscureText: true,
                                leadingIconPath:
                                    'assets/images/backgrounds/login/lock.png',
                              ),
                            ),
                            SizedBox(height: 20),
                            SizedBox(
                              width: 325,
                              height: 48,
                              child: ElevatedButton(
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: AppColors.green900,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(16),
                                  ),
                                ),
                                onPressed: () {
                                  controller.createUser();
                                },
                                child: Text(
                                  "Register",
                                  style: GoogleFonts.sora(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.white,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 20),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Atau',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 2),
                                InkWell(
                                  onTap: () {
                                    controller.navigateToLogin();
                                  },
                                  child: Text(
                                    'masuk',
                                    style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: Colors.blue,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 2),
                                Text(
                                  'sekarang jika sudah memiliki akun',
                                  style: GoogleFonts.dmSans(
                                    fontWeight: FontWeight.normal,
                                    fontSize: 12,
                                    color: Colors.black,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 52),
                            Text(
                              '© Abdul Muhith',
                              style: GoogleFonts.sora(
                                fontSize: 12,
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                              ),
                            ),
                          ],
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
    );
  }
}
