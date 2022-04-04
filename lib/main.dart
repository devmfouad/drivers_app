import 'package:drivers_app/screens/app_splash_screen.dart';
import 'package:drivers_app/screens/auth/login_screen.dart';
import 'package:drivers_app/screens/auth/register_screen.dart';
import 'package:drivers_app/shared/styles/style.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const DriversApp());
}


class DriversApp extends StatelessWidget {
  const DriversApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      title: "Drivers App",
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      themeMode: ThemeMode.light,
      home: RegisterScreen(),
    );
  }
}



