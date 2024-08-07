import 'package:capstone/views/login/login_screen.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RegisterController extends GetxController {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController confirmPasswordController =
      TextEditingController();

  Future<void> createUser() async {
    final auth = FirebaseAuth.instance;
    try {
      if (passwordController.text == confirmPasswordController.text) {
        await auth.createUserWithEmailAndPassword(
          email: emailController.text,
          password: passwordController.text,
        );
        Get.back(); // Go back to the previous screen (LoginScreen)
      } else {
        // Handle password mismatch
        print("Passwords do not match.");
      }
    } catch (e) {
      // Handle error
      print("Registration error: $e");
    }
  }

  void navigateToLogin() {
    Get.to(() => LoginScreen());
  }
}
