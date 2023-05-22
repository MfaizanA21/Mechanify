import 'dart:async';
import 'package:carobar/view/login_screen.dart';
import 'package:flutter/material.dart';

class SplashServices {
  void isLogin(BuildContext context) {
    Timer(const Duration(seconds: 3), () => Navigator.push(context, MaterialPageRoute(builder: (context) => LoginScreen())));
  }
}