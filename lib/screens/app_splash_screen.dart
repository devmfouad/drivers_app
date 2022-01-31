import 'dart:async';

import 'package:drivers_app/screens/main_screen.dart';
import 'package:drivers_app/shared/widgets/app_widgets.dart';
import 'package:flutter/material.dart';

class AppSplashScreen extends StatefulWidget {
  const AppSplashScreen({Key? key}) : super(key: key);

  @override
  State<AppSplashScreen> createState() => _AppSplashScreenState();
}

class _AppSplashScreenState extends State<AppSplashScreen> {

  startSplashTimer() async{
    Timer(const Duration( seconds: 4) , ()=> {
      Navigator.of(context).push(MaterialPageRoute(builder: (_) => const MainScreen()))
    });
  }


  @override
  void initState() {
    super.initState();
    startSplashTimer();
  }


  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        color: Colors.black,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            appLogo,
            const SizedBox(height: 25,),
            const Text("Uber Drivers App" , style: TextStyle(
              color: Colors.white,
              fontSize: 30,
              fontWeight: FontWeight.bold,
            ),)
          ],
        ),
      ),
    );
  }
}
