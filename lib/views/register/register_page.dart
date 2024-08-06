import 'package:capstone/constants/colors.dart';
import 'package:capstone/views/login/login_screen.dart';
import 'package:capstone/views/shared/widgets/customTextField.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<RegisterPage> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

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
          Center(
            child: Column(
              children: [
                SizedBox(
                  height: 147,
                ),
                Container(
                  width: 81.6,
                  height: 71,
                  child:
                      Image.asset('assets/images/backgrounds/login/logo.png'),
                ),
                SizedBox(
                  height: 45,
                ),
                Text(
                  'Learn from anything and anywhere',
                  style: GoogleFonts.sora(
                      fontWeight: FontWeight.normal,
                      fontSize: 16,
                      color: Colors.white),
                ),
                SizedBox(
                  height: 103,
                ),
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
                                controller: _usernameController,
                                leadingIconPath:
                                    'assets/images/backgrounds/login/mail.png',
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 20, right: 24, left: 24, bottom: 0),
                              child: CustomTextField(
                                hintText: 'Password',
                                controller: _passwordController,
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
                                controller: _passwordController,
                                obscureText: true,
                                leadingIconPath:
                                    'assets/images/backgrounds/login/lock.png',
                              ),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            SizedBox(
                              width: 325,
                              height: 48,
                              child: ElevatedButton(
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: AppColors.green900,
                                      shape: RoundedRectangleBorder(
                                          borderRadius:
                                              BorderRadius.circular(16))),
                                  onPressed: () {
                                    Navigator.pushAndRemoveUntil(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginScreen()),
                                        (route) => false);
                                  },
                                  child: Text(
                                    "Register",
                                    style: GoogleFonts.sora(
                                        fontSize: 14,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white),
                                  )),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Atau',
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                InkWell(
                                  onTap: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                LoginScreen()));
                                  },
                                  child: Text(
                                    'masuk',
                                    style: GoogleFonts.dmSans(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 12,
                                        color: Colors.blue),
                                  ),
                                ),
                                SizedBox(
                                  width: 2,
                                ),
                                Text(
                                  'sekarang jika sudah memiliki aku',
                                  style: GoogleFonts.dmSans(
                                      fontWeight: FontWeight.normal,
                                      fontSize: 12,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 52,
                            ),
                            Text(
                              '© Abdul Muhith',
                              style: GoogleFonts.sora(
                                  fontSize: 12,
                                  fontWeight: FontWeight.normal,
                                  color: Colors.black),
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
