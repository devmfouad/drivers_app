import 'package:drivers_app/screens/app_splash_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DriversApp());
}


class DriversApp extends StatelessWidget {
  const DriversApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Drivers App",
      debugShowCheckedModeBanner: false,
      home: AppSplashScreen(),
    );
  }
}


