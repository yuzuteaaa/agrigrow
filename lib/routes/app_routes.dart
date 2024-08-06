import 'package:capstone/views/about_us/about_us.dart';
import 'package:capstone/views/home/home_page.dart';
import 'package:capstone/views/login/login_screen.dart';
import 'package:capstone/views/register/register_page.dart';
import 'package:capstone/views/weather/weather_page.dart';
import 'package:get/get.dart';

import 'app_routes_named.dart';

class AppRoutes {
  static final routes = [
    GetPage(name: AppRoutesNamed.pageGetStarted, page: () => HomePage()),
    GetPage(name: AppRoutesNamed.pageLogin, page: () => LoginScreen()),
    GetPage(name: AppRoutesNamed.pageRegister, page: () => RegisterPage()),
    GetPage(name: AppRoutesNamed.pageHome, page: () => HomePage()),
    GetPage(name: AppRoutesNamed.pageWeather, page: () => WeatherPage()),
    GetPage(name: AppRoutesNamed.pageAboutUs, page: () => AboutUs()),
  ];
}
