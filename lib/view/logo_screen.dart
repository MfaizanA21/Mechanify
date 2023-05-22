import 'package:flutter/material.dart';

import '../viewModel/splash_services.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  SplashServices splashscreen = SplashServices();
  @override
  void initState() {
    // Add any initialization logic here
    super.initState();
    splashscreen.isLogin(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [
              Color(0xFF009688), // Teal
              Color(0xFF00BCD4), // Teal
            ],
          ),
        ),
        child: Center(
          child: Image.asset(
            'assets/images/logo.png', // Replace with your asset image path
            width: 200,
            height: 200,
          ),
        ),
      ),
    );
  }
}
