import 'package:capstone/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes_named.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 10,
      backgroundColor: AppColors.green100,
      currentIndex: _getCurrentIndex(),
      onTap: (index) {
        switch (index) {
          case 0:
            Get.toNamed(AppRoutesNamed.pageHome);
            break;
          case 1:
            Get.toNamed(AppRoutesNamed.pageWeather);
            break;
          case 2:
            Get.toNamed(AppRoutesNamed.pageAboutUs);
            break;
        }
      },
      items: [
        BottomNavigationBarItem(
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/images/navbar/home.png'),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/images/navbar/weather.png'),
          ),
          label: '',
        ),
        BottomNavigationBarItem(
          icon: SizedBox(
            width: 24,
            height: 24,
            child: Image.asset('assets/images/navbar/about.png'),
          ),
          label: '',
        ),
      ],
    );
  }

  int _getCurrentIndex() {
    var currentRoute = Get.currentRoute;
    switch (currentRoute) {
      case AppRoutesNamed.pageHome:
        return 0;
      case AppRoutesNamed.pageWeather:
        return 1;
      case AppRoutesNamed.pageAboutUs:
        return 2;
      default:
        return 0;
    }
  }
}
