import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_routes_named.dart';

class BottomNavBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
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
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.wb_sunny),
          label: 'Weather',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.info),
          label: 'About Us',
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
