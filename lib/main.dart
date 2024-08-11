import 'package:capstone/routes/app_routes.dart';
import 'package:capstone/routes/app_routes_named.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  final User? user = FirebaseAuth.instance.currentUser;

  runApp(MyApp(
      initialRoute:
          user != null ? AppRoutesNamed.pageHome : AppRoutesNamed.pageLogin));
}

class MyApp extends StatelessWidget {
  final String initialRoute;

  const MyApp({super.key, required this.initialRoute});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialRoute: initialRoute,
      getPages: AppRoutes.routes,
    );
  }
}
