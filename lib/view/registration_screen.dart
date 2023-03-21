import 'package:flutter/material.dart';
import 'package:carobar/view/home_screen.dart';
import 'package:carobar/view/otp_screen.dart';

class RegistrationPage extends StatelessWidget {
  final TextEditingController phoneNumberController = TextEditingController();

  RegistrationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              height: MediaQuery.of(context).size.height * 0.6,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                image: const DecorationImage(
                  image: AssetImage('assets/images/asd.jpeg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            const SizedBox(height: 15),
            const CircleAvatar(
              radius: 40,
              backgroundImage: AssetImage('assets/images/logo.jpeg'),
            ),
            const SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                style: const TextStyle(color: Colors.teal),
                controller: phoneNumberController,
                decoration: const InputDecoration(
                  hintText: 'Phone number',
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.teal),
                  ),
                  filled: true,
                  fillColor: Colors.black,
                  prefixIcon: Icon(
                    Icons.phone,
                    color: Colors.teal,
                  ),
                  hintStyle: TextStyle(
                    fontFamily: 'Ariel',
                    fontSize: 19,
                    color: Colors.teal,
                  ),
                ),
                keyboardType: TextInputType.phone,
              ),
            ),
            ElevatedButton(
              onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=> OtpScreen(),
                    ),
                  );
              },
              style: ElevatedButton.styleFrom(
                primary: Colors.black,
              ),
              child: const Text(
                'Register',
                style: TextStyle(
                  fontFamily: 'Ariel',
                  fontSize: 19,
                  color: Colors.teal,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
