import 'package:carobar/view/book_screen.dart';
import 'package:carobar/view/home_screen.dart';
import 'package:carobar/view/login_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Mechanic App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.teal,
      ),
      //home: Home(),
      initialRoute: 'LoginScreen',
       routes: {'LoginScreen':(context)=>LoginScreen()},
    );
  }
}