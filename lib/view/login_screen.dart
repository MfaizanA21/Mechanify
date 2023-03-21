import 'package:carobar/view/registration_screen.dart';
import 'package:carobar/view/components/login_button.dart';
import 'package:flutter/material.dart';
import 'package:carobar/view/home_screen.dart';

class LoginScreen extends StatelessWidget {

  final TextEditingController  _emailController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();

  LoginScreen({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.black,
        body: SingleChildScrollView(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40.0),
            height: MediaQuery.of(context).size.height,
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const CircleAvatar(
                  backgroundColor: Colors.transparent,
                  backgroundImage: AssetImage('assets/images/MECH.png'),
                  radius: 80.0,
                ),
                const SizedBox(height: 30.0),
                buildTextField(_emailController, 'Email or Phone', Icons.mail_outline_rounded),
                SizedBox(height: 20.0),
                buildTextField(_phoneController, 'Password', Icons.lock_outline_rounded),
                SizedBox(height: 20.0),
                LoginButton('Login'),
                TextButton(onPressed: () {
                  Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context)=> RegistrationPage(),
                    ),
                  );

                },
                    child:
                    Text(' Create Account to Sign Up',)
                ),
              ],
            ),
          ),
        ),
      );
    }

    Widget buildTextField(TextEditingController controller, String labelText, IconData icon) {
      return TextField(
        controller: controller,
        style: TextStyle(color: Colors.teal),
        decoration: InputDecoration(
          labelText: labelText,
          labelStyle: TextStyle(color: Colors.teal),
          prefixIcon: Icon(icon, color: Colors.teal),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.teal),
          ),
        ),
      );
    }

  }



